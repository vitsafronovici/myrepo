run "execute" {
  module {
    source = "./"
  }

  command = plan

  assert {
    condition     = module.m1.env == "dev2"
    error_message = "Environment output must equal 'dev'"
  }

}
