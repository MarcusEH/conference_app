class ChangeAgendaDataTypeToMeetings < ActiveRecord::Migration[5.2]
  def change
    change_column :meetings, :agenda, :text
  end
end
