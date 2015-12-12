class CreateCalcs < ActiveRecord::Migration
  def change
    create_table :calcs do |t|
      t.integer :result

      t.timestamps null: false
    end
  end
end
