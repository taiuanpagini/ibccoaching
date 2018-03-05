require 'rails_helper'

RSpec.describe PinterestsController, type: :controller do
  describe "PUT #ativo" do
    before do
    end

    context "with valid pinterest" do
      before do
        @pinterest = create(:pinterest, status: :inativo)
      end

      it "The status will be changed" do
        put :ativo, params: {id: @pinterest.id}
        @pinterest.reload
        expect(@pinterest.status).to eql("ativo")
      end
    end
  end
end