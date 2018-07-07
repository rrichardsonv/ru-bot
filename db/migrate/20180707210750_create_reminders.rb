class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders, id: :uuid, default: "uuid_generate_v4()", force: true do |t|
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