class CreateFigures < ActiveRecord::Migration[5.1]
  def change
    create_table :figures |t| do
      t.string :name
    end
  end
end
