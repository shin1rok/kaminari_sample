class User < ApplicationRecord
  validates :name, presence: true
  validates :gender, presence: true
  validates :birthday, presence: true

  scope :name_like, ->(name) { where('name like ?', "%#{name}%") if name.present? }
  scope :gender_is, ->(gender) { where(gender: gender) if gender.present? }
  scope :birthday_is, ->(birthday) { where(birthday: birthday) if birthday.present? }
  scope :prefecture_id_is, ->(prefecture_id) { where(prefecture_id: prefecture_id) if prefecture_id.present? }
  scope :search, ->(search_form) {
    name_like(search_form.name)
      .gender_is(search_form.gender)
      .birthday_is(search_form.birthday)
      .prefecture_id_is(search_form.prefecture_id)
  }
end
