class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      redirect_to @candidate
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @candidate = Candidate.find(params[:id])
  end

  def update
    @candidate = Candidate.find(params[:id])
    
    if @candidate.update(candidate_params)
      redirect_to @candidate
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @candidate = Candidate.find(params[:id])
    @candidate.destroy
    
    redirect_to candidates_path, status: :see_other
  end

  private
    def candidate_params
      params.require(:candidate).permit(:CandidateName, :CandidateSurname, :CandidateBirth)
    end
end
