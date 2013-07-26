class { "solr":
        source_url => "http://archive.apache.org/dist/lucene/solr/3.6.2/apache-solr-3.6.2.tgz",
        home_dir => "/usr/share/solr",
        package => "apache-solr-3.6.2",
        solr_data_dir => "/var/lib/solr/data",
        cores => ["cor", "ug_data"],
        tomcat_connector_port => "8983",
    }

  #Copy the respective schema.xml file
  file { "/usr/share/solr/ug_data/conf/schema.xml":
    ensure => present,
    source  => "/vagrant/ug_data/schema.xml",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  #Copy the respective solrconfig.xml file
  file { "/usr/share/solr/ug_data/conf/solrconfig.xml":
    ensure => present,
    source  => "/vagrant/ug_data/solrconfig.xml",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/ug_data/conf/stopwords.txt":
    ensure => present,
    source  => "/vagrant/ug_data/stopwords.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/ug_data/conf/synonyms.txt":
    ensure => present,
    source  => "/vagrant/ug_data/synonyms.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/ug_data/conf/mapping-ISOLatin1Accent.txt":
    ensure => present,
    source  => "/vagrant/ug_data/mapping-ISOLatin1Accent.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/ug_data/conf/protwords.txt":
    ensure => present,
    source  => "/vagrant/ug_data/protwords.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/ug_data/conf/elevate.xml":
    ensure => present,
    source  => "/vagrant/ug_data/elevate.xml",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

#COR

  #Copy the respective schema.xml file
  file { "/usr/share/solr/cor/conf/schema.xml":
    ensure => present,
    source  => "/vagrant/cor/schema.xml",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  #Copy the respective solrconfig.xml file
  file { "/usr/share/solr/cor/conf/solrconfig.xml":
    ensure => present,
    source  => "/vagrant/cor/solrconfig.xml",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/cor/conf/stopwords.txt":
    ensure => present,
    source  => "/vagrant/cor/stopwords.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/cor/conf/synonyms.txt":
    ensure => present,
    source  => "/vagrant/cor/synonyms.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/cor/conf/spellings.txt":
    ensure => present,
    source  => "/vagrant/cor/spellings.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

    file { "/usr/share/solr/cor/conf/mapping-ISOLatin1Accent.txt":
    ensure => present,
    source  => "/vagrant/ug_data/mapping-ISOLatin1Accent.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

  file { "/usr/share/solr/cor/conf/protwords.txt":
    ensure => present,
    source  => "/vagrant/ug_data/protwords.txt",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

   file { "/usr/share/solr/cor/conf/elevate.xml":
    ensure => present,
    source  => "/vagrant/ug_data/elevate.xml",
    group   => "tomcat6",
    owner   => "tomcat6",
    notify  => Service["tomcat6"],
  }

