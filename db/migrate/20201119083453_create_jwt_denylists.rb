class CreateJwtDenylists < ActiveRecord::Migration[5.0]
  def change
    create_table :jwt_denylists do |t|
      t.string :jti, null: false
      t.datetime :exp
    end
    add_index :jwt_denylists, :jti
  end
end

