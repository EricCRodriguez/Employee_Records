class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :bio

      t.timestamps
    end
  end
end
