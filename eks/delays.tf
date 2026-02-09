resource "time_sleep" "wait_for_lb_controller" {
  depends_on = [helm_release.aws_load_balancer_controller]
  create_duration = "60s"
}

resource "time_sleep" "wait_for_argocd" {
  depends_on = [helm_release.argocd]
  create_duration = "60s"
}