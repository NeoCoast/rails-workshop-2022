# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.create(:user) }

  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }

    it { should validate_uniqueness_of(:email) }
  end
end
