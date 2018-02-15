class CreateCoinTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :coin_types do |t|
      t.string :title
      t.text,time :text

      t.timestamps
    end
  end
end