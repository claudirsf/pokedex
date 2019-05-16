class CreateBichos < ActiveRecord::Migration[5.2]
  def change
    create_table :bichos do |t|
      t.string :nome
      t.string :desenho
      t.string :tipo1
      t.string :tipo2
      t.string :dex
      t.string :forma
      t.text :bio

      t.timestamps
    end
  end
end
