module HomesHelper
	require "uri"
	
	# def youtube_embed(youtube_url) 
	# 	query_string = URI.parse(URI.encode(youtube_url)).host
	# 	# parameters = Hash[URI.decode_www_form(query_string)]
	# 	parameters['v'] # => aNdMiIAlK0g
	# end
	def youtube_embed(youtube_url)
	    # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
	    youtube_url.to_s[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
	    youtube_id = $5
	  youtube_id
	end

end
