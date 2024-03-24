resource "null_resource" "run_shell_script" {
  # You can specify triggers here if necessary.

  provisioner "local-exec" {
    command = "bash ./scripts/generate-variables.sh"
  }

  # Ensure this resource runs first
  depends_on = [null_resource.run_shell_script]
}