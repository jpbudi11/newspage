class EchoController < ApplicationController
  def show
      puts "++++++++++++++++++++++++++"
      puts
      puts "++++++++++++++++++++++++++"
    
      
  end

  def echo
      @name = params[:name]
      @age = params[:age]
      @nameCheck = params[:nameCheck]
      if @nameCheck.nil?
        @checkForName = "notPresent"
      else 
        @checkForName = "present"
      end
      
      @ageCheck = params[:ageCheck]
      if @ageCheck.nil?
        @checkForAge = "notPresent"
      else 
        @checkForAge = "present"
      end
    
  end
end
