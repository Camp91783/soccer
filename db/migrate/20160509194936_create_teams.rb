class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string :name
      t.timestamps null: false
      t.has_many :players
    end
  end
end
