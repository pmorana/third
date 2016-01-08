class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.datetime :alert_set
      t.references :user, index: true
      t.references :event, index: true
      t.string :alert_name

      t.timestamps
    end
  end
end
