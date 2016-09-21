
class Array
  def my_map_1
    return enum_for(__callee__) unless block_given?
    inject([]) {|acc, el| acc << yield(el) }
  end

  def my_map_2(&block)
    result = []
    each do |element|
      result << block.call(element)
    end
    result
  end

  alias_method :my_map_3, :map
end

# > [1,2,3].my_map_1(&:to_s)
#  => ["1", "2", "3"]
# > [1,2,3].my_map_2(&:to_s)
#  => ["1", "2", "3"]
# > [1,2,3].my_map_3(&:to_s)
#  => ["1", "2", "3"]
