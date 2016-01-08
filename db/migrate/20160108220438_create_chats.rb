class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.references :event, index: true
      t.references :user, index: true
      t.text :body
      t.string :created_by

      t.timestamps
    end
  end
end
