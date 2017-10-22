require 'csv'

class IntervalsController < ApplicationController
          protect_from_forgery with: :null_sessions
  def index
  end
  def create
      csv_file = params[:csv_file]
      csv_file_path = csv_file.path

      sum = 0
      CSV.foreach(csv_file_path) do |row|
      if row[2].to_i.odd?
            sum += row[0].to_f
        end
      end
      a = '%.2f' % sum
      render plain: a
    end
end
