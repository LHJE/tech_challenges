class Travel

  def initialize
  end

  # This task is accomplished by making a varying number of rows of varying lengths, zipping them together to get nested arrays, getting the unique sums of those nested arrays, and finding the highest one that doesn't go over our max_sum.

  # First, let's weed out all the things that ought to just be `nil` first, then we can get on with business
  def choose_best_sum(max_sum, max_towns, distances)

    # Make sure `distances.nil?` comes before `max_towns > distances.length` or it'll break the whole thing because it won't know how to call `.length` on a NilClass
    if max_sum.nil? || max_sum < 0 || max_towns.nil? || max_towns < 1 || distances.nil? || max_towns > distances.length || distances == []
      nil
    else

      # Okay, now that we're past all that, let's start looking at these numbers in a helper method
      best_sum_helper(max_sum, max_towns, distances)
    end
  end

  def best_sum_helper(max_sum, max_towns, distances)

    # First let's set an id.  This number can be anything, but we're going to use it to rotate our `distances` array, and it's going to go up, so I've just picked a short variable name
    id = 1

    # My first run at this used Array's, and I ought to have written down why moving to hashes just felt better, but here we are.  Let's establish that variable so we can fill it with stuff.
    sum_hash = {}

    # This is setting the first key in the `sum_hash` as a repeated version of the distanes.  The more distances, the longer the row you'll want so you'll end up with more combinations of numbers when we zip these rows together.
    sum_hash[id] = (distances * (distances.length / 2))

    # This next part will fill the hash with as many keys as max_towns, and the values will be rows of the `distances` repeated out to the length of the first key, but rotated over.  These rotations are done in a helper method below.
    (max_towns - 1).times {
      id += 1

      # This is the helper method mentioned above. The one that makes the rows the correct length.  This method exists below.
      sum_hash[id] = make_distance_rows(distances, id, (distances.length / 2))
    }

    # You guessed it, another helper method in order to turn all those rows into an Array of all of the possible sums.  See this below
    sums = get_sums(sum_hash)

    # And one final helper method to get that final sum.  See the method at the bottom
    final_sum(sums, max_sum)
  end


  # This is likely the most complicated part of this whole opperation.  The first two best_sum tests give us 5 distances, but that third one gives us 7, which means the length of the distance rows in the sum_hash has to be different.  Simply, if the rows aren't long enough, when we zip them together, all of the possible combinations won't be present.  So this has to be dynamic.  Thus, this beast:

  # You'll note right off that I establish a variable called `rotated_distances` in the definition line, one which isn't passed in above.  This is because we're going to be looping over this method if we have to, and we want to save what we've done when we loop.  When we DO pass something in for `rotated_distances`, it overwrites what I establish in the line below, so that we can compare our new work before looping again.
  def make_distance_rows(distances, id, number, rotated_distances = [distances.rotate(id)])
    # So, let's first push the id up by one so the distances can get rotated by an even larger degree this time. We needed the id to be what it is when it's passed in so that `rotated_distances` could be created correctly the first time, but now we can start pushing it up.
    id += 1

    # Let's rotate those distances with our new higher id, and shovel them into rotated_distances
    rotated_distances << distances.rotate(id)

    # Now let's check if it's the distance we want yet!  If it is, we return the flattened row, and we're done with this whole looping business
    if rotated_distances.flatten.length == distances.length * number
      rotated_distances.flatten

      # And if it's not, we loop this whole opperation until it's done.
    else
      make_distance_rows(distances, id, number, rotated_distances.flatten)
    end
  end


  # Let's now take our hash with it's very-long-array values and start mixing these values into a variety of nested arrays and then find the sums of those nested arrays!
  def get_sums(sum_hash)

    # Okay, this is one I've just learned.  It's how you `zip` the values of hashes (that's a good method to google if you're unsure what it does!).  What we end up with is a collection of every possible combination of the individual distances.  This is why we made SUCH long arrays up above in `make_distance_rows`
    header, *rows = sum_hash.values
    sums_arrays = header.zip(*rows)

    # Now we flatten and sum each of these nested arrays, and only return the unique ones, since all we're looking for is a number anywho.
    sums_arrays.map do |sum_array|
      sum_array.flatten.sum
    end.uniq
  end


  # Now, this was working without the conditional and the shovelling, but when I started testing with 7 distances insteady of 5, this was the only way I could get this to work.  Basically it finds sorts the sums, reverses them so they're decending, and then when it finds the first sum that is less than or equal to the max_sum, it shovels it into `final_sum`, and then at the end we return that, and Bob's your uncle!  This could definitely be refactored, but I think I'm done with this one today!
  def final_sum(sums, max_sum)
    final_sum = []
    sums.sort.reverse.find do |sum|
      if sum <= max_sum
        final_sum << sum
      end
    end
    final_sum[0]
  end
end
