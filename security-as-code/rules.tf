resource "sysdig_secure_rule_process" "terminal_shell" {
  name        = "Terminal shell detected" // ID
  description = "A shell was used as the entrypoint/exec point"
  tags        = ["shell"]
  processes = ["ash", "bash", "csh", "ksh", "sh", "tcsh", "zsh", "dash"]
}