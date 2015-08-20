require "sidekiq/worker"

class IndexWorker
  include Sidekiq::Worker

  def perform(event_id)
    true
  end
end
