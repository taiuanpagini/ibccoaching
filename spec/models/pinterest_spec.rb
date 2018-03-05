require 'rails_helper'

RSpec.describe Pinterest, type: :model do
    before do
        @pinterest = create(:pinterest, status: :inativo)
    end

    it "The status is ativo" do
        @pinterest.ativo
        expect(@pinterest.status).to eq("ativo")
    end
end