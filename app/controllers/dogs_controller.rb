class DogsController < ApplicationController

    def index
        if params[:sort]
            @dogs = Dog.all.sort_by do |dog|
                dog.employees.size
            end
        else
            @dogs = Dog.all
        end
    end

    # def sort
    #     Dog.sort_by_employee_count
    #     render :index
    # end

    def show
        @dog = Dog.find(params[:id])
    end

end
