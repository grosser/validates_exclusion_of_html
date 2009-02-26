require 'activerecord'
class ActiveRecord::Base
  def self.validates_exclusion_of_html(*attributes)
    options = attributes.extract_options!
    validate do |object|
      attributes.each do |attr|
        if object.send(attr) =~ /<|>/
          message = options[:message]||'must not include &gt; or &lt;'
          message = s_(message) if respond_to? :s_
          object.errors.add(attr,message)
        end
      end
    end
  end
end