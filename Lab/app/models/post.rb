# app/models/post.rb
class Post < ApplicationRecord
  # Relationship with MThread
  belongs_to :m_thread
  # Relationship with User
  belongs_to :user
end