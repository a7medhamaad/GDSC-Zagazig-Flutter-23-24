double? findAverageRating(List<int> ratings) {
  if (ratings.isEmpty) {
    return null;
  }

  double sum = 0;
  for (int rating in ratings) {
    sum += rating;
  }

  return sum / ratings.length;
}

void main() {
  List<int> movieRatings1 = [4, 5, 3, 2, 5];
  List<int> movieRatings2 = [];

  double? averageRating1 = findAverageRating(movieRatings1);
  double? averageRating2 = findAverageRating(movieRatings2);

  print("Average Rating 1: $averageRating1");
  print("Average Rating 2: $averageRating2");
}

//#####################################################################
//problem 2. Movie Ratings
//Create a function findAverageRating(ratings) that takes a List of
//movie ratings(integers 1 - 5) and returns the average rating.If the
//List is empty, return null.
