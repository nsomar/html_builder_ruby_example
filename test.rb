class HTMLBuilder
  def self.build
    yield(self.new)
  end

  def self.build2(&b)
    self.new.instance_eval(&b)
  end

  def add_tag(t) puts "##{t}" end
  def add_head_open_tag; puts "<html>" end
  def add_body_open_tag; puts "<body>" end
  def add_body_close_tag; puts "</body>" end
  def add_head_close_tag; puts "</html>" end
end

# DSL attempts

# Attempt 1
# HTMLBuilder.build do |h|
#   h.add_head_open_tag
#   h.add_body_open_tag
#   h.add_tag("br")
#   h.add_body_close_tag
#   h.add_head_close_tag
# end

# Attempt 2
# HTMLBuilder.build2 do
#   add_head_open_tag
#   add_body_open_tag
#   add_tag("br")
#   add_body_close_tag
#   add_head_close_tag
# end

# Attempt 3
# HTMLBuilder.new.instance_eval(File.read("test.hbuilder"))