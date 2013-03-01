class CreateFooModels < ActiveRecord::Migration
  def change
    create_table :foo_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
