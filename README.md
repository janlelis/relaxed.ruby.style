# [Relaxed.Ruby.Style](http://relaxed.ruby.style)

A more liberal style guide for [RuboCop](https://github.com/bbatsov/rubocop). It comes with a [config file](http://relaxed.ruby.style/rubocop.yml) that deactivates some or RuboCop's features. It is meant as a less restrictive foundation that you can use directly or base your style discussions on.

### Motivation

RuboCop is an amazing tool, still some of its default rules feel overly strict. This might distract you from the helpful messages.

**Warning:** Does include opinionated style advice.

### How to Read this Style Guide

This is not a stand-alone style guide, but a patch applied to [bbatsov/ruby-style-guide](https://github.com/bbatsov/ruby-style-guide) (the style guide RuboCop is based on).

### Usage

Use, copy or inherit from [`rubocop.yml`](http://relaxed.ruby.style/rubocop.yml).

## Disabled Cops & Relaxed Style Recommendations

### Style/Alias

Feel free to use the `alias` keyword when appropriate.

### Lint/AmbiguousRegexpLiteral

Use regex normally.

### Lint/AssignmentInCondition

Use `=` for assignments in conditions. Use `==` for comparisons in conditions.

### Style/BeginBlock

Use `BEGIN` blocks when it makes sense.

### Style/BlockDelimiters

Consider [using `{}` for multi-line blocks](https://github.com/chneukirchen/styleguide/blob/e60de37b478d3f892f6985a58d573016f33f0269/RUBY-STYLE#L63-L67)

### Style/Documentation

Document your code and/or write a good ReadMe. And good specs. Choose descriptive
method and variable names!

### Style/DotPosition

When chaining methods on multiple lines, it is a good idea to put the dots at the end
of the lines to indicate that the expression continues on the next line.

### Style/DoubleNegation

Use `!!variable` to get the boolean value of a variable.

### Style/EndBlock

Use `END` blocks or `Kernel#at_exit' for code that should be executed when the
program quits.

### Style/FormatString

Creating format string can be done using the `String#%` method.

### Style/IfUnlessModifier

Use or don't use `if`/`unless` in modifier style whenever you think it improves
code readability.

### Style/Lambda

Use `->(){}` or `lambda{}` to create lambdas.

### Style/ModuleFunction

Prefer `extend self` over `module_function`. It uses Ruby's inheritance chain,
instead of copying all methods. Less magic!

[More Info](http://idiosyncratic-ruby.com/8-self-improvement.html)

### Style/NegatedIf

Always use `if !condition` for complex conditions with negations. For simple
conditions, for which it also unlikely that an else clause will be added at
some later point, it's also OK to use `unless condition`.

### Style/NegatedWhile

Always use `while !condition` for complex conditions with negations. For simple 
conditions, it's also OK to use `until condition`.

### Style/PercentLiteralDelimiters

When creating literals with the `%` syntax, choose any delimiters that don't
interfere with the literal's content.

### Style/PerlBackrefs

It is fine to use `$1` - `$9` to access the contents of your last matched
regex groups.

### Style/Semicolon

Usage of semicolons to separate multiple statements is OK.

### Style/SignalException

You are free to choose if you want to raise exceptions with `raise` or `fail`!

### Style/SingleLineBlockParams

Don't give your block parameters bad names.

### Style/SingleLineMethods

Single-line methods can be useful for short getter- or setter-like methods, when
`attr_reader` / `attr_accessor` / `attr_writer` are not enough anymore.

### Style/SpaceBeforeBlockBraces

It is not important if there is a space between a method call and a passed block.

### Style/SpaceInsideParens

Avoid putting spaces inside parentheses, but do it when it improves readability.
For example, when using RSpec's `expect` method.

### Style/SpecialGlobalVars

Refering to two-letter version of special global variables is OK, although not
very polite.

### Style/StringLiterals

Deliberately use single or double quoted strings!

### Style/TrailingComma

Use trailing commas in multi-line literals! Consider using RuboCop's
`EnforcedStyleForMultiline: consistent_comma` option.

### Style/WhileUntilModifier

Use or don't use `while`/`until` in modifier style whenever you think it improves
code readability.

### Metrics

RuboCop's code complexity metrics can be very useful indications, however, they should
be discussed, tweaked and activated individually.

## Discussion

* [Relaxed.Ruby.Style](https://github.com/janlelis/relaxed.ruby.style/issues/)
* [ruby-style-guide](https://github.com/bbatsov/ruby-style-guide/issues/)
