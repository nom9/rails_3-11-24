class CreateMThreads < ActiveRecord::Migration[7.1]
  def change
    create_table :m_threads do |t|
  t.string :title
  t.references :user, null: false, foreign_key: true

  t.timestamps
end
  end
end
