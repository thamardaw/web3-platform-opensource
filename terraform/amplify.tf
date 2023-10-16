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

resource "aws_amplify_app" "kblab" {
  name       = "KblabProduction"
  repository = "https://github.com/saw1232582000/marketplace-boiler-plate.git"

  access_token = "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"

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
  iam_service_role_arn = "arn:aws:iam::593318543236:role/service-role/AmplifySSRLoggingRole-dz2zmness07yq"

  # The default rewrites and redirects added by the Amplify Console.
  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  environment_variables = {
    DATABASE_PROVIDER = "postgres"
    DATABASE_URL = "postgresql://postgres:kblab-user-staging@kblab-staging.clzyleulinnc.ap-southeast-1.rds.amazonaws.com:5432/kblab-staging"
    DISCORD_CLIENT_ID = ""
    DISCORD_CLIENT_SECRET = ""
    NEXTAUTH_SECRET = "s0rc5SDrguXaqD9EuseQ9Ebl+DC9eEKOmmg2T2qu+Ys"
    S3_UPLOAD_BUCKET = "kblab-kyc-staging"
    S3_UPLOAD_KEY = "AKIAYUJEKP6CCWM63J5L"
    S3_UPLOAD_REGION = "ap-southeast-1"
    S3_UPLOAD_SECRET = "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"
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