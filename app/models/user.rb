class User
  include Mongoid::Document

  field :name
  field :last_name
  field :start_date, type: DateTime
  field :end_date, type: DateTime
  field :email, type: Boolean, default: true
  field :comments

  validates :name, presence: {message: " must be present"}
end
