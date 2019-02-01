def staggered_case(str)
  cap = true
  chars = str.chars.map do |char|
    if cap && char =~ /[A-Za-z]/
      cap = false
      char.upcase
    elsif !cap && char =~ /[A-Za-z]/
      cap = true
      char.downcase
    else
      char
    end
  end
  chars.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'