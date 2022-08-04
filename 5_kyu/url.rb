# https://www.codewars.com/kata/514a024011ea4fb54200004b/train/ruby

# >>>>>> Problem

# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. 

# input: a string (complete url)

# output: a string (domain name)


# >>>>>> Caveats

# some urls will have "www.", some others won't


# >>>>>> Examples and test cases

# * url = "http://github.com/carbonfive/raygun" -> domain name = "github"
# * url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
# * url = "https://www.cnet.com"                -> domain name = "cnet"

# >>>>>> Data Structures + Possible methods/strategies to use

# delete substring at the left + right of the domain name

# >>>>>> Algorithm

# 1. copy input url into new output string

# 2. delete substrings "http://", "https://" and "www."

# 3. split string in an array of elements based on a "." delimiter

# 4. return first element in that array (domain name at the left of the dot)


# >>>>>> Code

def domain_name(url)
  url = url.gsub("http://", "").gsub("http://", "").gsub("www.", "")

  url.split(".")[0]

end