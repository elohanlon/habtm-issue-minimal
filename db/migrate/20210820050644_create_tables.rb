class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :apples do |t|
      t.timestamps
    end

    create_table :enabled_dynamic_fields do |t|
      t.timestamps
    end

    create_join_table :apples, :enabled_dynamic_fields do |t|
      t.index :apple_id, name: 'apple_id_app_edf_join'
      t.index :enabled_dynamic_field_id, name: 'enabled_dynamic_field_id_app_edf_join'
    end
  end
end
