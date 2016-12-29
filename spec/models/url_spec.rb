require 'rails_helper'

RSpec.describe Url, type: :model do
  describe '#create' do
    subject { create(:url, *url_attributes) }
    let(:url_attributes) { [title: 'Amazing Foo', price: 20.00] }

    it 'saves the product' do
      is_expected.to be_persisted
    end
  end

  describe '#process_parser' do
  end
end
