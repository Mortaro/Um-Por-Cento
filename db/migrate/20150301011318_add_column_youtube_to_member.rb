class AddColumnYoutubeToMember < ActiveRecord::Migration
  def change
    add_column :members, :youtube, :text
  end
end
