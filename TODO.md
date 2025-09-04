# Deployment Fix TODO

- [x] Analyze the GitHub Actions deployment error "sudo: docker: command not found"
- [x] Read relevant files: .github/workflows/main.yml, docker-compose.production.yml, backend/Dockerfile, backend/entrypoint.sh
- [x] Identify issues: Docker not started, user not in docker group, redundant commands, missing docker compose plugin
- [x] Update .github/workflows/main.yml deploy script:
  - Add sudo systemctl start docker and sudo systemctl enable docker
  - Add sudo usermod -aG docker ${{ secrets.USER }}
  - Add newgrp docker to apply group change
  - Install docker-compose-plugin for "docker compose" support
  - Change to "docker compose" commands without sudo
  - Remove redundant exec commands for migrate and collectstatic (handled by entrypoint.sh)
- [x] Push the changes to the repository and test the deployment
- [ ] Verify that the deployment succeeds without errors
