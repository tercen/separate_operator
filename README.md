# Separate operator

##### Description

`Separate` a character column into multiple columns with a regular expression or numeric locations.

##### Usage

Input projection|.
---|---
`row`        | single character column

Output relations|.
---|---
`col1`          | numeric or character
`col2`          | numeric or character
`etc..`          | multiple columns

##### Details

Given a regular expression , `Separate` turns a single character column into multiple columns.

##### References

This operator is a wrapper of the [strsplit R function](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/strsplit).

##### See Also

[replace_operator](https://github.com/tercen/replace_operator)
