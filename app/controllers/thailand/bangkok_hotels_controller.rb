class Thailand::BangkokHotelsController < Thailand::ThailandController

  def index
  end

  def new
     @bangkok = BangkokHotel.new
  end

  def create
    @bangkok = BangkokHotel.new(params[:bangkok_hotel])
    if @bangkok.save
      flash[:success] = "success register Bangkok Hotel"
      redirect_to [:thailand, @bangkok]
    else
      render 'new'
    end
  end

  def show
    @bangkok = BangkokHotel.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
