class CreateUsres < ActiveRecord::Migration
  def change
    create_table :usres do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
