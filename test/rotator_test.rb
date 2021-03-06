require './test/test_helper'
require './lib/rotator'

class RotatorTest < Minitest::Test

  def test_it_exists
    rotator = Rotator.new([1,1,1,1,1], Date.today)

    assert_instance_of Rotator, rotator
  end

  def test_it_produces_a_rotation
    rotator = Rotator.new([1,1,1,1,1], Date.today)

    assert_equal 4, rotator.rotation.length
  end

  def test_it_rotates_key
    rotator = Rotator.new([1,1,1,1,1], Date.today)

    assert_equal ("#{rotator.key[0]}#{rotator.key[1]}".to_i + rotator.offset.zero), rotator.rotation[0]
    refute_equal rotator.key, rotator.rotation
  end

  # def test_it_can_take_custom_key
  #   rotator = Rotator.new([5,5,5,5,5])
  #
  #   assert_equal [5,5,5,5,5], rotator.key
  # end
end
