require "bundler"

Bundler.setup

require "minitest/autorun"
require "sidekiq"
require "sidekiq/testing"

Sidekiq::Testing.fake!
