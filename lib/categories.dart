class Categories {
  final String image, title;

  Categories(this.image, this.title);
}

class Destinations {
  final String image, title, location;

  Destinations(this.image, this.title, this.location);
}

List<Categories> categories = [
  Categories("assets/images/danau.png", "Danau"),
  Categories("assets/images/gunung.png", "Gunung"),
  Categories("assets/images/pantai.png", "Pantai"),
  Categories("assets/images/desa.png", "anau"),
];

List<Destinations> destinations = [
  Destinations(
      "assets/images/pantai_ubud.png", "Pantai Ubud", "Bali, Indonesia"),
  Destinations(
      "assets/images/gunung_fuji.png", "Gunung Fuji", "Nganjuk, Japan"),
];
