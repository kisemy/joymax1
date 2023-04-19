class FlowdashController < ApplicationController
  layout 'flowdash/application'
 # def index;
 #end


  def index
    @flowdashes = Flowdash.all
  end


  def show()
    params[:page] = 'index' unless params[:page]   
    render 'flowdash/'+ params[:page]
  end
end
