require "test_helper"
require "index_worker"

class IndexWorkerTest < Minitest::Test
  def test_indexing_event
    worker = IndexWorker.new
    event  = Event.new

    assert_equal :indexed, worker.index_event(event)
  end
end
