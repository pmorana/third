class CreatePrecomments < ActiveRecord::Migration
  def change
    create_table :precomments do |t|
      t.string :title
      t.text :body
      t.references :event, index: true
      t.references :user, index: true
      t.string :created_by

      t.timestamps
    end
  end
end
