# frozen_string_literal: true

require 'rspec'

# rubocop:disable Style/MixinUsage
extend RSpec::Matchers
# rubocop:enable Style/MixinUsage

require './calc'

describe 'Share price calculator' do
  it 'calsulates max profit correctly' do
    expect(get_max_profit([42, 11, 7, 21, 7, 13, 5, 9])).to equal(14)
    expect(get_max_profit([43, 1, 17, 5, 11, 16, 2, 19])).to equal(18)
    expect(get_max_profit([52, 100, 10, 200, 53, 7, 160])).to equal(190)
  end
end
