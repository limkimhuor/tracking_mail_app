class CreateEmailOpens < ActiveRecord::Migration[5.2]
  def change
    create_table :email_opens do |t|
      t.string :email
      t.string :ip

      t.timestamps
    end
  end
end
