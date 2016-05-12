class CreateLeagueTable < ActiveRecord::Migration
  def change
    create_table :league_table do |t|
    t.string :name, null: false
    end
  end
end
