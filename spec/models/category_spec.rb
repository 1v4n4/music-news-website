require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'should have many articles' do
    t = Category.reflect_on_association(:articles)
    expect(t.macro).to eq(:has_many)
  end

  describe 'validation' do
    it 'fails if there is no name' do
      expect(Category.new(priority: 1).valid?).to be false
    end

    it 'fails if priority not present' do
      expect(Category.new(name: 'Top').valid?).to be false
    end

    it 'fails if name not unique' do
      Category.create(name: 'Top', priority: 1)
      expect(Category.new(name: 'Top', priority: 2).valid?).to be false
    end

    it 'fails if priority not unique' do
      Category.create(name: 'Top', priority: 1)
      expect(Category.new(name: 'Topp', priority: 1).valid?).to be false
    end

    it 'passes for valid parameters' do
      expect(Category.new(name: 'Top', priority: 1).valid?).to be true
    end
  end
end
