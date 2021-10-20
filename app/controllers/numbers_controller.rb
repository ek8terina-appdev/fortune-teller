class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @zebra = Array.new

    5.times do
      giraffe = rand(500...600)

      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/sad.html.erb"})
  end

end
