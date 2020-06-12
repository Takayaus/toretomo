class ImportCsv < ApplicationRecord
  # CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.import(path)
     CSV.foreach(path, headers: true) do |row|
       Gym.create(
         name: row["name"],
         title: row["title"],
         content: row["content"],
         number: row["number"],
         address: row["address"]
       )
     end
  end
end