# The quiz https://dzone.com/articles/code-challenge-series-1
# The results https://dzone.com/articles/code-challenge-substitution-decipher-code-golf

def f(w, s);i,m=0;w.each_cons(s.size){|*c|;if c==[s];m=i;break;end;i+=1;};m;end
position = f 'the quick brown fox jumped over the lazy dog'.chars, 'dog'.chars
puts "Position of substring #{position}"
position = f 'oossoossooroossoo'.chars, 'oossoor'.chars
puts "Position of oossoor #{position}"

def f(w,s);i=0;w.each_cons(s.size){|*c|;break i if c==[s];i+=1;};end
position = f 'the quick brown fox jumped over the lazy dog'.chars, 'dog'.chars
puts "Position of substring #{position}"
position = f 'oossoossooroossoo'.chars, 'oossoor'.chars
puts "Position of oossoor #{position}"

c=->a,b{i=j=-1;k=0;loop{i+=1;j+=1;break k if j==b.size;redo if a[i]==b[j];j=0;i=k+=1;break if k==a.size}}
position = c.call 'the quick brown fox jumped over the lazy dog'.chars, 'dog'.chars
puts "Position of substring #{position}"
position = c.call 'oossoossooroossoo'.chars, 'oossoor'.chars
puts "Position of oossoor #{position}"

c=->a,b{i=j=k=0;while i<a.size do;if a[i]==b[j];i+=1;j+=1;break k if j==b.size;redo;end;j=0;i=k+=1;end}
position = c.call 'the quick brown fox jumped over the lazy dog'.chars, 'dog'.chars
puts "Position of substring #{position}"
position = c.call 'oossoossooroossoo'.chars, 'oossoor'.chars
puts "Position of oossoor #{position}"

c=->a,b{a.chars.each_cons(b.size).find_index{|x|x==b.chars}}
position = c.call 'the quick brown fox jumped over the lazy dog', 'dog'
puts "Position of substring #{position}"
position = c.call 'oossoossooroossoo', 'oossoor'
puts "Position of oossoor #{position}"

