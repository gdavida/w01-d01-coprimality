# This method takes two integers, m and n, and determines whether those integers are co-prime

# require"pry"
def determine_coprimality(m, n)
    #start counter for checking factors
	i = 2
	#automatic falses would be:
	#if the numbers are the same to begin with
	if m == n
		return false
	#if either of the numbers == 0 or 1 because
	elsif m == 0 || n == 0
		return false
	elsif m == 1 || n == 1
		return false
	end

	while i <= m/2
	    # if i is a factor of both m and n, then they are not coprimal so return false
		if m % i == 0 && n % i == 0
			return false
		# otherwise up the counter by 1 and check again
		else i += 1
		end
	end
  #if we haven't found a match by the time the while loop finishes there must be no shared factors, so return that it is true the numbers are coprimal	
  return true
end
# binding.pry