# class ActionView::Helpers::FormBuilder
  # alias :orig_label :label
#  
  # def label(method, content_or_options = nil, options = nil, &block)
    # if content_or_options && content_or_options.class == Hash
      # options = content_or_options
    # else
      # content = content_or_options
    # end
#   
    # required_mark = ''
    # required_mark = ' *'.html_safe if object.class.validators_on(method).map(&:class).include? ActiveModel::Validations::PresenceValidator
#    
    # content ||= method.to_s.humanize
    # content ||= I18n.t("activerecord.attributes.#{object.class.name.underscore}.#{method}", :default=>method.to_s.humanize)
#    
    # self.orig_label(method, content, options || {}, &block)
  # end
# end