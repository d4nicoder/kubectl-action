# Kubectl action

This action is for use kubectl in other actions

## Environment

### `KUBECONFIG`

**Mandatory**: The kubernetes config file in base64

## Outputs

None

## Example

uses: actions/kubectl-action
env:
  KUBECONFIG: ${{ secrets.KUBECONFIG }}