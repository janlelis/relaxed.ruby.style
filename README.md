# [Relaxed Ruby Style](https://relaxed.ruby.style)

## Version 2.5

A more liberal style guide for [RuboCop](https://github.com/rubocop-hq/rubocop). It comes
with a [config file](https://relaxed.ruby.style/rubocop.yml) which deactivates some of
RuboCop's features. It is meant as a less restrictive foundation that you can use
directly or base your style discussions on.

### Motivation

RuboCop is an amazing tool, still some of its default rules feel overly strict. This
might distract you from the helpful messages.

### How to Read this Style Guide

This is not a stand-alone style guide, but a patch applied to
[rubocop-hq/ruby-style-guide](https://github.com/rubocop-hq/ruby-style-guide)
(the style guide RuboCop is based on).

### Usage

Use, copy or inherit from [rubocop.yml](https://relaxed.ruby.style/rubocop.yml).
One way is to add the following lines to your `.rubocop.yml`:

    inherit_from:
    - https://relaxed.ruby.style/rubocop.yml

You could also get the styleguide via rubygems. Add to your `Gemfile`:

    gem "relaxed-rubocop"

And in your `.rubocop.yml`:

    inherit_gem:
      relaxed-rubocop: .rubocop.yml

## Disabled Cops & Relaxed Style Recommendations

### Style/Alias

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#alias-method). Feel free to
use the `alias` keyword when appropriate.

### Style/AsciiComments

You are free to use your source encoding in code comments. For example, if your source
encoding is UTF-8, you can use UTF-8 characters in comments.

### Style/BeginBlock

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-BEGIN-blocks). Use `BEGIN`
blocks when you need its functionality.

### Style/BlockDelimiters

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#single-line-blocks).
Consider [using `{}` for multi-line blocks](https://github.com/chneukirchen/styleguide/blob/e60de37b478d3f892f6985a58d573016f33f0269/RUBY-STYLE#L63-L67).

### Style/CommentAnnotation

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#annotate-keywords). It is
totally optional to put a colon and a space behind **TODO**s and **FIXME**s

### Style/Documentation

Document your code and/or write a good ReadMe. And good specs. Choose descriptive
method and variable names!

### Layout/DotPosition

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#consistent-multi-line-chains).
When chaining methods on multiple lines, it is a good idea to put the dots at the end of
the lines to indicate that the expression continues on the next line.

### Style/DoubleNegation

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-bang-bang). Use `!!variable`
to get the boolean value of a variable.

### Style/EndBlock

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-END-blocks). Use `END`
blocks or `Kernel#at_exit` for code that should be executed when the program quits.

### Style/FormatString

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#sprintf). Creating format
string should be done using the [`String#%` method](https://idiosyncratic-ruby.com/49-what-the-format.html).

### Style/IfUnlessModifier

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#if-as-a-modifier). Use or
don't use `if`/`unless` in modifier style whenever you think it improves code readability.

### Style/Lambda

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#lambda-multi-line). It does
not matter if you use `->(){}` or `lambda{}` to create lambdas.

### Style/ModuleFunction

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#module-function). Prefer
`extend self` over `module_function`. It uses Ruby's inheritance chain, instead of
copying all methods. Less magic!
[More info](https://idiosyncratic-ruby.com/8-self-improvement.html).

### Style/MultilineBlockChain

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#single-line-blocks). Chain
multiple blocks when it makes sense, this promotes a functional programming mindset.

### Style/NegatedIf

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#unless-for-negatives). Always
use `if !condition` for complex conditions with negations. For simple conditions, for
which it also unlikely that an else clause will be added at some later point, it is also
OK to use `unless condition`.

### Style/NegatedWhile

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#until-for-negatives). Always
use `while !condition` for complex conditions with negations. For simple conditions,
it is also OK to use `until condition`.

### Style/NumericPredicate

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#predicate-methods).
Numprical predicates (like `x.negative?`) can be used when it improves code readability,
but using explicit comparisons (like `x < 0`) is good, too.

### Style/ParallelAssignment

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#parallel-assignment).
Parallel assignment can sometimes express the intented logic better than sequential
assignment. It is also [faster](https://github.com/JuanitoFatas/fast-ruby#parallel-assignment-vs-sequential-assignment-code).

### Style/PercentLiteralDelimiters

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#percent-literal-braces). When
creating literals with the `%` syntax, choose any delimiters that don't interfere with
the literal's content.

### Style/PerlBackrefs

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-perl-regexp-last-matchers).
It is fine to use the special **local** variables `$1` - `$9` to access the contents of
your last matched regex groups.

### Style/Semicolon

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-semicolon). Usage of
semicolons to separate multiple statements is OK.

### Style/SignalException

*(Dropped from RuboCop style guide)*. You are free to choose if you want to raise
exceptions with `raise` or `fail`.

### Style/SingleLineBlockParams

*(Dropped from RuboCop style guide)*. Don't give your block parameters bad names.

### Style/SingleLineMethods

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-single-line-methods).
Single-line methods can be useful for short getter- or setter-like methods, when
`attr_reader` / `attr_accessor` / `attr_writer` are not enough anymore.

### Layout/SpaceBeforeBlockBraces

It is not important if there is a space between a method call and a passed block.

### Layout/SpaceInsideParens

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-spaces-braces). Avoid
putting spaces inside parentheses, but do it when it improves readability.
For example, when using RSpec's `expect` method.

### Style/SpecialGlobalVars

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-cryptic-perlisms).
Refering to [two-letter version of special global variables](https://idiosyncratic-ruby.com/9-globalization.html#list-of-all-special-global-variables) is OK, although not very polite.

### Style/StringLiterals

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#consistent-string-literals).
Deliberately use single or double quoted strings!

### Style/TrailingCommaInArguments

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-trailing-params-comma).
Use trailing commas in multi-line argument lists. It makes manipulating the params easier
(reordering, appending, removing) and leads to smaller git diffs. Consider using RuboCop's
`EnforcedStyleForMultiline: consistent_comma` option.

### Style/SymbolArray

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#percent-i). You can use the
`%i` syntax for an array of symbols, but usage of an array of symbols is fine, too.

### Style/TrailingCommaInLiteral

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#no-trailing-array-commas).
Use trailing commas in multi-line literals. It makes manipulating the literal easier
(reordering, appending, removing) and leads to smaller git diffs. Consider using RuboCop's
`EnforcedStyleForMultiline: consistent_comma` option.

### Style/WordArray

[Word arrays using the percent syntax](https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals#The_.25_Notation)
make for a good and concise way to create an array of strings, especially if creating lots
of strings. However, it it should be considered a good option, instead of being mandatory
to use.

### Style/WhileUntilModifier

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#while-as-a-modifier). Use or
don't use `while`/`until` in modifier style whenever you think it improves code
readability.

### Lint/AmbiguousRegexpLiteral

Use regex normally.

### Lint/AssignmentInCondition

[Disabled rule](https://github.com/rubocop-hq/ruby-style-guide#safe-assignment-in-condition).
Use `=` for assignments in conditions. Use `==` for comparisons in conditions.

### Metrics

RuboCop's code complexity metrics can be very useful indications, however, they should
be discussed, tweaked and activated individually.

## Other Ruby Style Guides

* [Leah Neukirchen](https://github.com/chneukirchen/styleguide/blob/master/RUBY-STYLE)
* [Fast Ruby](https://github.com/JuanitoFatas/fast-ruby)
* [Ruby Style Guide (RuboCop)](https://github.com/rubocop-hq/ruby-style-guide/)
  * [GitHub](https://github.com/styleguide/ruby)
  * [Airbnb](https://github.com/airbnb/ruby)
  * [Shopify](https://shopify.github.io/ruby-style-guide/)

Find more at [ruby.style](https://ruby.style)

### Taking this Style Guide Forward

If you like this style guide and have an idea how to improve it, feel free to create
an issue or pull request. Please create an extra issue per RuboCop rule that you want to
see changed so that it can be merged or rejected individually.

## Also See

* [Idiosyncratic Ruby](https://idiosyncratic-ruby.com)
* [Standard Gems](https://stdgems.org)
