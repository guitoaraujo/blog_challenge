%w[
  .ruby-version
  .rbenv-vars
  tmp/restart.txt
  tmp/caching-dev.txt
  operations/posts
].each { |path| Spring.watch(path) }
