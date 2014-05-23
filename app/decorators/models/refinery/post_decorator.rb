Refinery::Blog::Post.class_eval do
  require 'stringex'

  acts_as_indexed :fields => [:ascii_title, :ascii_body]

private

  def ascii_title
    self.title.to_ascii if self.title
  end
  
  def ascii_body
    self.body.to_ascii if self.body
  end

end


