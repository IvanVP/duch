Refinery::Calendar::Event.class_eval do
  require 'stringex'

  acts_as_indexed :fields => [:ascii_title, :ascii_excerpt, :ascii_description]

  class << self
    def by_day (date = Time.now)


      where('refinery_calendar_events.starts_at >= ?', date).where('refinery_calendar_events.starts_at < ?', date.tomorrow)
    end
  end  


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