class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, default: '', null: false
      t.string :email, default: '', null: false, index: { unique: true }

      t.timestamps
    end
  end
end
