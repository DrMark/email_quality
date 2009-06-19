# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{email_quality}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dr. Mark Lane"]
  s.date = %q{2009-06-19}
  s.description = %q{Email Quality is a Ruby library for evaluating email addresses. It checks for format and to see if the domain is a Disposable Email Address (DEA).}
  s.email = %q{drmark@gmail.com}
  s.files = %w[History.txt Manifest.txt README.rdoc Rakefile lib/email_quality.rb lib/email_quality/address.rb lib/email_quality/blacklist.rb lib/email_quality/config.rb lib/email_quality/domain.rb lib/email_quality/validatability.rb script/console script/destroy script/generate test/test_email_quality.rb test/test_helper.rb]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/drmark/email_quality}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{This Ruby gem checks an email address for validity and identifies if it is from a Disposable Email Address (DEA) provider. Disposable email addresses are useful for privacy, but many sites wish to control access when using a DEA.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 1.15"])
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
    else
      s.add_dependency(%q<mime-types>, [">= 1.15"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 1.15"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
  end
end