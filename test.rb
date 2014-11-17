class HTMLBuilder
  def self.build
    yield(self.new)
  end

  def self.build2(&b)
    self.new.instance_eval(&b)
  end

  def add_tag(t) puts "##{t}" end
  def open_head; puts "<html>" end
  def open_body; puts "<body>" end
  def close_head; puts "</body>" end
  def close_body; puts "</html>" end
end

# DSL attempts

# Attempt 1
# HTMLBuilder.build do |h|
#   h.open_head
#   h.open_body
#   h.add_tag("br")
#   h.close_body
#   h.close_head
# end

# Attempt 2
# HTMLBuilder.build2 do
#   open_head
#   open_body
#   add_tag("br")
#   close_body
#   close_head
# end

# Attempt 3
# HTMLBuilder.new.instance_eval(File.read("test.hbuilder"))