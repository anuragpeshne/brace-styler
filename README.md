# brace-styler
auto convert to brace-on-same-line, jump back and forth

Convert:
```php
if (someCondition)
{
  $foo = 1;
  //do something more
}
```

to this:
```php
if (someCondition) {
  $foo = 1;
  //do something more
}
```

using `:Bb`

and go back automatically while saving the file.

If you want to do it explicitly do a `:Bu`
