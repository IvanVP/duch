Refinery::Blog::Category.class_eval do
  require 'stringex'

  acts_as_indexed :fields => [:ascii_title]

private

  def ascii_title
    self.title.to_ascii if self.title
  end
 
end