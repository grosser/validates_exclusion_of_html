require 'active_record'
class ActiveRecord::Base
  def self.validates_exclusion_of_html(*attributes)
    options = attributes.extract_options!
    validate do |object|
      attributes.each do |attr|
        if object.send(attr) =~ /<|>/
          object.errors.add(attr,options[:message]||'must not include &gt; or &lt;')
        end
      end
    end
  end
end