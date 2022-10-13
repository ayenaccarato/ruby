# def da_nil?(&block)
#   puts block == nil
#
# end
#
# da_nil? { } #deberia dar true
# da_nil? do
#   'algo distinto de nil'
# end

def da_nil?
	puts yield == nil
end

da_nil? {}

da_nil? {'Algo distinto de nil'}

da_nil? do
	'Algo distinto de nil'
end
