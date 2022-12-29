# kubectl-cli action

## Usage

 TO make use of this action add the following steps to your GitHub Action workflow:

 ```yaml
      - uses: teknatha136/actions-kubectl@main
        with:
          kubectl-version: v1.24.3
          kube-config: ${{ secrets.BASE64_ENCODED_KUBECONFIG_SECRET }}
 ```

 This actions expects an optional `kubectl-version` input. This is the actual kubectl version that you want to use. You can find more about kubectl versions at <https://v1-22.docs.kubernetes.io/docs/tasks/tools/install-kubectl-linux/>. By default the actions takes latest stable (<https://dl.k8s.io/release/stable.txt>) available version.

Action also expects required `kube-config` input. This is the `base64` encoded kubeconfig file. This is usually available at `~/.kube/config`.

Once above step is included in you GitHub Action workflow, kubectl will be downloaded and stored `./bin` directory and kubeconfig file will be decoded and stored at `./.kubec` directory

To execute the kubectl command refer below example

```yaml
      - uses: teknatha136/actions-kubectl@main
        with:
          kubectl-version: v1.24.3
          kube-config: ${{ secrets.BASE64_ENCODED_KUBECONFIG_SECRET }}

      - run: ./bin/kubectl --kubeconfig=.kube/config get nodes
```
