class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :rating
      t.integer :length
      t.string :actors
      t.string :director
    end
  end
end
