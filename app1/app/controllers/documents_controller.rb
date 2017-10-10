class DocumentsController < ApplicationController
	require 'csv'
	def sums 
	csvfile=params[:file]
	csvpath=csvfile.path
	sum = 0
	CSV.foreach(csvpath) do |row|
		sum+=row[0].to_f
	end

	sum = "%.2f" % sum

	render :plain => sum
end
end
