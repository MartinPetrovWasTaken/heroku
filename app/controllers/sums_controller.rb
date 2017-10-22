require 'csv'

class SumsController < ApplicationController
protect_from_forgery with: :null_sessions
    def index
    end
    def create
        csv_file = params[:csv_file]
        csv_file_path = csv_file.path

        result = 0
        CSV.foreach(csv_file_path) do |row|
          result  += row[0].to_f
          p result
        end

        respond_to do |format|
          format.html {render text: '%.2f' % result}
      end
    end
end
