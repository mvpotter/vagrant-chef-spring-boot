name "vagrant-chef"

override_attributes(

    "java" => {
        "install_flavor" => 'oracle',
        "jdk_version"    => '8',
        "oracle" => {
          "accept_oracle_download_terms" => true
        }
    },

    "maven" => {
      "version"       => 3,
        "inatsall_java" => false
    },

    "postgresql" => {
      "password" => {
        "postgres" => "postgres"
      }
    },

    "nginx" => {
      "default_site_enabled" => false
    }
    
)

run_list(
    "recipe[java_app]"
)