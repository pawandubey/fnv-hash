require 'test_helper'

class Fnv::HashTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Fnv::VERSION
  end

  def test_fnv_1
    fnv_1_32_data.each do |data, hash_expected|
      assert_equal Fnv::Hash.fnv_1(data, size: 32), hash_expected
    end

    fnv_1_64_data.each do |data, hash_expected|
      assert_equal Fnv::Hash.fnv_1(data, size: 64), hash_expected
    end
  end

  def test_fnv_1a
    fnv_1a_32_data.each do |data, hash_expected|
      assert_equal Fnv::Hash.fnv_1a(data, size: 32), hash_expected
    end

    fnv_1a_64_data.each do |data, hash_expected|
      assert_equal Fnv::Hash.fnv_1a(data, size: 64), hash_expected
    end
  end
end
