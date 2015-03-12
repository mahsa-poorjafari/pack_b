class AddMessageTypeToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :message_type, :boolean, :default => false
  end
end
