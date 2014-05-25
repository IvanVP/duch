Refinery::Calendar::Event.class_eval do
  require 'stringex'

  acts_as_indexed :fields => [:ascii_title, :ascii_excerpt, :ascii_description]


private
  def ascii_title
    self.title.to_ascii if self.title
  end
  
  def ascii_excerpt
    self.excerpt.to_ascii if self.excerpt
  end

  def ascii_description
    self.description.to_ascii if self.description
  end

end