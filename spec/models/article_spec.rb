require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'belong to user' do
    t = Article.reflect_on_association(:user)
    expect(t.macro).to eq(:belongs_to)
  end

  it 'belongs to category' do
    t = Article.reflect_on_association(:category)
    expect(t.macro).to eq(:belongs_to)
  end

  it 'should have many votes' do
    t = Article.reflect_on_association(:votes)
    expect(t.macro).to eq(:has_many)
  end  
  
end
