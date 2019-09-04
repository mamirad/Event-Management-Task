class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.text :event_description
      t.string :status
      t.date :event_start_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
