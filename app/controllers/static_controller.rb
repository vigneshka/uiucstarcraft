class StaticController < ApplicationController
 
 	def index
    @posts = Post.order('created_at DESC').limit(2)
	end

  def events
    @posts = Post.order('created_at DESC')
  end

  def members
  	@data = sorted
  end
end

private

# lopps through each league, sorts all players belonging to that league by their points, adds players to the members array
# return value is an array of players by their ladder ranking
def sorted

  require 'open-uri'
  require 'json'

	members = []
	temp = []

	object = JSON.parse(open("http://sc2ranks.com/api/clist/11658/us/all/1/0.json?appKey=uiucstarcraft.com").read)
  ["grandmaster", "master", "diamond", "platinum", "gold", "silver", "bronze"].each do |league|
  	object.each do |player|
  		if player["league"] == "#{league}" && player["expansion"] == 1
  			temp.push([player["members"][0]["fav_race"], player["members"][0]["name"],  player["league"], player["points"], player["members"][0]["bnet_id"]])
  		end
  	end
  	temp.sort! { |a, b| b[3]<=>a[3] }
		members += temp
		temp.clear
  end

  return members
end

