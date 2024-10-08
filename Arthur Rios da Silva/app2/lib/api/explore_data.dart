import 'package:app2/models/models.dart';

class ExploreData {
  final List<Restaurant> restaurants;
  final List<FoodCategory> categories;
  final List<Post> friendPosts;

  const ExploreData({
    required this.restaurants,
    required this.categories,
    required this.friendPosts,
  });
}

class MockService {
  Future<ExploreData> getExploreData() async {
    final restaurants = await _getRestaurants();
    final posts = await _getPosts();
    final categories = await _getCategories();

   await Future.delayed(Duration(seconds: 1));
   return ExploreData(restaurants: restaurants, categories: categories, friendPosts: posts);
  }

  Future<List<FoodCategory>> _getCategories() async {
    await Future.delayed(Duration(seconds: 1));
    return categories;
  }

  Future<List<Restaurant>> _getRestaurants() async {
    await Future.delayed(Duration(seconds: 1));
    return restaurants;
  }

  Future<List<Post>> _getPosts() async {
    await Future.delayed(Duration(seconds: 1));
    return posts;
  }
}