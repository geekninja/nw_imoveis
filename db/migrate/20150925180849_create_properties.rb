class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :situation, default: 0, index: true
      t.integer :type_property, default: 0, index: true
      t.boolean :status, default: true

      t.json    :image_path
      
      t.string :iptu
      t.date   :expiration_date

      t.string  :cep
      t.references  :state, index: true

      t.string :city
      t.string :region
      t.string :district
      t.string :address
      t.string :group
      t.string :number
      t.string :block
      t.string :complement
      t.string :reference_point
      t.boolean :address_link_visible
      t.boolean :complement_link_visible

      t.string :name
      t.integer :rooms, default: 0
      t.string :unit
      t.float  :value, default: 0.00
      t.integer :suit, default: 0
      t.float :value_m2, default: 0.00
      t.float :area, default: 0.00
      t.integer :parking_spaces, default: 0
      t.integer :floor, default: 0
      t.string :sun_position
      t.string :link_tour
      t.float :value_rent, default: 0.00

      t.references :client, index:true
      t.references :project, index: true
      t.references :property_attribute, array: true, default: []

      t.references :construction_companies, array: true, default: []
      t.references :sellers, array: true, default: []

      t.text  :description
      t.boolean :commercial,  default: false
      t.boolean :elevator,    default:false
      t.boolean :coverage,    default:false

      t.timestamps null: false
    end
  end
end
