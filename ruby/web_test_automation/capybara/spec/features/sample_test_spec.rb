# frozen_string_literal: true

require 'spec_helper'

feature 'Amaysim login' do
  scenario 'Login and view account' do
    visit '/'
    click_link('Account')
  end
end
