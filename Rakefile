# -*- mode: ruby; -*-
#                                          Rakefile for PasteHub
# Release Engineering:
#   1. edit the VERSION.yml file
#   2. rake test  &&  rake gemspec  &&   gem build pastehub.gemspec  &&  gem build pastehub-server.gemspec
#      to generate pastehub-x.x.x.gem
#   3. install pastehub-x.x.x.gem to clean environment and test
#   4. rake release
#   5. gem push pkg/pastehub-x.x.x.gem   ( need gem version 1.3.6 or higer. Please "gem update --system" to update )
#
# Test environment:
#   1. gem install fake_dynamo --version 0.1.3
#   2. fake_dynamo --port 4567


require 'rake'
begin
  require 'jeweler2'
  ['pastehub','pastehub-server'].each do |name|
    Jeweler::Tasks.new do |gemspec|
      gemspec.name = name
      gemspec.summary = "PasteHub is cloud-based cross-platform clipboard sync."
      gemspec.description = "PasteHub is cloud-based cross-platform clipboard sync."
      gemspec.email = "kiyoka@sumibi.org"
      gemspec.homepage = "http://github.com/kiyoka/pastehub"
      gemspec.authors = ["Kiyoka Nishiyama"]
      gemspec.files = FileList['Rakefile',
                               '.gemtest',
                               'VERSION.yml',
                               'README.txt',
                               'bin/*',
                               'lib/*.rb',
                               'lib/*/*.rb',
                               'server/*.rb'
                              ].to_a
      gemspec.add_development_dependency "rspec"
      gemspec.add_development_dependency "rake"
      gemspec.add_dependency             "json"
      if 'pastehub-server' != name
        gemspec.add_dependency             "highline"
      end
      gemspec.add_dependency(            "clipboard", "1.0.5" )
      gemspec.add_dependency             "ffi"
    end
  end
rescue LoadError
  puts 'Jeweler2 not available. If you want to build a gemfile, please install with "sudo gem install jeweler2"'
end

task :default => [:test] do
end


task :test do
  sh "ruby    -I ./lib `which rspec` -b   ./test/libconfig_spec.rb      "
  sh "ruby    -I ./lib `which rspec` -b   ./test/libconfig2_spec.rb     "
  sh "/bin/rm -rf /tmp/home/user1"
  sh "ruby    -I ./lib `which rspec` -b   ./test/libclient_spec.rb      "
  sh "/bin/rm -rf /tmp/home/user1"
  sh "ruby    -I ./lib `which rspec` -b   ./test/libclientsync_spec.rb  "
  sh "ruby    -I ./lib `which rspec` -b   ./test/libsyncentry_spec.rb   "
#  sh "ruby    -I ./lib `which rspec` -b   ./test/libutil_spec.rb        "
end

task :win32_test do
  sh "rm -f /tmp/usertmp.db"
  sh "rspec -I ./lib  -b   ./test/libclipboard_spec.rb   "
  sh "rspec -I ./lib  -b   ./test/libstore_spec.rb       "
  sh "rspec -I ./lib  -b   ./test/libconfig_spec.rb      "
  sh "rspec -I ./lib  -b   ./test/libutil_spec.rb        "
  sh "rspec -I ./lib  -b   ./test/libcrypt_spec.rb       "
  sh "rspec -I ./lib  -b   ./test/libauth_spec.rb        "
#  sh "rspec -I ./lib  -b   ./test/libauth2_spec.rb       "
  sh "rspec -I ./lib  -b   ./test/libclient_spec.rb      "
  sh "rspec -I ./lib  -b   ./test/liblog_spec.rb         "
#  sh "rspec -I ./lib  -b   ./test/libmasterdb_spec.rb    "
#  sh "rspec -I ./lib  -b   ./test/libuserdb_spec.rb      "


end


task :sync do
  sh "ruby -I ./lib bin/PastehubSync"
end

task :macruby_sync do
  sh "macruby -I ./lib bin/PastehubSync"
end

task :syncA do
  sh SETENV_A + "; ruby -I ./lib bin/PastehubSync"
end

task :postA1 do
  sh "echo 'aaa1' | ruby -I ./lib bin/pastehubPost"
end

task :postA2 do
  sh "echo 'aaa2' | ruby -I ./lib bin/pastehubPost"
end

task :dumpA do
  open( "|" + SETENV_A + "; ruby -I ./lib bin/pastehubDump list" ) {|f|
    firstKey = f.readline.chomp
    sh SETENV_A + "; ruby -I ./lib bin/pastehubDump get '#{firstKey}'"
  }
  sh SETENV_A + "; ruby -I ./lib bin/pastehubDump top"
  sh SETENV_A + "; ruby -I ./lib bin/pastehubDump latest"
end
