class CreateGuchis < ActiveRecord::Migration[5.0]
  def change
    create_table :guchis do |t|
      t.strings :name
      t.strings :text

      t.timestamps
    end
  end
end
