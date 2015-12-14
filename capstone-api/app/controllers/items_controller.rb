#
class ItemsController < OpenReadController
  before_action :set_item, only: [:update, :destroy]

  # GET /items
  def index
    @items = Item.all

    render json: @items
  end

  # GET /items/1
  def show
    @item = Item.find(params[:id])

    render json: @item
  end

  # POST /items
  def create
    @item = current_user.items.new(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH /items/1
  def update
    if @item.update(item_params)
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy

    head :no_content
  end

  def set_item
    @item = current_user.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :zipcode)
  end

  private :set_item, :item_params
end
