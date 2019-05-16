class CreateDexes < ActiveRecord::Migration[5.2]
  def change
    create_table :dexes do |t|
      t.string :numero

      t.timestamps
    end
  end
end
