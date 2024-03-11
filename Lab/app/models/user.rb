# app/models/user.rb
class User < ApplicationRecord
  # Relationship with MThreads
  has_many :m_threads, foreign_key: :user_id, dependent: :destroy
  # Relationship with Posts
  has_many :posts, dependent: :destroy
end