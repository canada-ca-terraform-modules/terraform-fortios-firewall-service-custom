variable "services" {
  description = "List of custom firewall services"

  type = map(object({
    protocol       = string
    tcp_portrange  = optional(string)
    udp_portrange  = optional(string)
    sctp_portrange = optional(string)
    icmptype       = optional(number)
    icmpcode       = optional(number)

    fqdn     = optional(string)
    comment  = optional(string)
    category = optional(string)

    tcp_halfclose_timer = optional(number, 0)
    tcp_halfopen_timer  = optional(number, 0)
    tcp_timewait_timer  = optional(number, 0)
    tcp_rst_timer       = optional(number)
    udp_idle_timer      = optional(number, 0)
    session_ttl         = optional(number)

    check_reset_range = optional(string, "default")
    color             = optional(number, 0)
    helper            = optional(string, "auto")
    iprange           = optional(string, "0.0.0.0")
    fabric_object     = optional(string, "disable")
    proxy             = optional(string, "disable")
    visibility        = optional(string, "enable")
  }))
}
