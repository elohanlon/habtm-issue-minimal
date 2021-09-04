require "test_helper"

class HabtmJoinTest < ActiveSupport::TestCase
  test "Apple has_and_belongs_to_many EnabledDynamicFields relationship exists" do
    apple = Apple.create!
    assert apple.enabled_dynamic_fields.length == 0
  end
end
