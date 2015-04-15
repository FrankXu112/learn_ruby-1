class Timer
  attr_writer :seconds

  def seconds(seconds = 0)
  	@seconds = seconds
  end

	def time_string
		hours = (@seconds/3600).to_i
		if @seconds >= 3600
			minutes = (@seconds/60).to_i - 60
			seconds = @seconds - 3600 - (minutes * 60)
		elsif @seconds < 3600 && @seconds >= 60
			minutes = (@seconds/60).to_i
			seconds = @seconds - (minutes * 60)
		elsif @seconds < 60 && @seconds >= 0
			minutes = 0
			seconds = @seconds
		else
			nil
		end
		h = time(hours)
		m = time(minutes)
		s = time(seconds)
		[h, m, s].join(":")
	end

	def time(num)
		if num >= 10
			"#{num}"
		elsif num < 10 && num >= 0
			"0#{num}"
		else
			nil
		end
	end
end