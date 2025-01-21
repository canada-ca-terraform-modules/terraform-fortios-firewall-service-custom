resource "fortios_firewallservice_custom" "this" {
  for_each = var.services

  name = each.key

  protocol       = each.value.protocol
  tcp_portrange  = each.value.protocol == "TCP" ? each.value.tcp_portrange : null
  udp_portrange  = each.value.protocol == "UDP" ? each.value.udp_portrange : null
  sctp_portrange = each.value.protocol == "SCTP" ? each.value.udp_portrange : null
  icmptype       = each.value.protocol == "ICMP" ? each.value.icmptype : null
  icmpcode       = each.value.protocol == "ICMP" ? each.value.icmpcode : null

  fqdn       = each.value.fqdn != null ? each.value.fqdn : null
  proxy      = each.value.proxy != null ? each.value.proxy : null
  visibility = each.value.visibility != null ? each.value.visibility : null

  tcp_halfclose_timer = each.value.tcp_halfclose_timer
  tcp_halfopen_timer  = each.value.tcp_halfopen_timer
  tcp_timewait_timer  = each.value.tcp_timewait_timer
  tcp_rst_timer       = each.value.tcp_rst_timer != null ? each.value.tcp_rst_timer : null
  udp_idle_timer      = each.value.udp_idle_timer
  session_ttl         = each.value.session_ttl != null ? each.value.tcp_rst_timer : null

  comment           = each.value.comment
  category          = each.value.category
  check_reset_range = each.value.check_reset_range
  color             = each.value.color
  helper            = each.value.helper
  iprange           = each.value.iprange
  fabric_object     = each.value.fabric_object
}
