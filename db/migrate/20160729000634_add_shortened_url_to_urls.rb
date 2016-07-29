class AddShortenedUrlToUrls < ActiveRecord::Migration[5.0]
  def change
    add_column :urls, :shortened_url, :string
  end
end
