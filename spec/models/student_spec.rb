require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end
  it "should have a working factory" do
    Fabricate.build(:student).should be_valid
  end
end
