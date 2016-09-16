class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :publisher
      t.string :no_of_books
      t.string :phone
      t.string :email
    end
  end
end
