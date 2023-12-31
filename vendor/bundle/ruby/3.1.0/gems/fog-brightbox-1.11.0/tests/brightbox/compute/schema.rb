module Fog
  module Brightbox
    module Nullable
      module Account; end
      module ApiClient; end
      module FirewallPolicy; end
      module Image; end
      module Interface; end
      module LoadBalancer; end
      module Server; end
      module ServerGroup; end
      module User; end
      module Zone; end
    end
  end
end

Hash.send :include, Fog::Brightbox::Nullable::Account
NilClass.send :include, Fog::Brightbox::Nullable::Account

Hash.send :include, Fog::Brightbox::Nullable::ApiClient
NilClass.send :include, Fog::Brightbox::Nullable::ApiClient

Hash.send :include, Fog::Brightbox::Nullable::FirewallPolicy
NilClass.send :include, Fog::Brightbox::Nullable::FirewallPolicy

Hash.send :include, Fog::Brightbox::Nullable::Image
NilClass.send :include, Fog::Brightbox::Nullable::Image

Hash.send :include, Fog::Brightbox::Nullable::Interface
NilClass.send :include, Fog::Brightbox::Nullable::Interface

Hash.send :include, Fog::Brightbox::Nullable::LoadBalancer
NilClass.send :include, Fog::Brightbox::Nullable::LoadBalancer

Hash.send :include, Fog::Brightbox::Nullable::Server
NilClass.send :include, Fog::Brightbox::Nullable::Server

Hash.send :include, Fog::Brightbox::Nullable::ServerGroup
NilClass.send :include, Fog::Brightbox::Nullable::ServerGroup

Hash.send :include, Fog::Brightbox::Nullable::User
NilClass.send :include, Fog::Brightbox::Nullable::User

Hash.send :include, Fog::Brightbox::Nullable::Zone
NilClass.send :include, Fog::Brightbox::Nullable::Zone

class Brightbox
  class Compute
    module Formats
      module Struct
        CIP_PORT_TRANSLATOR = {
          "protocol" => String,
          "incoming" => Integer,
          "outgoing" => Integer
        }.freeze
        LB_LISTENER = {
          "in"              => Integer,
          "out"             => Integer,
          "protocol"        => String,
          "timeout"         => Integer
        }.freeze
        LB_HEALTHCHECK = {
          "type"            => String,
          "request"         => String,
          "port"            => Integer,
          "interval"        => Integer,
          "timeout"         => Integer,
          "threshold_up"    => Integer,
          "threshold_down"  => Integer
        }.freeze
      end

      module Nested
        ACCOUNT = {
          "name"            => String,
          "resource_type"   => String,
          "url"             => String,
          "id"              => String,
          "status"          => String
        }.freeze

        API_CLIENT = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "revoked_at"      => Fog::Nullable::String
        }.freeze

        CLOUD_IP = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "public_ip"       => String,
          "status"          => String,
          "reverse_dns"     => String
        }.freeze

        DATABASE_SERVER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "allow_access"    => Array,
          "database_version" => String,
          "status"          => String,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String
        }.freeze

        DATABASE_SNAPSHOT = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "database_version" => String,
          "size"            => Integer,
          "status"          => String,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT
        }.freeze

        DATABASE_SERVER_TYPE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "ram"             => Integer,
          "disk_size"       => Integer
        }.freeze

        FIREWALL_POLICY = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "default"         => Fog::Boolean,
          "created_at"      => String,
          "description"     => Fog::Nullable::String
        }.freeze

        FIREWALL_RULE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "created_at"      => String,
          "source"          => Fog::Nullable::String,
          "source_port"     => Fog::Nullable::String,
          "destination"     => Fog::Nullable::String,
          "destination_port" => Fog::Nullable::String,
          "protocol"        => Fog::Nullable::String,
          "icmp_type_name"  => Fog::Nullable::String,
          "description"     => Fog::Nullable::String
        }.freeze

        IMAGE = {
          "name"            => String,
          "created_at"      => String,
          "resource_type"   => String,
          "arch"            => String,
          "url"             => String,
          "id"              => String,
          "description"     => String,
          "source"          => String,
          "status"          => String,
          "public"          => Fog::Boolean,
          "official"        => Fog::Boolean,
          "owner"           => String,
          "username"        => Fog::Nullable::String
        }.freeze

        INTERFACE = {
          "resource_type"   => String,
          "url"             => String,
          "id"              => String,
          "ipv4_address"    => String,
          "ipv6_address"    => Fog::Nullable::String,
          "mac_address"     => String
        }.freeze

        LOAD_BALANCER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "status"          => String,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String
        }.freeze

        SERVER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "status"          => String,
          "hostname"        => String,
          "fqdn"            => String,
          "created_at"      => String,
          "started_at"      => Fog::Nullable::String,
          "deleted_at"      => Fog::Nullable::String,
          "username"        => Fog::Nullable::String
        }.freeze

        SERVER_GROUP = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "created_at"      => String,
          "default"         => Fog::Boolean,
          "description"     => Fog::Nullable::String
        }.freeze

        SERVER_TYPE = {
          "name"            => String,
          "handle"          => Fog::Nullable::String,
          "cores"           => Integer,
          "resource_type"   => String,
          "disk_size"       => Integer,
          "url"             => String,
          "id"              => String,
          "ram"             => Integer,
          "status"          => String
        }.freeze

        USER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "email_address"   => String
        }.freeze

        COLLABORATION = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "status"          => String,
          "email"           => Fog::Nullable::String,
          "role"            => String,
          "role_label"      => String,
          "user"            => Fog::Brightbox::Nullable::User,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "inviter"         => Brightbox::Compute::Formats::Nested::USER
        }.freeze

        VOLUME = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "status"          => String,
          "name"            => Fog::Nullable::String,
          "delete_with_server" => Fog::Boolean,
          "description"     => Fog::Nullable::String,
          "boot"            => Fog::Boolean,
          "encrypted"       => Fog::Boolean,
          "filesystem_label" => Fog::Nullable::String,
          "filesystem_type" => Fog::Nullable::String,
          "locked"          => Fog::Boolean,
          "serial"          => String,
          "size"            => Integer,
          "source"          => Fog::Nullable::String,
          "source_type"     => String,
          "storage_type"    => String,
          "created_at"      => String,
          "updated_at"      => String,
          "deleted_at"      => Fog::Nullable::String
        }.freeze

        ZONE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "handle"          => Fog::Nullable::String
        }.freeze
      end

      module Collected
        ACCOUNT = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "status"          => String,
          "vat_registration_number" => Fog::Nullable::String,
          "telephone_number" => Fog::Nullable::String,
          "telephone_verified" => Fog::Nullable::Boolean,
          "ram_limit"       => Integer,
          "ram_used"        => Integer,
          "cloud_ips_limit" => Integer,
          "cloud_ips_used"  => Integer,
          "load_balancers_limit" => Integer,
          "load_balancers_used" => Integer,
          "library_ftp_password" => Fog::Nullable::String,
          "verified_telephone" => Fog::Nullable::String,
          "verified_at"     => Fog::Nullable::String,
          "verified_ip"     => Fog::Nullable::String,
          "owner"           => Brightbox::Compute::Formats::Nested::USER,
          "users"           => [Brightbox::Compute::Formats::Nested::USER],
          "clients"         => [Brightbox::Compute::Formats::Nested::API_CLIENT],
          "servers"         => [Brightbox::Compute::Formats::Nested::SERVER],
          "load_balancers"  => [Brightbox::Compute::Formats::Nested::LOAD_BALANCER],
          "cloud_ips"       => [Brightbox::Compute::Formats::Nested::CLOUD_IP],
          "server_groups"   => [Brightbox::Compute::Formats::Nested::SERVER_GROUP],
          "firewall_policies" => [Brightbox::Compute::Formats::Nested::FIREWALL_POLICY],
          "images"          => [Brightbox::Compute::Formats::Nested::IMAGE],
          "zones"           => [Brightbox::Compute::Formats::Nested::ZONE]
        }.freeze

        API_CLIENT = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "revoked_at"      => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT
        }.freeze

        APPLICATION = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String
        }.freeze

        CLOUD_IP = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "public_ip"       => String,
          "status"          => String,
          "reverse_dns"     => String,
          "port_translators" => [Brightbox::Compute::Formats::Struct::CIP_PORT_TRANSLATOR],
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "interface"       => Fog::Brightbox::Nullable::Interface,
          "load_balancer"   => Fog::Brightbox::Nullable::LoadBalancer,
          "server"          => Fog::Brightbox::Nullable::Server,
          "server_group" => Fog::Brightbox::Nullable::ServerGroup
        }.freeze

        DATABASE_SERVER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "allow_access"    => Array,
          "database_version" => String,
          "status"          => String,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String
        }.freeze

        DATABASE_SNAPSHOT = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "database_version" => String,
          "size"            => Integer,
          "status"          => String,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT
        }.freeze

        DATABASE_SERVER_TYPE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "ram"             => Integer,
          "disk_size"       => Integer
        }.freeze

        FIREWALL_POLICY = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "description"     => Fog::Nullable::String,
          "default"         => Fog::Boolean,
          "created_at"      => String,
          "server_group"    => Fog::Brightbox::Nullable::ServerGroup,
          "rules"           => [Brightbox::Compute::Formats::Nested::FIREWALL_RULE]
        }.freeze

        IMAGE = {
          "name"            => String,
          "created_at"      => String,
          "resource_type"   => String,
          "arch"            => String,
          "url"             => String,
          "id"              => String,
          "description"     => String,
          "source"          => String,
          "source_type"     => String,
          "status"          => String,
          "owner"           => String,
          "username"        => Fog::Nullable::String,
          "public"          => Fog::Boolean,
          "official"        => Fog::Boolean,
          "compatibility_mode" => Fog::Boolean,
          "virtual_size"    => Integer,
          "disk_size"       => Integer,
          "min_ram"         => Fog::Nullable::Integer,
          "ancestor"        => Fog::Brightbox::Nullable::Image
        }.freeze

        LOAD_BALANCER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "status"          => String,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String,
          "cloud_ips"       => [Brightbox::Compute::Formats::Nested::CLOUD_IP],
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "listeners"       => [Brightbox::Compute::Formats::Struct::LB_LISTENER],
          "nodes"           => [Brightbox::Compute::Formats::Nested::SERVER]
        }.freeze

        SERVER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "status"          => String,
          "hostname"        => String,
          "fqdn"            => String,
          "created_at"      => String,
          "started_at"      => Fog::Nullable::String,
          "deleted_at"      => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "server_type"     => Brightbox::Compute::Formats::Nested::SERVER_TYPE,
          "cloud_ips"       => [Brightbox::Compute::Formats::Nested::CLOUD_IP],
          "image"           => Brightbox::Compute::Formats::Nested::IMAGE,
          "server_groups"   => [Brightbox::Compute::Formats::Nested::SERVER_GROUP],
          "snapshots"       => [Brightbox::Compute::Formats::Nested::IMAGE],
          "interfaces"      => [Brightbox::Compute::Formats::Nested::INTERFACE],
          "zone"            => Fog::Brightbox::Nullable::Zone,
          "username"        => Fog::Nullable::String,
          "compatibility_mode" => Fog::Boolean
        }.freeze

        SERVER_GROUP = {
          "created_at"      => String,
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "description"     => Fog::Nullable::String,
          "default"         => Fog::Boolean,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "servers"         => [Brightbox::Compute::Formats::Nested::SERVER],
          "firewall_policy" => Fog::Brightbox::Nullable::FirewallPolicy
        }.freeze

        SERVER_TYPE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "handle"          => Fog::Nullable::String,
          "name"            => String,
          "status"          => String,
          "cores"           => Integer,
          "ram"             => Integer,
          "disk_size"       => Integer
        }.freeze

        USER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "email_address"   => String,
          "email_verified"  => Fog::Boolean,
          "accounts"        => [Brightbox::Compute::Formats::Nested::ACCOUNT],
          "default_account" => NilClass
        }.freeze

        COLLABORATION = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "status"          => String,
          "role"            => String,
          "role_label"      => String,
          "email"           => Fog::Nullable::String,
          "user"            => Fog::Brightbox::Nullable::User,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "inviter"         => Brightbox::Compute::Formats::Nested::USER
        }.freeze

        VOLUME = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "status"          => String,
          "name"            => Fog::Nullable::String,
          "delete_with_server" => Fog::Boolean,
          "description"     => Fog::Nullable::String,
          "boot"            => Fog::Boolean,
          "encrypted"       => Fog::Boolean,
          "filesystem_label" => Fog::Nullable::String,
          "filesystem_type" => Fog::Nullable::String,
          "locked"          => Fog::Boolean,
          "serial"          => String,
          "size"            => Integer,
          "source"          => Fog::Nullable::String,
          "source_type"     => String,
          "storage_type"    => String,
          "created_at"      => String,
          "updated_at"      => String,
          "deleted_at"      => Fog::Nullable::String
        }.freeze

        ZONE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "handle"          => Fog::Nullable::String
        }.freeze
      end

      module Full
        ACCOUNT = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "status"          => String,
          "address_1"       => String,
          "address_2"       => String,
          "city"            => String,
          "county"          => String,
          "postcode"        => String,
          "country_code"    => String,
          "country_name"    => String,
          "vat_registration_number" => Fog::Nullable::String,
          "telephone_number" => String,
          "telephone_verified" => Fog::Boolean,
          "created_at"      => String,
          "ram_limit"       => Integer,
          "ram_used"        => Integer,
          "cloud_ips_limit" => Integer,
          "cloud_ips_used"  => Integer,
          "load_balancers_limit" => Integer,
          "load_balancers_used" => Integer,
          "library_ftp_host" => String,
          "library_ftp_user" => String,
          "library_ftp_password" => Fog::Nullable::String,
          "verified_telephone" => Fog::Nullable::String,
          "verified_at"     => Fog::Nullable::String,
          "verified_ip"     => Fog::Nullable::String,
          "valid_credit_card" => Fog::Boolean,
          "owner"           => Brightbox::Compute::Formats::Nested::USER,
          "users"           => [Brightbox::Compute::Formats::Nested::USER],
          "clients"         => [Brightbox::Compute::Formats::Nested::API_CLIENT],
          "servers"         => [Brightbox::Compute::Formats::Nested::SERVER],
          "load_balancers"  => [Brightbox::Compute::Formats::Nested::LOAD_BALANCER],
          "cloud_ips"       => [Brightbox::Compute::Formats::Nested::CLOUD_IP],
          "server_groups"   => [Brightbox::Compute::Formats::Nested::SERVER_GROUP],
          "firewall_policies" => [Brightbox::Compute::Formats::Nested::FIREWALL_POLICY],
          "images"          => [Brightbox::Compute::Formats::Nested::IMAGE],
          "zones"           => [Brightbox::Compute::Formats::Nested::ZONE]
        }.freeze

        API_CLIENT = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "revoked_at"      => Fog::Nullable::String,
          "secret"          => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT
        }.freeze

        APPLICATION = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "secret"          => Fog::Nullable::String
        }.freeze

        CLOUD_IP = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "public_ip"       => String,
          "status"          => String,
          "reverse_dns"     => String,
          "port_translators" => [Brightbox::Compute::Formats::Struct::CIP_PORT_TRANSLATOR],
          "account"         => Fog::Brightbox::Nullable::Account,
          "interface"       => Fog::Brightbox::Nullable::Interface,
          "load_balancer"   => Fog::Brightbox::Nullable::LoadBalancer,
          "server"          => Fog::Brightbox::Nullable::Server,
          "server_group"    => Fog::Brightbox::Nullable::ServerGroup
        }.freeze

        DATABASE_SERVER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "admin_username"  => Fog::Nullable::String,
          "admin_password"  => Fog::Nullable::String,
          "allow_access"    => Array,
          "database_version" => String,
          "status"          => String,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String
        }.freeze

        DATABASE_SNAPSHOT = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "database_version" => String,
          "size"            => Integer,
          "status"          => String,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT
        }.freeze

        DATABASE_SERVER_TYPE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => String,
          "ram"             => Integer,
          "disk_size"       => Integer
        }.freeze

        FIREWALL_POLICY = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => Fog::Nullable::String,
          "description"     => Fog::Nullable::String,
          "default"         => Fog::Boolean,
          "created_at"      => String,
          "server_group"    => Fog::Brightbox::Nullable::ServerGroup,
          "rules"           => [Brightbox::Compute::Formats::Nested::FIREWALL_RULE]
        }.freeze

        FIREWALL_RULE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "created_at"      => String,
          "source"          => Fog::Nullable::String,
          "source_port"     => Fog::Nullable::String,
          "destination"     => Fog::Nullable::String,
          "destination_port" => Fog::Nullable::String,
          "protocol"        => Fog::Nullable::String,
          "icmp_type_name"  => Fog::Nullable::String,
          "description"     => Fog::Nullable::String,
          "firewall_policy" => Brightbox::Compute::Formats::Nested::FIREWALL_POLICY
        }.freeze

        IMAGE = {
          "name"            => String,
          "created_at"      => String,
          "resource_type"   => String,
          "arch"            => String,
          "url"             => String,
          "id"              => String,
          "description"     => String,
          "source"          => String,
          "source_type"     => String,
          "status"          => String,
          "owner"           => String, # Account ID not object
          "username"        => Fog::Nullable::String,
          "public"          => Fog::Boolean,
          "official"        => Fog::Boolean,
          "compatibility_mode" => Fog::Boolean,
          "virtual_size"    => Integer,
          "disk_size"       => Integer,
          "min_ram"         => Fog::Nullable::Integer,
          "ancestor"        => Fog::Brightbox::Nullable::Image,
          "licence_name"    => Fog::Nullable::String
        }.freeze

        INTERFACE = {
          "resource_type"   => String,
          "url"             => String,
          "id"              => String,
          "ipv4_address"    => String,
          "ipv6_address"    => Fog::Nullable::String,
          "mac_address"     => String,
          "server"          => Brightbox::Compute::Formats::Nested::SERVER
        }.freeze

        LOAD_BALANCER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "status"          => String,
          "listeners"       => [Brightbox::Compute::Formats::Struct::LB_LISTENER],
          "policy"          => String,
          "healthcheck"     => Brightbox::Compute::Formats::Struct::LB_HEALTHCHECK,
          "certificate"     => Fog::Nullable::Hash,
          "created_at"      => String,
          "deleted_at"      => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "nodes"           => [Brightbox::Compute::Formats::Nested::SERVER],
          "cloud_ips"       => [Brightbox::Compute::Formats::Nested::CLOUD_IP]
        }.freeze

        SERVER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "status"          => String,
          "hostname"        => String,
          "fqdn"            => String,
          "created_at"      => String,
          "started_at"      => Fog::Nullable::String,
          "deleted_at"      => Fog::Nullable::String,
          "user_data"       => Fog::Nullable::String,
          "console_url"     => Fog::Nullable::String,
          "console_token"   => Fog::Nullable::String,
          "console_token_expires" => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "server_type"     => Brightbox::Compute::Formats::Nested::SERVER_TYPE,
          "cloud_ips"       => [Brightbox::Compute::Formats::Nested::CLOUD_IP],
          "image"           => Brightbox::Compute::Formats::Nested::IMAGE,
          "snapshots"       => [Brightbox::Compute::Formats::Nested::IMAGE],
          "server_groups"   => [Brightbox::Compute::Formats::Nested::SERVER_GROUP],
          "interfaces"      => [Brightbox::Compute::Formats::Nested::INTERFACE],
          "volumes"         => [Brightbox::Compute::Formats::Nested::VOLUME],
          "zone"            => Fog::Brightbox::Nullable::Zone,
          "licence_name"    => Fog::Nullable::String,
          "username"        => Fog::Nullable::String,
          "compatibility_mode" => Fog::Boolean
        }.freeze

        SERVER_GROUP = {
          "created_at"      => String,
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "description"     => Fog::Nullable::String,
          "default"         => Fog::Boolean,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "servers"         => [Brightbox::Compute::Formats::Nested::SERVER],
          "firewall_policy" => Fog::Brightbox::Nullable::FirewallPolicy
        }.freeze

        SERVER_TYPE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "handle"          => Fog::Nullable::String,
          "name"            => String,
          "status"          => String,
          "cores"           => Integer,
          "ram"             => Integer,
          "disk_size"       => Integer
        }.freeze

        USER = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "name"            => String,
          "email_address"   => String,
          "email_verified"  => Fog::Boolean,
          "accounts"        => [Brightbox::Compute::Formats::Nested::ACCOUNT],
          "default_account" => Fog::Brightbox::Nullable::Account,
          "ssh_key"         => Fog::Nullable::String,
          "messaging_pref"  => Fog::Boolean
        }.freeze

        COLLABORATION = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "status"          => String,
          "role"            => String,
          "role_label"      => String,
          "email"           => Fog::Nullable::String,
          "user"            => Fog::Brightbox::Nullable::User,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "inviter"         => Brightbox::Compute::Formats::Nested::USER
        }.freeze

        VOLUME = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "status"          => String,
          "name"            => Fog::Nullable::String,
          "delete_with_server" => Fog::Boolean,
          "description"     => Fog::Nullable::String,
          "boot"            => Fog::Boolean,
          "encrypted"       => Fog::Boolean,
          "filesystem_label" => Fog::Nullable::String,
          "filesystem_type" => Fog::Nullable::String,
          "locked"          => Fog::Boolean,
          "serial"          => String,
          "size"            => Integer,
          "source"          => Fog::Nullable::String,
          "source_type"     => String,
          "storage_type"    => String,
          "created_at"      => String,
          "updated_at"      => String,
          "deleted_at"      => Fog::Nullable::String,
          "account"         => Brightbox::Compute::Formats::Nested::ACCOUNT,
          "image"           => Fog::Brightbox::Nullable::Image,
          "server"          => Fog::Brightbox::Nullable::Server
        }.freeze

        ZONE = {
          "id"              => String,
          "resource_type"   => String,
          "url"             => String,
          "handle"          => String
        }.freeze
      end

      module Collection
        ACCOUNTS = [Brightbox::Compute::Formats::Collected::ACCOUNT].freeze
        API_CLIENTS = [Brightbox::Compute::Formats::Collected::API_CLIENT].freeze
        APPLICATION = [Brightbox::Compute::Formats::Collected::APPLICATION].freeze
        CLOUD_IPS = [Brightbox::Compute::Formats::Collected::CLOUD_IP].freeze
        COLLABORATIONS = [Brightbox::Compute::Formats::Collected::COLLABORATION].freeze
        DATABASE_SERVERS = [Brightbox::Compute::Formats::Collected::DATABASE_SERVER].freeze
        DATABASE_SERVER_TYPES = [Brightbox::Compute::Formats::Collected::DATABASE_SERVER_TYPE].freeze
        DATABASE_SNAPSHOTS = [Brightbox::Compute::Formats::Collected::DATABASE_SNAPSHOT].freeze
        FIREWALL_POLICIES = [Brightbox::Compute::Formats::Collected::FIREWALL_POLICY].freeze
        IMAGES = [Brightbox::Compute::Formats::Collected::IMAGE].freeze
        LOAD_BALANCERS = [Brightbox::Compute::Formats::Collected::LOAD_BALANCER].freeze
        SERVERS = [Brightbox::Compute::Formats::Collected::SERVER].freeze
        SERVER_GROUPS = [Brightbox::Compute::Formats::Collected::SERVER_GROUP].freeze
        SERVER_TYPES = [Brightbox::Compute::Formats::Collected::SERVER_TYPE].freeze
        USERS = [Brightbox::Compute::Formats::Collected::USER].freeze
        VOLUMES = [Brightbox::Compute::Formats::Collected::VOLUME].freeze
        ZONES = [Brightbox::Compute::Formats::Collected::ZONE].freeze
      end
    end
  end
end
