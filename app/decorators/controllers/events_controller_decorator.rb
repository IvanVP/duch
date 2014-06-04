Refinery::Calendar::EventsController.class_eval do

  def get_events
    @events = Refinery::Calendar::Event.all
    events = [] 
    @events.each do |event|
      events << {:id => event.id, :title => event.title, :description => event.description || "Опиcание события", :start => "#{event.starts_at.iso8601}", :end => "#{event.ends_at.iso8601}"}
    end
    render :text => events.to_json
  end

  def eventscal
  end

  def daygroup
    @events = Refinery::Calendar::Event.by_day(params[:daydate].to_date)
  end

end