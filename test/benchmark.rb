require_relative './test_helper.rb'
require 'benchmark/ips'

Benchmark.ips do |x|
  x.config(warmup: 5, time: 10)

  x.report { Fnv::Hash.fnv_1a(rand(1_000_000)) }
end
