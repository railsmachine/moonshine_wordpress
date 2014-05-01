# Moonshine_Wordpress

### A plugin for [Moonshine](http://github.com/railsmachine/moonshine)

A plugin for installing and managing [WordPress](http://wordpress.org).

Installs everything you need to get a WordPress blog up and running. See below 
for minimum configuration instructions, look through <tt>templates/</tt> to see 
all of the available options.

To generate values for the secret keys below, click [here](https://api.wordpress.org/secret-key/1.1/).

### Instructions

* <tt>script/plugin install git://github.com/railsmachine/moonshine_wordpress.git</tt>

* Configure settings as needed. At the very least for a secure wordpress install, you should set these settings in <tt>config/moonshine.yml</tt> or <tt>config/moonshine/{rails_env}.yml</tt>:
<pre><code>
    :wordpress:
      :domain: blog.yourdomain.com
      :auth_key: SOME_UNIQUE_VALUE
      :secure_auth_key: SOME_UNIQUE_VALUE
      :logged_in_key: SOME_UNIQUE_VALUE
      :nonce_key: SOME_UNIQUE_VALUE
      :db:
        :password: sekrit_db_password
        :cache: true
</code></pre>
* Include the plugin and recipe(s) in your Moonshine manifest
  <tt>recipe :wordpress</tt>

* After deploying, go to http://blog.yourdomain.com/wp-admin/install.php

***
Unless otherwise specified, all content copyright &copy; 2014, [Rails Machine, LLC](http://railsmachine.com)
