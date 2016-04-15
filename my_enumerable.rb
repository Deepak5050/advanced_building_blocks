module Enumerable
	def d_each &block
		for element in self
			yield element
		end
	end

	def d_each_with_index &block
		index = 0
		for element in self
			yield element, index
			index += 1
		end
	end

	def d_select &block
		selected = []
		self.d_each {|element| selected << element if yield(element)}
		selected
	end

	def d_all? &block
		self.d_each do |e| return false unless yield(e) end
		true
	end

	def d_any? &block
		self.d_each do |e| return true unless !yield(e) end
		false
	end

	def d_none? &block
		is_true = true
		self.each do |e|
			if !yield(e)
				is_true=false
			end
		end
		is_true
	end

	def d_count &block
		count = 0
		self.d_each do |e|
			count += 1
		end
		count
	end

	def d_map &block
		mapped_array = []
		self.d_each { |e| mapped_array << e if yield(e)}
		mapped_array
	end

	def d_inject default = nil
		 self.d_each {|action, e| return yield(action, e) unless !default}
		 default	

		#applying d_inject in the multiply_els method
		#def multiply_els arr
		#result = arr.inject {|m, e| m*e}
		#result
		#end
		#multiply_els([2,4,5]) => 40		
	end

end