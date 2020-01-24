class CreateAppLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :app_logs do |t|
      t.integer :logStatusID
      t.text :message
      t.text :stackTrace
      t.integer :userid

      t.timestamps
    end
  end
end
