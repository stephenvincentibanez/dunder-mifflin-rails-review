class Dog < ApplicationRecord

    has_many :employees

    # def self.sort_by_employee_count
    #     Dog.all.sort_by do |dog|
    #         dog.employees.size
    #     end
    # end

end
