require "pry"
require "time"

class Event
    attr_accessor :title, :start_date
    @@events = []

    def initialize(title, start_date, duration, attendees=[])
      @title = title
      @start_date = Time.parse(start_date)
      @duration = duration.to_i
      @attendees = attendees
      @@events << self
    end
    
    def postpone_24h
      @start_date = @start_date + (3600 * 24)
    end
    
    def self.all
      return @@events
    end

    def end_date 
      @end_date = @start_date + (@duration * 60)
    end
end
  
