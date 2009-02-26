# ---- requirements
$LOAD_PATH.unshift File.expand_path("../lib", File.dirname(__FILE__))
require 'validates_exclusion_of_html'

# ---- Helpers
def pending_it(text,&block)
  it text do
    pending(&block)
  end
end