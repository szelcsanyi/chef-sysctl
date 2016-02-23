#
# Cookbook Name:: L7-sysctl
# Recipe:: ipv6_no_autoconfig
#
# Copyright 2015, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

L7_sysctl 'net.ipv6.conf.default.autoconf' do
  comment 'ipv6 no autoconfig'
  value 0
end

L7_sysctl 'net.ipv6.conf.default.accept_dad' do
  value 0
end

L7_sysctl 'net.ipv6.conf.default.accept_ra' do
  value 0
end

L7_sysctl 'net.ipv6.conf.default.accept_ra_defrtr' do
  value 0
end

L7_sysctl 'net.ipv6.conf.default.accept_ra_rtr_pref' do
  value 0
end

L7_sysctl 'net.ipv6.conf.default.accept_ra_pinfo' do
  value 0
end

L7_sysctl 'net.ipv6.conf.default.accept_source_route' do
  value 0
end

L7_sysctl 'net.ipv6.conf.default.accept_redirects' do
  value 0
end

L7_sysctl 'net.ipv6.conf.all.autoconf' do
  value 0
end

L7_sysctl 'net.ipv6.conf.all.accept_dad' do
  value 0
end

L7_sysctl 'net.ipv6.conf.all.accept_ra' do
  value 0
end

L7_sysctl 'net.ipv6.conf.all.accept_ra_defrtr' do
  value 0
end

L7_sysctl 'net.ipv6.conf.all.accept_ra_rtr_pref' do
  value 0
end

L7_sysctl 'net.ipv6.conf.all.accept_ra_pinfo' do
  value 0
end

L7_sysctl 'net.ipv6.conf.all.accept_source_route' do
  value 0
end

L7_sysctl 'net.ipv6.conf.all.accept_redirects' do
  value 0
end
