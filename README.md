# Repository created for learning Terraform OSS
This repository has been created only for learning purposes to run Terraform with the GitHub Provider

### Prerequisites

- [X] [Terraform](https://www.terraform.io/downloads)

## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/tf-github-provider.git
```

- Go to the directory where the repo is stored and make sure the `main.tf` file is there too:
```shell
cd tf-github-provider
```

- Run `terraform init`, to download any external dependency
```shell
terraform init
```

This is the output of initializing the Terraform code:
```shell
Initializing the backend...

Initializing provider plugins...
- Reusing previous version of integrations/github from the dependency lock file
- Using previously-installed integrations/github v4.20.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the changes with Terraform
```shell
terraform apply
```

This is the output for applying the changes:
```shell

var.repo_description
  Enter a value: <YOUR_DESCRIPTION>

var.repository
  Enter a value: <YOUR_REPOSITORY>

var.token
  Enter a value: <YOUR_TOKEN>


Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # github_repository.example will be created
  + resource "github_repository" "example" {
      + allow_auto_merge       = false
      + allow_merge_commit     = true
      + allow_rebase_merge     = true
      + allow_squash_merge     = true
      + archived               = false
      + branches               = (known after apply)
      + default_branch         = (known after apply)
      + delete_branch_on_merge = false
      + description            = "repository for learning TF Github provider"
      + etag                   = (known after apply)
      + full_name              = (known after apply)
      + git_clone_url          = (known after apply)
      + html_url               = (known after apply)
      + http_clone_url         = (known after apply)
      + id                     = (known after apply)
      + name                   = "github_repository"
      + node_id                = (known after apply)
      + private                = (known after apply)
      + repo_id                = (known after apply)
      + ssh_clone_url          = (known after apply)
      + svn_url                = (known after apply)
      + visibility             = "public"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

github_repository.example: Creating...
github_repository.example: Creation complete after 7s [id=github_repository]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

## Reference Documentation

- [Github provider](https://registry.terraform.io/providers/integrations/github/latest/docs)
