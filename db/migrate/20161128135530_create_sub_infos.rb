class CreateSubInfos < ActiveRecord::Migration
  def change
    create_table :sub_infos do |t|
      
      
      t.string "St_code"
      t.string "Title_info"
      t.integer "Title_like" , :default =>0
      
      

      t.timestamps null: false
    end
  end
end
