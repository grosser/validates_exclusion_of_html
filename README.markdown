Simple filtering for html as validation.
There are more complete and complex solutions out there, but this is simple/painless.

    class User < ActiveRecord::Base
      validates_exclusion_of_html :name, :username
      validates_exclusion_of_html :firstname, :message=>'dont be evil...'
    end

Only supports :message option for now (default message is 'must not include &gt; or &lt;')

Install
=======
    script/plugin install git://github.com/grosser/validates_exclusion_of_html.git
OR
    sudo gem install grosser-validates_exclusion_of_html

Author
======
[Michael Grosser](http://pragmatig.wordpress.com)  
grosser.michael@gmail.com  
Hereby placed under public domain, do what you want, just do not hold me accountable...  
