class GitLog
  attr_accessor :date, :author, :subject
  
  def self.logs
    self.getGitLogs
  end
  

  private
  def initialize(date, author, subject)
    self.date = date
    self.author = author
    self.subject = subject        
  end
  
  def self.getGitLogs
    @logs = []
    logs_array = `git log --pretty=format:'[\"%cd\",\"%an\",\"%s\"]' -n 5 --no-merges`.split(/\r?\n/)  
    logs_array.each do |log|
      @logs.push(GitLog.new(eval(log)[0], eval(log)[1], eval(log)[2]))
    end
    @logs
  end
end