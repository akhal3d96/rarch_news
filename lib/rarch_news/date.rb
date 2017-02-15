require 'date'
module RarchNews
    class Date
        def self.archdate(pub_date)
            DateTime.parse pub_date.gsub(/ \+\d*$/, '')
        end
    end
end
