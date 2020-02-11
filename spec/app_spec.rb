# frozen_string_literal: true

RSpec.describe Aeneis do
  it 'loads the home page' do
    get '/'

    expect(last_response).to be_ok
  end

  it 'returns 404' do
    get '/non-existent'

    expect(last_response).to be_not_found
  end
end
