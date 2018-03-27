class AnotherNewsController < ApplicationController
  before_action :set_another_news, only: [:show, :edit, :update, :destroy]

  # GET /another_news
  # GET /another_news.json
  def index
    #@another_news = AnotherNew.all
    
  end

  # GET /another_news/1
  # GET /another_news/1.json
  def show
  end

  # GET /another_news/new
  def new
    @another_news = AnotherNew.new
  end

  # GET /another_news/1/edit
  def edit
  end

  # POST /another_news
  # POST /another_news.json
  def create
    @another_news = AnotherNew.new(another_news_params)

    respond_to do |format|
      if @another_news.save
        format.html { redirect_to @another_news, notice: 'Another new was successfully created.' }
        format.json { render :show, status: :created, location: @another_news }
      else
        format.html { render :new }
        format.json { render json: @another_news.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /another_news/1
  # PATCH/PUT /another_news/1.json
  def update
    respond_to do |format|
      if @another_news.update(another_news_params)
        format.html { redirect_to @another_news, notice: 'Another new was successfully updated.' }
        format.json { render :show, status: :ok, location: @another_news }
      else
        format.html { render :edit }
        format.json { render json: @another_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /another_news/1
  # DELETE /another_news/1.json
  def destroy
    @another_news.destroy
    respond_to do |format|
      format.html { redirect_to another_news_url, notice: 'Another new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_another_news
      @another_news = AnotherNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def another_news_params
      params.fetch(:another_news, {})
    end
end
