class VotersController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret"
  def index
    @voters = Voter.all
  end

  def show
    @voter = Voter.find(params[:id])
  end

  def new
    @voter = Voter.new
  end

  def create
    @voter = Voter.new(voter_params)

    if @voter.save
      redirect_to @voter
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @voter = Voter.find(params[:id])
  end

  def update
    @voter = Voter.find(params[:id])
    
    if @voter.update(voter_params)
      redirect_to @voter
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @voter = Voter.find(params[:id])
    @voter.destroy
    
    redirect_to voters_path, status: :see_other
  end

  private
    def voter_params
      params.require(:voter).permit(:VoterPESEL, :VoterName, :VoterSurname, :VoterBirth)
    end

end
