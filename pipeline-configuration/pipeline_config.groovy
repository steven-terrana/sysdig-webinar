allow_scm_jenkinsfile = false 

libraries{
  sdp{
    images{
      registry = "https://docker.pkg.github.com"
      repository = "boozallen/sdp-images"
      cred = "github"
    }
  }
  pytest
  owasp_dep_check
  docker{
    registry = "docker.pkg.github.com"
    repo_path_prefix = "steven-terrana/dummy-vuln-app" 
    cred = "github" 
  }
  sysdig_secure{
    cred = "sysdig-secure-api"
  }
}
