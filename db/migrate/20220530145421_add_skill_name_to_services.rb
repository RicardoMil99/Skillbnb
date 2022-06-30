class AddSkillNameToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :skill_name, :string
  end
end
