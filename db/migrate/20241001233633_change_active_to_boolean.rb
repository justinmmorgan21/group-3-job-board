class ChangeActiveToBoolean < ActiveRecord::Migration[7.1]
  def change
    change_column :jobs, :active, :boolean, default: true, using: "active::boolean"
  end
end

# class ChangeActiveToBoolean < ActiveRecord::Migration[7.1]
#   def change
#     change_column :jobs, :active, :boolean
#   end
# end
