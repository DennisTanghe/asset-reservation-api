class Api::V1::CategoriesController < ApplicationController
    
    # GET /categories
    def index
        @categories = Category.all
        render json: @categories
    end

    # GET /categories/:id
    def show
        @category = Category.find(params[:id])
        render json: @category
    end
    
    # POST /categories
    def create
        @category = Category.new(category_params)
        if @category.save
            render json: @category
        else
            render error: { error: 'Unable to create the category.'}, status: 400
        end
    end

    # PUT /categories/:id
    def update
        @category = Category.find(params[:id])
        if @category
            @category.update(category_params)
            render json: { message: 'Succesfully updated the category'}, status: 200
        else
            render error: { error: 'Unable to update the category'}, status: 400
        end
    end

    # DELETE /categories/:id
    def destroy
        @category = Category.find(params[:id])
        if @category
            @category.destroy
            render json: { message: 'Succesfully deleted the category'}, status: 200
        else
            render error: { error: 'Unable to delete the category'}, status: 400
        end
    end

    private

    def category_params
        params.require(:category).permit(:name, :description)
    end
end
