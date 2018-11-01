class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :employees
      t.integer :average_salary
      t.integer :average_age
      t.boolean :listed
      t.integer :listed_type
      t.string :flow
      t.integer :industry_type
      t.integer :hire
      t.float :magnification

      t.timestamps
    end
  end
end
