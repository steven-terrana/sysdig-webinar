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
}
