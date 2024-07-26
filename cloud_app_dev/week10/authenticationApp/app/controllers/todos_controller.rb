class TodosController < ApplicationController
  before_action :set_todo, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /todos or /todos.json
  def index
    @todos = Todo.where user_id:current_user.id
  end

  # GET /todos/1 or /todos/1.json
  def show
    if @todo.user_id != current_user.id
      redirect_to todos_url
      return
	end
 end

  # GET /todos/new
  def new
    @todo = Todo.new
	@todo.user_id = current_user.id
  end

  # GET /todos/1/edit
  def edit
    if @todo.user_id != current_user.id
      redirect_to todos_url
      return
	end
  
  end

  # POST /todos or /todos.json
  def create
    @todo = Todo.new(todo_params)
     if @todo.user_id != current_user.id
      redirect_to todos_url
      return
	end
    respond_to do |format|
      if @todo.save
        format.html { redirect_to todo_url(@todo), notice: "Todo was successfully created." }
        format.json { render :show, status: :created, location: @todo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todos/1 or /todos/1.json
  def update
  
     if @todo.user_id != current_user.id
      redirect_to todos_url
      return
	end
    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to todo_url(@todo), notice: "Todo was successfully updated." }
        format.json { render :show, status: :ok, location: @todo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1 or /todos/1.json
  def destroy
  
   if @todo.user_id != current_user.id
      redirect_to todos_url
      return
	end
    @todo.destroy!

    respond_to do |format|
      format.html { redirect_to todos_url, notice: "Todo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_params
      params.require(:todo).permit(:title, :completed, :user_id)
    end
end
