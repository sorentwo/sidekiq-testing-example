require "event"
require "sidekiq/worker"

class IndexWorker
  include Sidekiq::Worker

  def perform(event_id)
    event = Event.find(event_id)
  end

  def index_event(event)
    event.index!
  end
end
