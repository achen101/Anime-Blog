class CreateUserAvatar < ActiveRecord::Migration[5.2]
  def change
    create_table :user_avatars do |t|
      t.integer :user_id
      t.integer :avatar_id
    end
  end
end
