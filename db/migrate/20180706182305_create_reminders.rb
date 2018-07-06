class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do id: :uuid, default: "gen_random_uuid()", force: true do |t|
      t.string :reminder_message
      t.string :slack_channel_id, null: false
      t.string :slack_message_ts, null: false
      t.string :slack_user_id, null: false
      t.column :respond_at, "timestamp with time zone", null: false
      t.column :created_at, "timestamp with time zone", null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.column :updated_at, "timestamp with time zone", null: false, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
