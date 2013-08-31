require 'spec_helper'

describe 'home resource' do
  it 'routes root to home#index' do
    expect(get: '/').to route_to(
      controller: 'home',
      action: 'index'
    )
  end
end