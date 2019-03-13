class StaticPagesController < ApplicationController

    def home
        @zoo = false

        today = Date.current

        zooday = [Date.new(2019,5,17),
                  Date.new(2019,5,18),
                  Date.new(2019,5,19)]

        @zoo = true if zooday.include?(Date.current)

        #Random Styling
        fonts = ["serif", "sans-serif", 
                 "Arial", "Arial Black", "Gadget" "Helvetica", "Comic Sans MS", "cursive", "Impact", "Charcoal", "Lucida Sans Unicode", "Lucida Grande", "Tahoma", "Geneva", "Trebuchet MS", "Verdana", "Courier New", "Courier", "Lucida Console", "Monaco", "monospace"]
        weights = [100, 400, 700]
        italic = %w(normal italic oblique)
        textdec = %w(none underline)
        textdecstyle = %w(solid double dotted dashed wavy)
        borderstyle = %w(none dotted dashed solid double groove ridge inset outset)


        @font = fonts.sample
        @fweight = weights.sample
        @italic = italic.sample

        @textd = textdec.sample
        @textdcolor = SecureRandom.hex(3)
        @textdstyle = textdecstyle.sample

        @color = SecureRandom.hex(3)
        @bgcolor = SecureRandom.hex(3)

        @bordertl = rand(2000)
        @bordertr = rand(2000)
        @borderbl = rand(2000)
        @borderbr = rand(2000)

        @bordercolort = SecureRandom.hex(3)
        @bordercolorr = SecureRandom.hex(3)
        @bordercolorb = SecureRandom.hex(3)
        @bordercolorl = SecureRandom.hex(3)

        @borderwidtht = rand(100)
        @borderwidthr = rand(100)
        @borderwidthb = rand(100)
        @borderwidthl = rand(100)

        @borderstylet = borderstyle.sample
        @borderstyler = borderstyle.sample
        @borderstyleb = borderstyle.sample
        @borderstylel = borderstyle.sample

        @paddingt = rand(100)
        @paddingr = rand(100)
        @paddingb = rand(100)
        @paddingl = rand(100)
        
    end

end
