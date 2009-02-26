Simple filtering for html as validation.
There are better more complete solutions out there, but this is simple/painless.

    class Movie < ActiveRecord::Base
      validates_exclusion_of_html :title, :producer
    end

Only supports :message option for now...
Message will be translated using `s_` if available.

Install
=======
    script/plugin install git://github.com/grosser/validates_exclusion_of_html.git

Author
======
Michael Grosser  
grosser.michael@gmail.com  
Hereby placed under public domain, do what you want, just do not hold me accountable...  