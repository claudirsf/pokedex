class CreateTipo1s < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo1s do |t|
      t.string :nome

      t.timestamps
    end
  end
end
