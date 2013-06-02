class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new beehive_id: params[:beehive_id]    

    respond_to do |format|
      format.html # new.html.erb   
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(params[:task].except :beehive)
    @task.beehive_id = params[:task][:beehive][:beehive_id].to_i

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])
    params[:task][:beehive_id] = params[:task][:beehive][:beehive_id].to_i

    respond_to do |format|
      if @task.update_attributes(params[:task].except :beehive)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
    end
  end
end
