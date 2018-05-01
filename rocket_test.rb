require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_create_successfully
    assert(@rocket.name)
    assert(@rocket.colour)
    refute(@rocket.flying?)
  end

  def test_lift_off
    @rocket.lift_off
    assert(@rocket.flying?)
  end

  def test_land
    @rocket.land
    refute(@rocket.flying?)
  end

  def test_status_when_flying
  @rocket.lift_off
  msg = @rocket.status
  assert_equal(msg, "Rocket #{@rocket.name} is flying through the sky!")
  end

  def test_status_when_not_flying
    msg = @rocket.status
    assert_equal(msg, "Rocket #{@rocket.name} is ready for lift off!")
  end

end
