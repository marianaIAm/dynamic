class WorkoutsController < ApplicationController
  require 'json'
  # GET /workouts
  # GET /workouts.json
  def index
    render json: Workout.where(trainer_id: current_trainer_id)
  end

  # GET /workout/:id
  # GET /workout/:id.json
  def show

    @workout =  Workout.find(params[:id])
    exercises_workouts = workout.exercises.select('exercises.*, routines.workout_id').group_by(&:workout_id)
    render json: exercises_workouts

  end
end


