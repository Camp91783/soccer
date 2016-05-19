class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :team_name, null: false
      t.string :location, null: false

      t.timestamps null: false
    end
  end
end
