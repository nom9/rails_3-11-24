class MThreadsController < ApplicationController
  before_action :set_m_thread, only: %i[ show edit update destroy ]

  # GET /m_threads or /m_threads.json
  def index
    @m_threads = MThread.all
  end

  # GET /m_threads/1 or /m_threads/1.json
  def show
  end

  # GET /m_threads/new
  def new
    @m_thread = MThread.new
  end

  # GET /m_threads/1/edit
  def edit
  end

  # POST /m_threads or /m_threads.json
  def create
    @m_thread = MThread.new(m_thread_params)

    respond_to do |format|
      if @m_thread.save
        format.html { redirect_to m_thread_url(@m_thread), notice: "M thread was successfully created." }
        format.json { render :show, status: :created, location: @m_thread }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @m_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_threads/1 or /m_threads/1.json
  def update
    respond_to do |format|
      if @m_thread.update(m_thread_params)
        format.html { redirect_to m_thread_url(@m_thread), notice: "M thread was successfully updated." }
        format.json { render :show, status: :ok, location: @m_thread }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @m_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_threads/1 or /m_threads/1.json
  def destroy
    @m_thread.destroy!

    respond_to do |format|
      format.html { redirect_to m_threads_url, notice: "M thread was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_thread
      @m_thread = MThread.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def m_thread_params
      params.require(:m_thread).permit(:title, :created_by)
    end
end
