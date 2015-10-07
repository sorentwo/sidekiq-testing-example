require "test_helper"
require "event_form"
require "index_worker"

class EventFormTest < Minitest::Test
  def test_enqueuing_index
    form  = EventForm.new(worker: IndexWorker)
    event = form.create(id: 123, name: 'New Event')

    assert_equal 1, IndexWorker.jobs.length
    assert_equal [123], IndexWorker.jobs.first['args']
  end
end
