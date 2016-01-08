class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.text :event_info
      t.datetime :event_time

      t.timestamps
    end
  end
end
