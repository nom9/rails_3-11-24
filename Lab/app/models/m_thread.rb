# app/models/m_thread.rb
class MThread < ApplicationRecord
  # Relationship with User
  belongs_to :user
  # Relationship with Posts
  has_many :posts, dependent: :destroy
end