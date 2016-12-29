require 'rails_helper'

RSpec.describe Url, type: :model, vcr: true do
  describe '#create' do
    subject { create(:url, *url_attributes) }
    let(:url_attributes) { [title: 'Amazing Foo', price: 20.00] }

    it 'saves the product' do
      is_expected.to be_persisted
    end

    it 'reads the uri page and gets the content' do
      expect(subject.title).to eq('Ematic 9" Dual Screen Portable DVD Player with Dual DVD Players (ED929D) - Walmart.com')
      expect(subject.price).to eq(119.00)

      # TODO test it further when reviews get extracted
      expect(subject.reviews).to be_nil
    end
  end
end
