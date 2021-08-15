module WeddingsHelper
    def index_header_venue
         if @venue 
            content_tag(:h1, "#{@venue.name} Weddings:")
         else 
            content_tag(:h1, "Weddings:")
         end 
    end

    def form_header_venue
        if @venue 
           content_tag(:h1, "Create #{@venue.name} Wedding:")
        else 
           content_tag(:h1, "Create Wedding:")
        end 
   end

   def venue_form_helper(f)
        if @venue 
             f.hidden_field :venue_id, value: @venue.id 
        else 
             render partial: "build_venue", locals: { f: f } 

        end 
   end
end
