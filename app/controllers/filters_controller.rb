require 'csv'

class FiltersController < ApplicationController
        protect_from_forgery with: :null_sessions
    def index
    end
    def create
        csv_file = params[:csv_file]
        csv_file_path = csv_file.path
        array = Array.new

        max = 0
        count = 0
        a = 0
        b = 0
        first_row = true
        CSV.foreach(csv_file_path) do |row|
                
             if first_row == true
                first_row = false
                next
            end
                
            array[a] = row[0].to_f #moove all the numbers from row[0] to an array
            a += 1

          until a - 30 < b do
            count = 0
            i = b
              until 30 + b < i do
                  count += array[i].to_f
                  i += 1
                end
                if count > max
                  max = count
                end
                b += 1
            end
        end
        a = '%.2f' % max
        render plain: a
        puts count
    end
end
