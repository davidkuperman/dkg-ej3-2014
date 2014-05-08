class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :role
      t.string :salary

      t.timestamps
    end
  end
end
