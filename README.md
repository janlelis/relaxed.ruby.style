# [Relaxed.Ruby.Style](http://relaxed.ruby.style)

A more liberal style guide for [RuboCop](https://github.com/bbatsov/rubocop). It comes
with a [config file](http://relaxed.ruby.style/rubocop.yml) that deactivates some of
RuboCop's features. It is meant as a less restrictive foundation that you can use
directly or base your style discussions on.

### Motivation

RuboCop is an amazing tool, still some of its default rules feel overly strict. This
might distract you from the helpful messages.

**Warning:** Does include opinionated style advice.

### How to Read this Style Guide

This is not a stand-alone style guide, but a patch applied to
[bbatsov/ruby-style-guide](https://github.com/bbatsov/ruby-style-guide)
(the style guide RuboCop is based on).

### Usage

Use, copy or inherit from [`rubocop.yml`](http://relaxed.ruby.style/rubocop.yml).

## Disabled Cops & Relaxed Style Recommendations

### Style/Alias

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#alias-method). Feel free to
use the `alias` keyword when appropriate.

### Style/BeginBlock

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-BEGIN-blocks). Use `BEGIN`
blocks when it makes sense.

### Style/BlockDelimiters

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#single-line-blocks).
Consider [using `{}` for multi-line blocks](https://github.com/chneukirchen/styleguide/blob/e60de37b478d3f892f6985a58d573016f33f0269/RUBY-STYLE#L63-L67).

### Style/Documentation

Document your code and/or write a good ReadMe. And good specs. Choose descriptive
method and variable names!

### Style/DotPosition

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#consistent-multi-line-chains).
When chaining methods on multiple lines, it is a good idea to put the dots at the end of
the lines to indicate that the expression continues on the next line.

### Style/DoubleNegation

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-bang-bang). Use `!!variable`
to get the boolean value of a variable.

### Style/EndBlock

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-END-blocks). Use `END`
blocks or `Kernel#at_exit' for code that should be executed when the program quits.

### Style/FormatString

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#sprintf). Creating format
string can be done using the `String#%` method.

### Style/IfUnlessModifier

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#if-as-a-modifier). Use or
don't use `if`/`unless` in modifier style whenever you think it improves code readability.

### Style/Lambda

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#lambda-multi-line). Use
`->(){}` or `lambda{}` to create lambdas.

### Style/ModuleFunction

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#module-function). Prefer
`extend self` over `module_function`. It uses Ruby's inheritance chain, instead of
copying all methods. Less magic!
[More Info](http://idiosyncratic-ruby.com/8-self-improvement.html)

### Style/MultilineBlockChain

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#single-line-blocks). Chain
multiple blocks when it makes sense, this promotes a functional programming mindset.

### Style/NegatedIf

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#unless-for-negatives). Always
use `if !condition` for complex conditions with negations. For simple conditions, for
which it also unlikely that an else clause will be added at some later point, it is also
OK to use `unless condition`.

### Style/NegatedWhile

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#until-for-negatives). Always
use `while !condition` for complex conditions with negations. For simple conditions,
it is also OK to use `until condition`.

### Style/ParallelAssignment

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#parallel-assignment).
Parallel assignment can sometimes express the intented logic better than sequential
assignment. It is also [faster](https://github.com/JuanitoFatas/fast-ruby#parallel-assignment-vs-sequential-assignment-code).

### Style/PercentLiteralDelimiters

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#percent-literal-braces). When
creating literals with the `%` syntax, choose any delimiters that don't interfere with
the literal's content.

### Style/PerlBackrefs

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-perl-regexp-last-matchers).
It is fine to use the special **local** variables `$1` - `$9` to access the contents of
your last matched regex groups.

### Style/Semicolon

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-semicolon). Usage of
semicolons to separate multiple statements is OK.

### Style/SignalException

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#fail-method). You are free
to choose if you want to raise exceptions with `raise` or `fail`.

### Style/SingleLineBlockParams

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#reduce-blocks). Don't give
your block parameters bad names.

### Style/SingleLineMethods

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-single-line-methods).
Single-line methods can be useful for short getter- or setter-like methods, when
`attr_reader` / `attr_accessor` / `attr_writer` are not enough anymore.

### Style/SpaceBeforeBlockBraces

It is not important if there is a space between a method call and a passed block.

### Style/SpaceInsideParens

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-spaces-braces). Avoid
putting spaces inside parentheses, but do it when it improves readability.
For example, when using RSpec's `expect` method.

### Style/SpecialGlobalVars

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-cryptic-perlisms).
Refering to [two-letter version of special global variables](http://idiosyncratic-ruby.com/9-globalization.html#list-of-all-two-letter-global-variables) is OK, although not very polite.

### Style/StringLiterals

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#consistent-string-literals).
Deliberately use single or double quoted strings!

### Style/TrailingCommaInLiteral

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#no-trailing-array-commas).
Use trailing commas in multi-line literals. It makes manipulating the literal easier
(reordering, appending, removing) and leads to smaller git diffs. Consider using RuboCop's
`EnforcedStyleForMultiline: consistent_comma` option.

### Style/WhileUntilModifier

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#while-as-a-modifier). Use or
don't use `while`/`until` in modifier style whenever you think it improves code
readability.

### Lint/AmbiguousRegexpLiteral

Use regex normally.

### Lint/AssignmentInCondition

[Disabled rule](https://github.com/bbatsov/ruby-style-guide#safe-assignment-in-condition). Use `=` for assignments in conditions. Use `==` for comparisons in conditions.

### Metrics

RuboCop's code complexity metrics can be very useful indications, however, they should
be discussed, tweaked and activated individually.

## Discussion

* [This Guide](https://github.com/janlelis/relaxed.ruby.style/issues/)
* [Ruby Style Guide (Rubocop)](https://github.com/bbatsov/ruby-style-guide/issues/)

## Other Ruby Style Guides

* [Christian Neukirchen](https://github.com/chneukirchen/styleguide/blob/master/RUBY-STYLE)
* [Fast Ruby](https://github.com/JuanitoFatas/fast-ruby)
* [Ruby Style Guide (Rubocop)](https://github.com/bbatsov/ruby-style-guide/issues/)
  * [GitHub](https://github.com/styleguide/ruby)
  * [Airbnb](https://github.com/airbnb/ruby)

