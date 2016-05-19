class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :team_name
      t.string :location

      t.timestamps null: false
    end
  end
end
