class RestController < ApplicationController

  def index
    qry = get_class.includes(get_includes)

    @objects = if params[:ids]
      qry.where(id: params[:ids].split(",")).to_a
    else
      qry.all.to_a
    end

    head :not_found if @objects.empty?
  end

  def create_or_replace
    if object = get_class.find_by( id: params[:id] )
      replacement= get_class.new(
          object_params.merge( id: params[:id] )
        )
      if replacement.valid?
        object.destroy
        replacement.save
        head :no_content
      else
        head :unprocessable_entity
      end
    else
      if object = get_class.create(
          object_params.merge( id: params[:id] )
        )
        render json: object, status: :created
      else
        head :unprocessable_entity
      end
    end

  end

  def update
    if object = get_class.find_by( id: params[:id] )
      if object.update_attributes( object_params )
        head :no_content
      else
        head :unprocessable_entity
      end
    else
      head :not_found
    end
  end

  def destroy
    if object = get_class.find_by( id: params[:id] )
      if object.destroy
        head :no_content
      else
        head :internal_server_error
      end
    else
      head :not_found
    end
  end

  protected

  def get_class
    params[:controller].singularize.camelize.constantize
  end
end
