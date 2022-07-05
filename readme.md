# Full Cycle - Kubernetes

### Docker
1. Gerando imagem
   ```
   docker build -t jailtonjunior/hello-go .
   ```

2. Rodando imagem
   ```
   docker run --rm -p 80:80 jailtonjunior/hello-go
   ```

3. Subindo imagem
    ```
    docker push jailtonjunior/hello-go
    ```

### Kubernetes
1. Rollout
   ```
   kubectl rollout history deployment [nome do deployment]
   ```
2. Rollout undo
   ```
   kubeclt rollout undo deployment [nome do deployment] --to-revision=[numero da revisão]
   ```