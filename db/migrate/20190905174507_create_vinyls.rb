class CreateVinyls < ActiveRecord::Migration[5.2]
      # ------------------this is frame for vinyl table in db
  def change
    create_table :vinyls do |t|
      t.string :artist
      t.string :album
      t.integer :release_year

      t.timestamps
    end
  end
end
