#Spring.watch(
#  ".ruby-version",
#  ".rbenv-vars",
#  "tmp/restart.txt",
#  "tmp/caching-dev.txt"
#)
%w(
  .ruby-version
  .rbenv-vars
  tmp/restart.txt
  tmp/caching-dev.txt
).each { |path| Spring.watch(path) }
