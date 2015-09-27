class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.boolean :status, default: true
      t.timestamps null: false
    end
  end
end
