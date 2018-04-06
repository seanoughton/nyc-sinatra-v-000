class CreateLandmarks < ActiveRecord::Migration[4.2]
  #raise "Write CreateLandmarks migration here"
  create_table :landmarks |t| do
    t.string :name
    t.integer :figure_id
    t.integer :year_completed
  end

end
