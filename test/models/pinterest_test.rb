require 'test_helper'

class PinterestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  describe Pinterest do
    let(:pinterest) { FactoryGirl.build(:pinterest) }
    subject { pinterest }

    it { should be_valid }
    it "have products"

    describe "have a name" do
      before {pinterest.name = '' }
      it { should_not be_valid }
    end

    describe "is unique" do
      before {FactoryGirl.create(:pinterest, name: pinterest.name) }
      it {should_not be_valid }
    end


  end
end
