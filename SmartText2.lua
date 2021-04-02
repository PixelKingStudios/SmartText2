local SmartText = {}

function SmartText.new(txt)
	local this = {class = 'SmartText', text = txt or ''}
	
	setmetatable(this, {
		__index = this;
		
		__tostring = function ()
			return this.text
		end;
		
		__concat = function (a, b)
			if type(a) == 'string' or type(b) == 'string' then
				return a == this and this.text .. b or a .. this.text
			elseif type(a) == 'table' and type(b) == 'table' then
				if a.class and b.class and a.class == 'SmartText' and b.class == 'SmartText' then
					return SmartText.new(a.text .. b.text)
				end
			end
			
			return warn 'Attmept to concat class invalid'
		end
	})
	
	function this:Bold(str)
		if str then
			this.text = this.text .. '<b>' .. str .. '</b>'
		else
			this.text = '<b>' .. this.text .. '</b>'
		end
		
		return this
	end
	
	function this:Italic(str)
		if str then
			this.text = this.text .. '<i>' .. str .. '</i>'
		else
			this.text = '<i>' .. this.text .. '</i>'
		end
		
		return this
	end
	
	function this:Underline(str)
		if str then
			this.text = this.text .. '<u>' .. str .. '</u>'
		else
			this.text = '<u>' .. this.text .. '</u>'
		end
		
		return this
	end
	
	function this:Strike(str)
		if str then
			this.text = this.text .. '<s>' .. str .. '</s>'
		else
			this.text = '<s>' .. this.text .. '</s>'
		end
		
		return this
	end
	
	function this:Size(str, sz)
		if sz then
			this.text = this.text .. '<font size="' .. sz .. '">' .. str .. '</font>'
		else
			this.text = '<font size="' .. str .. '">' .. this.text .. '</font>'
		end
		
		return this
	end
	
	function this:ColorRGB(str, r, g, b)
		if b then
			this.text = this.text .. '<font color="rgb(' .. r .. ',' .. g .. ',' .. b .. ')">' .. str .. '</font>'
		else
			this.text = '<font color="rgb(' .. str .. ',' .. r .. ',' .. g .. ')">' .. this.text .. '</font>'
		end
		
		return this
	end
	
	function this:ColorHEX(str, hex)
		if hex then
			this.text = this.text .. '<font color="' .. hex .. '">' .. str .. '</font>'
		else
			this.text = '<font color="' .. str .. '">' .. this.text .. '</font>'
		end
		
		return this
	end
	
	function this:Face(str, face)
		if face then
			this.text = this.text .. '<font face="' .. face .. '">' .. str .. '</font>'
		else
			this.text = '<font face="' .. str .. '">' .. this.text .. '</font>'
		end
		
		return this
	end
	
	function this:Concat(str)
		if str then
			this.text = this.text .. str
		else
			this.text = this.text .. ' '
		end
		
		return this
	end
	
	function this:Set(str)
		if str then
			this.text = str
		else
			this.text = ''
		end
		
		return this
	end
	
	function this:Clear()
		this.text = ''
		
		return this
	end
	
	return this
end

return SmartText
