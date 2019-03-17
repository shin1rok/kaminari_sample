class UserSearchForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :gender, :integer
  attribute :birthday, :date
  attribute :prefecture_id, :integer
end
