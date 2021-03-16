require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  
  def setup
    @relationsip = Relationship.new(follower_id: users(:michael).id, followed_id: users(:archer).id)
  end
  
  test "should be valid" do
    assert @relationsip.valid?
  end
  
  test "should require a follower_id" do
    @relationsip.follower_id = nil
    assert_not @relationsip.valid?
  end
  
  test "should require a followed_id" do
    @relationsip.followed_id = nil
    assert_not @relationsip.valid?
  end
  
  
end
