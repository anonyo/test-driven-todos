class User < Struct.new(:email)
  def todos
    Todo.where(email: email)
  end
  def signed_in?
    email.present?
  end
end
