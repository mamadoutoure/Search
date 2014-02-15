class Finder
  # To change this template use File | Settings | File Templates.

  require "factual"
    def self.search (parms)
    factual = Factual.new("rcqLU5Ztp5fGaVasCLip4nzXubqpPBQaTDW0rhbV", "rgDOhufaGqpomml5Q8D6VQfLUtYWvnsby4aZqTC7")
    query = factual.table("places")
    if  !parms['city'].blank?
       query =  query.filters("locality" => parms['city'])
    end

    if !parms['zipcode'].blank?
      query =  query.filters("postcode" => parms['zipcode'])
    end

    if !parms['name'].blank?
      query =  query.search(parms['name'])
    end
    query.rows
  end

end