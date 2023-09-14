require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Groups velidation specs' do
    it { should validate_presence_of(:name) }
    it { should belong_to(:user) }
    it { should have_db_column(:icon) }
    it { should have_db_column(:name) }
  end
end
