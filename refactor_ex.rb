module Jboss
  # Defaults
  DEFAULT_AIS   = 'beaker'
  DEFAULT_LAYER = 'jboss'
  USER_FILE   = "/etc/passwd"
  GROUP_FILE  = "/etc/group"
  SUDOERS_DIR = '/etc/sudoers.d'
  DEFAULT_NEXUS_URL          = 'https://prod-cicm.uspto.gov/nexus'
  DEFAULT_SCM_URL            = 'https://prod-cicm.uspto.gov/scm'
  DEFAULT_JBOSS_ROOT_LOG_DIR = '/var/log/jbossas'
  DEFAULT_JBOSS_LOG_DIR      = "#{DEFAULT_JBOSS_ROOT_LOG_DIR}/standalone"
  DEFAULT_JBOSS_DUMPS_DIR    = "#{DEFAULT_JBOSS_LOG_DIR}/dumps"
  DEFAULT_CONSOLE_LOG_FILE   = "#{DEFAULT_JBOSS_LOG_DIR}/console.log"
  DEFAULT_HEAP_FILE          = "#{DEFAULT_JBOSS_DUMPS_DIR}/heap_file"
  DEFAULT_NO_HEAP_FILE       = "#{DEFAULT_JBOSS_DUMPS_DIR}/no_heap_file"
  DEFAULT_LOG_RETENTION_DAYS           = 7
  DEFAULT_LOG_ZIP_RETENTION_DAYS       = 30
  DEFAULT_LOG_ZIP_CONFIG_FILE_NAME     = '/usr/share/psb_utils/logzip.conf'
  DEFAULT_LOG_CLEANUP_CONFIG_FILE_NAME = '/usr/share/psb_utils/logcleanup.conf'
  DEFAULT_CLI_AUDIT_FILE               = '/var/log/jbossas/standalone/audit/cli_audit.log'
  DEFAULT_SERVER_AUDIT_FILE            = '/var/log/jbossas/standalone/audit/server_audit.log'
  DEFAULT_SERVICE_AUDIT_FILE           = '/var/log/jbossas/standalone/audit/service_audit.log'
  DEFAULT_SECURITY_LIMIT_CONFIG_FILE   = "/etc/security/limits.d/95-jboss.conf"
  DEFAULT_STANDALONE_CONF_FILE         = '/usr/share/jbossas/bin/standalone.conf'
  DEFAULT_JBOSS_USER  = "jboss"
  DEFAULT_JBOSS_GROUP = "psb_puppet"
  DEFAULT_JBOSS_UID   = "4051"
  DEFAULT_JBOSS_GID   = "4042"
  DEFAULT_JBOSS_HOME  = "/opt/jboss"
  DEFAULT_JBOSS_SUDOERS_FILE      = "#{SUDOERS_DIR}/4042_jboss"
  DEFAULT_JBOSS_SERVICE_SCRIPT    = 'jbossas-uspto'
  DEFAULT_JBOSS_PROXY_PORT        = 7280
  DEFAULT_ENVIRONMENT_DESTINATION = '/opt/jboss/envconfig'
  DEFAULT_SOLR_DATA_DIR           = '/usr/share/beaker/solr_data'
  DEFAULT_LATEST_JBOSS_VERSION    = 'EAP 6.4.7.GA'
  DEFAULT_LATEST_JBOSS_CHANNEL    = 'jbappplatform-647-2016-04-05-x86_64-server-6-rpm'
  DEFAULT_SNMP_DESTINATION        = 'dev-ems-1.etc.uspto.gov'



  # @return [String] the minimal valid parameters for the jboss::params class
  def jboss_minimal_params()
    """
      https_enable                   => false,
      http_enable                    => true,
      nss_password                   => 'foo',
      foreman_api_user_pw            => 'foo',
      cluster_enable                 => false,
      modcluster_override_proxy_list => [],
      snmp_trap_destination          => '#{DEFAULT_SNMP_DESTINATION}',
    """
  end

    # @param  [String] jboss_additional_params ('') any additional parameters to add to the jboss::params class
    #
    # @return [String] default minimal jboss manifest
  def get_jboss_default_manifest(jboss_additional_params = '', ais = DEFAULT_AIS, layer = DEFAULT_LAYER)
    """
    $ais       = '#{ais}'
    $ais_layer = '#{layer}'
    #{require_openssl_false}
    class { 'jboss::params':
    #{jboss_minimal_params()}
    #{jboss_additional_params}
    }
    include jboss
    """
  end
end
