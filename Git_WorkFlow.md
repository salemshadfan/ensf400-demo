1. Repository Setup
The project is hosted on GitHub under the repository: ensf400-demo
The repository link: https://github.com/salemshadfan/ensf400-demo.git
Team members added as collaborators:
  Salem Shadfan (salemshadfan)
  Nader Naboulsi (NaderNab)

2. Git Workflow Process
  Branching Strategy
  We follow the feature branching workflow to ensure code quality and proper collaboration. The branches used are:
  
  master - The stable production branch.
  feature/[feature-name] - For adding new features.
  workflow - to document team collaboration, pull requests, and code reviews.

## commit guidelines 
  We use meaningful commit messages to make sure every step is well documented and easily tracked.

## Pull Requests
  Opening a PR:
Once a feature is complete, a pull request is opened from feature/[feature-name] to dev.
PR title should follow this format: [Feature/Fix] Short Description
Add a detailed description of the changes made.
Assign at least one reviewer from the team.

## Code Review 
  Reviewers provide feedback in the PR comments.
  Changes are addressed before merging.
  After approval, the PR is merged into dev.

## Merging Strategy
  feature/* → dev (via PR, after code review)
  dev → master (only after extensive testing)
  Merges should be done using squash and merge to keep history clean.

