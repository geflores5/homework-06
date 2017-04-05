class Challenge1
  def self.balanced?(_string)
    # your implementation goes here
    return true if _string.empty?

    bracket = 0
    paren = 0
    brace = 0
    inner = []

    _string.chars do |char|

      if char == '['
        bracket = bracket + 1
        inner << '['
      elsif char == ']'
        return false if inner.last != '['
        inner.pop
        bracket = bracket -1
        return false if bracket < 0
      end

      if char == '('
        paren = paren + 1
        inner << '('
      elsif char == ')'
        return false if inner.last != '('
        inner.pop
        paren = paren -1
        return false if paren < 0
      end

      if char == '{'
        brace = brace + 1
        inner << '{'
      elsif char == '}'
        return false if inner.last != '{'
        inner.pop
        brace = brace -1
        return false if brace < 0
      end

    end

    return false if bracket != 0
    return false if paren != 0
    return false if brace != 0

    return true
  end
end

puts Challenge1.balanced?('(a[0]+b[2c[6]]) {24 + 53}')
puts Challenge1.balanced?('[()]{}([])')
puts Challenge1.balanced?('((b)')
puts Challenge1.balanced?('(c]')
puts Challenge1.balanced?('{(a[])')
puts Challenge1.balanced?('([)]')
puts Challenge1.balanced?('')
