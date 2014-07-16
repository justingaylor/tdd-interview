tdd-interview
=============

An exercise in Test-Driven Development (TDD) using Rspec 3.0.

## Setup

*Note: Need Ruby 1.9 or higher.*

```
git clone git@github.com:justingaylor/tdd-interview.git
cd tdd-interview
gem install bundler # if necessary
bundle install
```

## Exercise

**STEP 0**: Run Guard in a separate terminal

```
bundle exec guard
```

**STEP 1**: In original terminal, look for remaining TODO notes

```
bundle exec rake notes:todo
```

**STEP 2**: If no TODOs then DONE, else uncomment spec block for next TODO

**STEP 3**: Write code in lib/cool_tool.rb until specs are green

**STEP 4**: Loop to **STEP 1**

## Bonus 1

Convert `DEFAULT_FILEPATH` to an attr_accessor called `default_filepath` using TDD.

## Bonus 2

Raise an exception when `filepath` param to `RightScale::CoolTool.new` is not a String using TDD.

