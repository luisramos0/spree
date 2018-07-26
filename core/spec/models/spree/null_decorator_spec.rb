require 'spec_helper'

describe Spree::NullDecorator do
  class FakeDecorated; end

  let(:decorated) { FakeDecorated.new }

  it 'receives an object to decorate in its constructor' do
    described_class.new(decorated).should be_true
  end
end
