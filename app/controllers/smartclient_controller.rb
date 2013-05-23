require 'RPCManager'

class SmartclientController < ApplicationController             
    def index
      
    end
    
    def data 
      request = params[:smartclient]
      rpc = RPCManager.new(request) 
      data_source = rpc.get_datasource
                 
      case data_source
      when 'supplyitem'
          # select supplyitems table
          model = Supplyitem
      when 'employee'
          # select employees table
          model = Employee          
      else
          # default
          model = Supplyitem
      end
      # set the table
      rpc.model = model
      # set the request parameters            
      @result = rpc.processRequest 
      render json: @result
    end           
end
 