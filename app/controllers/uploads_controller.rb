class UploadsController < ApplicationController
  respond_to :json, :js, :html

  def index
    @uploads = Upload.all
  end

  def create
    @upload = Upload.new upload_params
    @upload.save
    respond_with @upload
  end

  def destroy
    @upload = Upload.find params[:id]
    @upload.destroy
    respond_with @upload
  end

  private
  def upload_params
    params.require(:upload).permit!
  end
end
