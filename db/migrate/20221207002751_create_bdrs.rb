class CreateBdrs < ActiveRecord::Migration[7.0]
  def change
    create_table :bdrs do |t|
      t.string :bdr
      t.string :redac

      t.timestamps
    end
  end
end
