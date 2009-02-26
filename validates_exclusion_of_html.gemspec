# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{validates_exclusion_of_html}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Grosser"]
  s.date = %q{2009-02-26}
  s.email = %q{grosser.michael@gmail.com}
  s.files = ["README.markdown", "VERSION.yml", "lib/validates_exclusion_of_html.rb", "spec/spec_helper.rb", "spec/validates_exclusion_of_html_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/grosser/validates_exclusion_of_html}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{ActiveRecord: Simple filtering for html as validation.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
