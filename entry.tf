
/**
 * Resource: null_resource.run_shell_script
 * 
 * Description:
 * This resource represents a null resource that can be used to run shell scripts.
 * 
 * Usage:
 * This resource can be used to execute shell scripts as part of the Terraform provisioning process.
 * 
 * Example:
 * resource "null_resource" "run_shell_script" {
 *   # Configuration options for the null_resource
 * }
 */
resource "null_resource" "run_shell_script" {
  provisioner "local-exec" {
    command = "bash ./scripts/generate-variables.sh"
  }

  depends_on = [null_resource.run_shell_script]
}