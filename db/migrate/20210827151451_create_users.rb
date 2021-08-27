class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :age
      t.string :gender
      t.string :language

      t.timestamps
    end
  end
end
