resource "sysdig_secure_policy" "terminal_shell_or_ssh_in_container" {
  name        = "Terminal shell or SSH detected in container"
  description = "Detects a terminal shell or a ssh spawned in a container"
  enabled     = true
  severity    = 0 // HIGH
  scope       = "kubernetes.cluster.name = 'BAH_CLUSTER' and kubernetes.namespace.name = 'demo'"
  rule_names  = [sysdig_secure_rule_process.terminal_shell.name]
  actions {
    container = "notify"
    capture {
      seconds_before_event = 5
      seconds_after_event  = 10
    }
  }
}
