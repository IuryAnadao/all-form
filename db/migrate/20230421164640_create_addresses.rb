class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :district
      t.string :cep
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
