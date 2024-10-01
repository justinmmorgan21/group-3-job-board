class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.string :title
      t.string :description
      t.string :url
      t.string :location
      t.string :active
      t.string :salary_range

      t.timestamps
    end
  end
end
