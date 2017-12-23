class Review
  include Mongoid::Document
  	field :business, type: String
  	field :id, type: String
  	# field :facebook, type: String,
  	# field :yelp, type: String,
  	# field :google, type: String

  	def as_json(*args)
	    res = super
	    res["id"] = res.delete("_id").to_s
	    res
  end
end
