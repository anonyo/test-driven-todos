require 'rails_helper'

describe User do
  describe '#todos' do
    it 'returns todos that belong to the user' do
      user = User.new('foo@gmail.com')
      Todo.create(email: user.email)

      expect(user.todos.count).to eq 1
    end
  end

  describe '#signed_in' do
    it 'returns true when signed in' do
      user = User.new('foo@gmail.com')
      Todo.create(email: user.email)

      expect(user.signed_in?).to eq true
    end
  end
end
