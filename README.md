# Set up of GitLab

## Content

This compose contains GitLab CE and GitLab Runner and run using my [Traefik Configuration](https://github.com/MaBre01/docker-toolkit). 
GitLab Registry is also set up, so we can push Docker image on this GitLab Server.

GitLab Runner is installed on the same server with GitLab but it is not recommanded to do this.

## How to install it

### Production environment

Create a *.env* with 2 variables : 
- gitlab_url
- gitlab_registry_url

You should use this docker-compose command to set up this configuration in prod env :

> docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d

### Local environment

You should use this docker-compose command to set up this configuration in local env :

> docker-compose up -d

### Configuration

When GitLab is **healthy**, you can go on, to get the token for GitLab Runner.
Go to the runners page : 

> Admin area / Overview / Runners

Copy the token and launch this command : 

> docker-compose run --rm --entrypoint autoregister runner *your-gitlab-token*

This will link your GitLab and your GitLab Runner

## URL

### Prodution environment

You can found your GitLab on your GitLab URL. 

### Local environment

You can found your GitLab on [gitlab.local](https://gitlab.local).