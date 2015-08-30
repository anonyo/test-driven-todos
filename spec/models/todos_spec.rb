require 'rails_helper'

describe Todo do
  describe '#completed?' do
    it 'returns true if completed_at is set' do
      todo = Todo.new(completed_at: Time.current)
      expect(todo.completed?).to be true
    end

    it 'returns false if completed_at is nil' do
      todo = Todo.new(completed_at: nil)

      expect(todo.completed?).to be false
    end
  end
end
