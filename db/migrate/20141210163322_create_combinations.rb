class CreateCombinations < ActiveRecord::Migration
  def change
    create_table :combinations do |t|
      t.text :context
      t.date :saidon

      t.timestamps
    end
  end
end
