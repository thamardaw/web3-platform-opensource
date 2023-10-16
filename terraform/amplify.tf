terraform {
  required_version = ">= 1.3"
  required_providers {
    # aws = "~> 3.75.0"
    aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
    }
    # amplify = "~> 2.18.0"
    # amplify = {
    #  source  = "hashicorp/amplify"
    #  version = "~> 2.18.0"
    # }
  }
}

resource "aws_amplify_app" "" {
  name       = ""
  repository = ""

  access_token = ""

  # The default build_spec added by the Amplify Console for React.
  build_spec = <<-EOT
    version: 1
    frontend:
      phases:
        preBuild:
          commands:
            - npm ci
        build:
          commands:
            - echo "DATABASE_URL=$DATABASE_URL" >> .env
            - echo "DISCORD_CLIENT_ID=$DISCORD_CLIENT_ID" >> .env
            - echo "DISCORD_CLIENT_SECRET=$DISCORD_CLIENT_SECRET" >> .env
            - echo "NEXTAUTH_SECRET=$NEXTAUTH_SECRET" >> .env
            - echo "S3_UPLOAD_KEY=$S3_UPLOAD_KEY" >> .env
            - echo "S3_UPLOAD_SECRET=$S3_UPLOAD_SECRET" >> .env
            - echo "S3_UPLOAD_BUCKET=$S3_UPLOAD_BUCKET" >> .env
            - echo "S3_UPLOAD_REGION=$S3_UPLOAD_REGION" >> .env
            - echo "DATABASE_PROVIDER=$DATABASE_PROVIDER" >> .env
            - cat .env.example
            - npm run build
      artifacts:
        baseDirectory: .next
        files:
          - '**/*'
    cache:
      paths:
        - node_modules/**/*
  EOT

  platform = "WEB_COMPUTE"
  iam_service_role_arn = "arn"

  # The default rewrites and redirects added by the Amplify Console.
  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  environment_variables = {
    DATABASE_PROVIDER = "postgres"
    DATABASE_URL = ""
    DISCORD_CLIENT_ID = ""
    DISCORD_CLIENT_SECRET = ""
    NEXTAUTH_SECRET = ""
    S3_UPLOAD_BUCKET = ""
    S3_UPLOAD_KEY = ""
    S3_UPLOAD_REGION = ""
    S3_UPLOAD_SECRET = ""
  }
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.kblab.id
  branch_name = "main"

  framework = "Next.js - SSR"
  stage     = "PRODUCTION"

  # environment_variables = {

  # }
}
