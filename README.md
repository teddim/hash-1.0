# HELP!

A friend of yours is getting married, but the site they used to track their wedding plans went out of business.

The failed startup was kind enough to send them a data dump, but it's in a crazy nested hash in a ruby file.

They've asked you to help them decipher the data, and answer some questions.

## Instructions

1. Clone this repo (no need to fork).
1. Look at the data in `people.rb`
1. Check out `00_example.rb` for an example of what to do (basically, just `puts` things out
1. Go through each file and complete the exercise
1. Rejoice!

# Setup

* Fork
* Clone
* Turn on TravisCI for the fork by
  visiting https://travis-ci.org/profile/<github user name>, clicking the "Sync now" button
  and scrolling down to find the repository to build.
* Create a new branch for your work using `git checkout -b v1`
* Implement specs and code
* Push using `git push -u origin v1`

## Further Practice

This warmup can be completed multiple times to increase your comfort level with the material.
To work on this from scratch, you can:

1. Add an upstream remote that points to the original repo `git remote add upstream git@github.com:gSchool/hash-1.0.git`
1. Fetch the latest from the upstream remote using `git fetch upstream`
1. Create a new branch from the master branch of the upstream remote `git checkout -b v2 upstream/master`
1. Implement specs and code
1. Push using `git push -u origin v2`

Each time you do the exercise, create a new branch. For example the 3rd time you do the exercise the branch
name will be v3 instead of v2.
