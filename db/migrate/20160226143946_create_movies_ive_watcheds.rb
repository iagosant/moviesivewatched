class CreateMoviesIveWatcheds < ActiveRecord::Migration
  def change
    create_table :movies_ive_watcheds do |t|
      t.string :title
      t.string :director
      t.date :date

      t.timestamps null: false
    end
  end
end
