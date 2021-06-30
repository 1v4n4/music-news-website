require 'rails_helper'

RSpec.describe Vote, type: :model do
  it 'belong to user' do
    t = Vote.reflect_on_association(:user)
    expect(t.macro).to eq(:belongs_to)
  end

  it 'belong to article' do
    t = Vote.reflect_on_association(:article)
    expect(t.macro).to eq(:belongs_to)
  end
end
