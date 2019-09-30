class CreateAcquisitions < ActiveRecord::Migration[5.2]
      # ------------------this is frame for acquisitions table in db
  def change
    create_table :acquisitions do |t|
      t.references :vinyl, foreign_key: true
      t.string :acquired_month
      t.integer :acquired_year

      t.timestamps
    end
  end
end
