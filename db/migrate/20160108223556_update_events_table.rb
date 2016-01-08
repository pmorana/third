class UpdateEventsTable < ActiveRecord::Migration
  def change
  	rename_column :events, :event_time, :event_start
  	add_column :events, :event_end, :datetime
  end
end
