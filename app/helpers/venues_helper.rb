module VenuesHelper
    def venue_price_helper
        if @venue.price > 5000 
            content_tag(:h6, "Price: #{number_to_currency(@venue.price)} ")
        else 
            content_tag(:h1, "Price: #{number_to_currency(@venue.price)} ")
        end 
    end


end

