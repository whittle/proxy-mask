# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{proxy-mask}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [""]
  s.date = %q{2010-04-11}
  s.description = %q{}
  s.email = %q{}
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README", "lib/proxy_mask.rb", "lib/proxy_mask/basic_object.rb", "lib/proxy_mask/proxy_mask.rb"]
  s.files = ["CHANGELOG", "LICENSE", "Manifest", "README", "Rakefile", "lib/proxy_mask.rb", "lib/proxy_mask/basic_object.rb", "lib/proxy_mask/proxy_mask.rb", "proxy-mask.gemspec", "spec/proxy_mask/basic_object_spec.rb", "spec/proxy_mask/proxy_mask_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Proxy-mask", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{proxy-mask}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
