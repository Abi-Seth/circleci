# Version 0.2.1 - (2016-02-21)

* CircleCi::Project#envvar – Get environment variables for a project
* CircleCi::Project#set_envvar – Set environment variable for a project

# Version 0.2.0 - (2015-12-06)

* CircleCi::User#heroku_key – Add your Heroku API key to your account
* CircleCi::Project#ssh_key – Add an SSH key to a project
* CircleCi::Project#build_ssh_key – Add an SSH key to a project build
* CircleCi::Project#new_checkout_key – Add a checkout key to a project
* CircleCi::Project#list_checkout_keys – Get all checkout keys for a project
* CircleCi::Project#get_checkout_key – Get a project checkout key
* CircleCi::Project#delete_checkout_key – Delete a project checkout key

# Version 0.1.1 - (2015-3-29)

* Cancel a build merged in [#15](https://github.com/mtchavez/circleci/pull/15) from [@etiennebarrie](https://github.com/etiennebarrie)
* Tests endpoint for a build. Will return all tests ran with metadata.
  * Currently experimental tests endpoint needs to be turned on in Experimental Settings

# Version 0.1.0 - (2014-11-4)

* Loosen `rest-client` dependency to `~> 1.6`

# Version 0.0.9 - (2014-11-4)

* Deprecate `CircleCi::Response#parsed_body` to not use `hashie` gem

# Version 0.0.8 - (2014-11-4)

* Support [parameterized builds](https://circleci.com/docs/parameterized-builds)
  * Thanks to [@dlitvakb](https://github.com/dlitvakb) merged in [#15](https://github.com/mtchavez/circleci/pull/15)

# Version 0.0.7 - (2014-8-1)

* Add method to build specific branch of project - Thanks to [@hwartig](https://github.com/hwartig)

  * CircleCi::Project#build_branch - Triggers build for specific branch of project

# Version 0.0.6 - (2014-6-8)

* New hidden endpoints added to API - Thanks to [@EiNSTeiN-](https://github.com/EiNSTeiN-)

  * CircleCi::Project#build - Build the latest master push for this project
  * CircleCi::Project#enable - Enable a project in CircleCI
  * CircleCi::Project#follow - Follow a project in CircleCI
  * CircleCi::Project#unfollow - Unfollow a project in CircleCI
  * CircleCi::Project#settings - Get project configuration

# Version 0.0.3 - (2014-1-29)

* [Build artifacts](https://github.com/mtchavez/circleci/pull/3) added

# Version 0.0.2 - (2014-1-21)

* [Branch builds endpoint](https://github.com/mtchavez/circleci/pull/1)
* Ruby 2.0.0 in Gemfile
* More documentation

# Version 0.0.1 - (2013-4-16)

* Add basic endpoints
