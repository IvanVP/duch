Refinery::News::Item.class_eval do
  require 'stringex'

  acts_as_indexed :fields => [:ascii_title, :ascii_body]

  def ascii_title
    self.title.to_ascii
  end
  
  def ascii_body
    self.body.to_ascii
  end

end