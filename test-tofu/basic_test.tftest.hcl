run "execute" {
  module {
    source = "./"
  }

  command = plan

  assert {
    condition     = module.m1.env == "dev"
    error_message = "Environment output must equal 'dev'"
  }

}
