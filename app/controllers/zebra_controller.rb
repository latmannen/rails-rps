class ZebraController < ApplicationController
  def home

    render({:template => "game_templates/home"})
  end
  
  def giraffe
    moves = ["rock","paper","scissors"]
    @our_move = "rock"
    @comp_move = moves.sample
    
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    
    render({:template => "game_templates/play_rock"})
  end
  
  def elephant
    moves = ["rock","paper","scissors"]
    @our_move = "paper"
    @comp_move = moves.sample
    
    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    
    render({:template => "game_templates/play_rock"})
  end

  def lion
    moves = ["rock","paper","scissors"]
    @our_move = "scissors"
    @comp_move = moves.sample
    
    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    
    render({:template => "game_templates/play_rock"})
  end

end 
