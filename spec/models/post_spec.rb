require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { FactoryBot.create(:post) }

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
  end
end
