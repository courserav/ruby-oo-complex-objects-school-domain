# code here!
class School
    def initialize(name)
        @name = name
        @hash = {}
    end

    def roster
        @hash
    end

    def add_student(student_name, grade)
        @hash[grade] ||= []
        @hash[grade] << student_name
    end

    def grade(year)
        @hash[year]
    end

    def sort
        @hash.each do |grade, student_array|
            @hash[grade] = student_array.sort
        end
        @hash
    end
end