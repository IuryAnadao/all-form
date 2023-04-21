class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.references :address, null: false, foreign_key: true
      t.string :name
      t.string :cnpj

      t.timestamps
    end
  end
end
