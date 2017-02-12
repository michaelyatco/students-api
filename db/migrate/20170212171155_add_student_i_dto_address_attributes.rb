class AddStudentIDtoAddressAttributes < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :student_id, :integer
  end
end
