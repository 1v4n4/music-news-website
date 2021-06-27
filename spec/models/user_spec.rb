require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have many articles' do
    t = User.reflect_on_association(:articles)
    expect(t.macro).to eq(:has_many)
  end

  it 'should have many comments' do
    t = User.reflect_on_association(:votes)
    expect(t.macro).to eq(:has_many)
  end

  describe 'validations' do
    it 'fails if name not provided' do
      expect(User.new.valid?).to be false
    end

    it 'fails if length of the name is less than 3' do
      expect(User.new(name: 'x').valid?).to be false
    end

    it 'fails when name exists' do
      name = 'JohnDoe'
      User.create!(name: name)
      expect(User.new(name: name).valid?).to be false
    end

    it 'passes when length of the name is 3 or more' do
      expect(User.new(name: 'hey').valid?).to be true
    end
  end


end
