module Jekyll
  class Loz < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
    	$stderr.puts @text
    	tags = @text.split
    	# $stderr.puts "tags:" + tags[0].strip
    	
    	color = tags[0].strip
    	msg = tags[1...100]

    	msg = msg.map { |word| "#{word}" }.join(' ')
    	# $stderr.puts "msg: #{msg}"
    	
    	if color == "red"
    		'<span class="label label-important">' + msg + '</span>'
    	elsif color == "green"
    		'<span class="label label-success">' + msg + '</span>'
    	elsif color == "blue"
    		'<span class="label label-info">' + msg + '</span>'
    	else
    		'<span class="label label-inverse">' + msg + '</span>'
    	end
    end
  end
end

Liquid::Template.register_tag('loz', Jekyll::Loz)