#
# Cookbook Name:: sysctl
# Recipe:: tune_tcp_stack
#
# Copyright 2014, Gabor Szelcsanyi <szelcsanyi.gabor@gmail.com>

sysctl_parameter 'net.ipv4.tcp_mem' do
  comment 'Tune tcp stack'
  value '8388608  12582912  167772160'
  immediately true
end

sysctl_parameter 'net.ipv4.udp_mem' do
  value '8388608  12582912  167772160'
  immediately true
end

sysctl_parameter 'net.ipv4.ip_local_port_range' do
  value '1024 65535'
  immediately true
end

# Increase the maximum read-buffer space allocatable
sysctl_parameter 'net.ipv4.tcp_rmem' do
  value '8192 87380 167772160'
  immediately true
end

sysctl_parameter 'net.ipv4.udp_rmem_min' do
  value '16384'
  immediately true
end

# Increase the maximum write-buffer-space allocatable
sysctl_parameter 'net.ipv4.tcp_wmem' do
  value '8192 65536 167772160'
  immediately true
end

sysctl_parameter 'net.ipv4.udp_wmem_min' do
  value '16384'
  immediately true
end

# Increase the maximum and default receive socket buffer size
sysctl_parameter 'net.core.rmem_max' do
  value '167772160'
  immediately true
end

sysctl_parameter 'net.core.rmem_default' do
  value '262143'
  immediately true
end

# Increase the maximum and default send socket buffer size
sysctl_parameter 'net.core.wmem_max' do
  value '167772160'
  immediately true
end

sysctl_parameter 'net.core.wmem_default' do
  value '262143'
  immediately true
end

# Increase the maximum amount of option memory buffers
sysctl_parameter 'net.core.optmem_max' do
  value '2048000'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_frto' do
  value '0'
  immediately true
end

# Turn on SACK
sysctl_parameter 'net.ipv4.tcp_dsack' do
  value '1'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_sack' do
  value '1'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_fack' do
  value '1'
  immediately true
end

# Increase the tcp-time-wait buckets pool size
sysctl_parameter 'net.ipv4.tcp_max_tw_buckets' do
  value '1440000'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_tw_recycle' do
  value '0'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_tw_reuse' do
  value '1'
  immediately true
end

# Increase the maximum memory used to reassemble IP fragments
sysctl_parameter 'net.ipv4.ipfrag_high_thresh' do
  value '512000'
  immediately true
end

sysctl_parameter 'net.ipv4.ipfrag_low_thresh' do
  value '446464'
  immediately true
end

# Increase number of incoming connections
sysctl_parameter 'net.core.somaxconn' do
  value '65535'
  immediately true
end

sysctl_parameter 'net.core.netdev_max_backlog' do
  value '262144'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_syncookies' do
  value '1'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_max_orphans' do
  value '262144'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_max_syn_backlog' do
  value '262144'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_synack_retries' do
  value '2'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_syn_retries' do
  value '3'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_fin_timeout' do
  value '5'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_no_metrics_save' do
  value '1'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_moderate_rcvbuf' do
  value '1'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_timestamps' do
  value '1'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_ecn' do
  value '0'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_rfc1337' do
  value '1'
  immediately true
end

sysctl_parameter 'net.ipv4.ip_no_pmtu_disc' do
  value '0'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_retries2' do
  value '5'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_keepalive_time' do
  value '120'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_keepalive_intvl' do
  value '30'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_keepalive_probes' do
  value '3'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_slow_start_after_idle' do
  value '0'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_window_scaling' do
  value '1'
  immediately true
end

sysctl_parameter 'net.ipv4.tcp_low_latency' do
  value '1'
  immediately true
end
