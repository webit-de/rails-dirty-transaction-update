# Dirty Transaction Update

This little app should demonstrate a possible bug in rails.

To run this bundle, edit config/database.yml, create db,  migrate and run the following commands:

* `rails runner test_transactions.rb` - This shows the test case for a "production"-like environment
* `rails test test/models/test_object_test.rb` - This runs similar code inside a transactional test

You will see that the output of the saved field differs between these two variants.
