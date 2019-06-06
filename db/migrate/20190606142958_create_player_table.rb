class CreatePlayerTable < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :college
      t.string :draft_year
      t.string :avg_points
      t.integer :team_id
    end
  end
end
