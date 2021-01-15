# RubyDice
This is a simple exercise demonstrating some patterns found in Ruby code bases.

## Getting Started

```bash
bundle install
```

## Usage

The following generates a pseudo-random integer from the dice API in this project. The user specifies the number of sides for the dice:

```bash
ruby ./cli.rb
```

### Using the Thor CLI

```bash
ruby ./cli_thor.rb roll 6
```

**The following may also be used:**

```bash
bundle exec thor dice_commands:roll 6
```