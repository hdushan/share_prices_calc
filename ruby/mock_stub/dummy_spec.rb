# frozen_string_literal: true

require_relative 'dummy'
require 'rspec'

# rubocop:disable Style/MixinUsage
extend RSpec::Matchers
# rubocop:enable Style/MixinUsage

# rubocop: disable Metrics/BlockLength
describe Dummy do
  describe 'No stubbing/mocking' do
    let(:d) { Dummy.new }

    it 'test normal usage' do
      expect(d.dummy(5, 6)).to eq(30)
    end
  end

  describe 'example of an instance double aka verifying double, this is the most specific' do
    let(:dummy) { instance_double(Dummy) } # can only create instance double of class that exists
    before do
      allow(Dummy).to receive(:new).and_return(dummy)
      allow(dummy).to receive(:dummy).with(5, 6).and_return(20) # can only mock methods that exist
      # allow(dummy).to receive(:dummyX).with(any_args).and_return(20) # will fail as dummyX doesnt exist
    end

    it 'test instance_double' do
      d = Dummy.new
      expect(d.respond_to?(:dummy)).to eq(true)
      expect(d.dummy(5, 6)).to eq(20)
    end
  end

  describe 'example of an double, this is less specific than instance_double' do
    let(:dummy) { double(Dummy) }
    before do
      allow(Dummy).to receive(:new).and_return(dummy)
      allow(dummy).to receive(:dummy).with(5, 6).and_return(20)
      allow(dummy).to receive(:dummyX).with(any_args).and_return(200) # this is allowed eventhough dummyX doesnt exist
    end

    it 'test double' do
      d = Dummy.new
      expect(d.respond_to?(:dummy)).to eq(true)
      expect(d.dummy(5, 6)).to eq(20)
      expect(d.dummyX(5, 6)).to eq(200)
    end
  end

  describe 'example of a spy, this is least specific' do
    let(:dummyX) { spy }

    it 'test stubbed' do
      expect(dummyX.dummyXYZ(5, 6)).not_to eq(nil)
    end
  end
end
# rubocop: enable Metrics/BlockLength
