##################################################################################################################
### Original code by David Sulc: http://davidsulc.com/blog/2011/05/01/self-marking-required-fields-in-rails-3/ ###
### Forked by Joost Kuif: http://joostonrails.blogspot.com/2012/04/markeren-van-optionele-verplichte.html      ###
##################################################################################################################

class ActionView::Helpers::FormBuilder
  alias :orig_label :label

  # add a '*' after the field label if the field is required
  def label(method, content_or_options = nil, options = nil, &block)
    if content_or_options && content_or_options.class == Hash
      options = content_or_options
    else
      content = content_or_options
    end

    required_mark = ''
    #required_mark = ' *'.html_safe if object.class.validators_on(method).map(&:class).include? ActiveModel::Validations::PresenceValidator
    if object.class.respond_to?('validators_on') # check if method exists for class
      required_mark = '*'.html_safe if object.class.validators_on(method).any? { |validator|
        #if the validation is of type PresenceValidator
        if (validator.kind_of?(ActiveModel::Validations::PresenceValidator))
          ifresult, unlessresult = nil
          if(validator.options.present? && validator.options[:if].present?)
            #now execute the dynamic :if part of this validator to see if the PresenceValidator is active
            if(validator.options[:if].is_a?(Symbol)) # execute the :if block as a Symbol
              ifresult = object.send(validator.options[:if])
            elsif(validator.options[:if].is_a?(String)) # execute as a String
              ifresult = object.instance_eval(validator.options[:if])
            else # execute as a Proc or Lambda
              ifresult = validator.options[:if].call(object)
            end
            puts("FormBuilder : dynamic validator of method #{method} :if option returned #{ifresult}") if Rails.env == 'development'
          end
          if (validator.options.present? && validator.options[:unless].present?)
            #now execute the dynamic :unless part of this validator (and invert) to see if the PresenceValidator is active
            if(validator.options[:unless].is_a?(Symbol)) # execute the :unless block as a Symbol
              unlessresult = !object.send(validator.options[:unless])
            elsif(validator.options[:unless].is_a?(String)) # execute as a String
              unlessresult = !object.instance_eval(validator.options[:unless])
            else # execute as a Proc or Lambda
              unlessresult = !validator.options[:unless].call(object)
            end
            puts("FormBuilder : dynamic validator of method #{method} :unless option returned #{unlessresult}") if Rails.env == 'development'
          end

          if ifresult != nil and unlessresult != nil
            result = ifresult && unlessresult
          elsif ifresult != nil and unlessresult == nil
            result = ifresult
          elsif unlessresult != nil and ifresult == nil
            result = unlessresult
          else
            #no :if/:unless option found, always show the * sign
            result = true
            puts("FormBuilder : dynamic validator of method #{method} : No dynamic :if/:unless option found, return true") if Rails.env == 'development'
          end
        end
        result
      }
    end

    content ||= I18n.t("activerecord.attributes.#{object.class.name.underscore}.#{method}", :default=>method.to_s.humanize)
    content = content + ' ' + required_mark

    self.orig_label(method, content, options || {}, &block)
  end
end