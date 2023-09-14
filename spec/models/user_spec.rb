require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User validation' do
    it { should validate_presence_of(:name) }
    it { should have_many(:groups) }
    it { should have_many(:entities) }
    it { should validate_length_of(:name).is_at_least(3).on(:create) }
    it { should validate_length_of(:name).is_at_most(20).on(:create) }
    it { should validate_uniqueness_of(:name) }
  end
end
