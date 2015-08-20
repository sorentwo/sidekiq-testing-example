require "test_helper"
require "index_worker"

class IndexWorkerTest < Minitest::Test
  def test_perform
    assert IndexWorker.new.perform(0)
  end
end
