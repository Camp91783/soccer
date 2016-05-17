class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :players, :teams_id, :team_id
  end
end
