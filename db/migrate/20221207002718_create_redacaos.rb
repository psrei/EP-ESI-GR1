class CreateRedacaos < ActiveRecord::Migration[7.0]
  def change
    create_table :redacaos do |t|
      t.string :redacao
      t.string :texto

      t.timestamps
    end
  end
end
