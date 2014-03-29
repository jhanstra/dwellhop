class AddInfoToHomeModel < ActiveRecord::Migration
  def change
    add_column :homes, :youtube_url, :string
    add_column :homes, :summary, :text
    add_column :homes, :summary_header, :string
    add_column :homes, :state, :integer
    add_column :homes, :walkability_score, :integer
    add_column :homes, :neighborhood_description, :text
    add_column :homes, :questionnaire_id, :integer
    add_column :homes, :features_id, :integer

  end
end
