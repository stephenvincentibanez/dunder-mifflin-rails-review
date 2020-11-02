class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def sort
        Dog.sort_by_employee_count
        render :index
    end

    def show
        @dog = Dog.find(params[:id])
    end

end
