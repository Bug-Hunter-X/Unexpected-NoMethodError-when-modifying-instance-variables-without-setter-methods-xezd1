# Unexpected NoMethodError in Ruby when Modifying Instance Variables

This repository demonstrates a subtle issue in Ruby related to modifying instance variables directly using `instance_variable_set` when no corresponding setter method is defined.  The code includes an example showcasing the error and its solution.

## Bug Description

In Ruby, modifying instance variables using `instance_variable_set` works correctly. However, attempting to use a method call to set a new value (e.g. `my_object.value = 30`) will raise a `NoMethodError` if a corresponding `value=` method (setter) is not explicitly defined.

## Solution

The solution involves defining the appropriate setter method (`value=`) to allow for this type of assignment.