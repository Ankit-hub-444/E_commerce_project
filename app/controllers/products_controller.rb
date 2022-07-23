class ProductsController < ApplicationController
    skip_before_action:verify_authenticity_token
    def index
        render json:"Hello World"
    end

    def show_all
        products=Product.all
        render json: products
    end

    def show_one
        product=Product.find(params[:id])
        render json: product
    end

    def delete_one
        product=Product.find(params[:id])
        product.destroy
        render json: "Deleted succesfully"
    end

    def add 
        product=Product.create(title:params[:title],price:params[:price],category:params[:category],quantity:params[:quantity],description:params[:description],image:params[:image])
        render json: product
    end

    def edit
        product=Product.find(params[:id])
        product.title=params[:title]
        product.price=params[:price]
        product.category=params[:category]
        product.quantity=params[:quantity]
        product.description=params[:description]
        product.image=params[:image]
        product.save 
        render json: product
    end


end
