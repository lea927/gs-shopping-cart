class ChangeBarcodeColumnToString < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :barcode, :string
  end
end
