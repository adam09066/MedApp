class MedicinesController < ApplicationController

	before_action :med_find, only: [:show, :edit, :update, :destroy]


	def index
		if params[:category].blank?
			@medicines = Medicine.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@medicines = Medicine.where(:category_id => @category_id)
		end
		
	end

	def show
		
	end

	def new
		@medicine = Medicine.new
		@categories = Category.all.map { |c| [c.name, c.id] }
	end

	def create
		@medicine = Medicine.new(med_params)
		@medicine.category_id = params[:category_id]
		if @medicine.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit	
		@categories = Category.all.map { |c|  [c.name, c.id] }
	end

	def update
		if @medicine.update(med_params)
			redirect_to medicine_path(@medicine)
		else
			render 'edit'
		end
	end

	def destroy
		@medicine.destroy
		redirect_to root_path
	end

	private
	def med_params
		params.require(:medicine).permit(:name, :price, :description, :category_id, :medicine_img)
	end
	def med_find
		@medicine = Medicine.find(params[:id])
		
	end

end
