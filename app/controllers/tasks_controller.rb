# app/controllers/tasks_controller.rb
class TasksController < ApplicationController
  def seed
    if ENV["ALLOW_SEED_RUN"] == "true"
      Rails.application.load_tasks
      Rake::Task['db:seed'].invoke
      render json: { message: "Seeding completed!" }
    else
      render json: { error: "Not authorized" }, status: :forbidden
    end
  end
end
