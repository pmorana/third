class CreatePostcomments < ActiveRecord::Migration
  def change
    create_table :postcomments do |t|
      t.string :title
      t.text :body
      t.references :event, index: true
      t.references :user, index: true
      t.string :created_by

      t.timestamps
    end
  end
end
