class EventForm
  attr_reader :worker

  def initialize(worker: worker)
    @worker = worker
  end

  def create(params)
    Event.new(params).tap do |event|
      worker.perform_async(event.id)
    end
  end
end
