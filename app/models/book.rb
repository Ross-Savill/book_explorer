class Book < ApplicationRecord
  require 'csv'

  def self.import(file)
    validates :uuid, uniqueness: true
      CSV.foreach(file.path, headers: true) do |row|
      Book.create! row.to_hash
    end
  end
end
