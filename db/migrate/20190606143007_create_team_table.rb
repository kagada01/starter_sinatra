class CreateTeamTable < ActiveRecord::Migration[5.2]
  def change
  create_table :teams do |t|
    t.string :name
    t.string :location
    t.string :coach
    end
  end
end
