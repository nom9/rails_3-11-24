class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
  t.references :m_thread, null: false, foreign_key: true
  t.text :text
  t.references :user, null: false, foreign_key: true

  t.timestamps
end
  end
end
