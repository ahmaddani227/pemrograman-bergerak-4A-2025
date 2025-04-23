class Place {
  final int id;
  final String title;
  final String location;
  final String description;
  final bool isHotPlace;
  final String image;

  Place({
    required this.id,
    required this.title,
    required this.location,
    required this.description,
    required this.isHotPlace,
    required this.image,
  });
}

List<Place> places = [
  Place(
    id: 1,
    title: 'Bali Beach',
    location: 'Bali, Indonesia',
    description:
        'A beautiful beach with white sand and crystal-clear waters. Lorem ipsum est donec non interdum amet phasellus egestas id dignissim in vestibulum augue ut a lectus rhoncus sed ullamcorper at vestibulum sed mus neque amet turpis placerat in luctus at eget egestas praesent congue semper in facilisis purus dis pharetra odio ullamcorper euismod a donec consectetur pellentesque pretium sapien proin tincidunt non augue turpis massa euismod quis lorem et feugiat ornare id cras sed eget adipiscing dolor urna mi sit a a auctor mattis urna fermentum facilisi sed aliquet odio at suspendisse posuere tellus pellentesque id quis libero fames blandit ullamcorper interdum eget placerat tortor cras nulla consectetur et duis viverra mattis libero scelerisque gravida egestas blandit tincidunt ullamcorper auctor aliquam leo urna adipiscing est ut ipsum consectetur id erat semper fames elementum rhoncus quis varius pellentesque quam neque vitae sit velit leo massa habitant tellus velit pellentesque cursus laoreet donec etiam id vulputate nisi integer eget gravida volutpat. ',
    isHotPlace: true,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 2,
    title: 'Mount Bromo',
    location: 'East Java, Indonesia',
    description:
        'Famous for its sunrise and volcano trekking experience. lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. ',
    isHotPlace: true,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 3,
    title: 'Borobudur Temple',
    location: 'Magelang, Indonesia',
    description:
        'The largest Buddhist temple in the world, rich in history. lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. ',
    isHotPlace: true,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 4,
    title: 'Lake Toba',
    location: 'North Sumatra, Indonesia',
    description:
        'A huge volcanic lake with an island in the middle. lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. ',
    isHotPlace: false,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 5,
    title: 'Raja Ampat',
    location: 'Papua, Indonesia',
    description:
        'Diving paradise with vibrant marine biodiversity. lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. ',
    isHotPlace: true,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 6,
    title: 'Yogyakarta Palace',
    location: 'Yogyakarta, Indonesia',
    description:
        'A cultural heritage site with rich Javanese traditions. lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. ',
    isHotPlace: false,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 7,
    title: 'Labuan Bajo',
    location: 'Flores, Indonesia',
    description:
        'The gateway to Komodo Island and beautiful sea views. lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. ',
    isHotPlace: false,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 8,
    title: 'Tana Toraja',
    location: 'South Sulawesi, Indonesia',
    description:
        'Known for its unique funeral ceremonies and culture. lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. ',
    isHotPlace: false,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 9,
    title: 'Ijen Crater',
    location: 'East Java, Indonesia',
    description:
        'Blue fire phenomenon and sulfur mining site. lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. ',
    isHotPlace: true,
    image: 'assets/gambar.png',
  ),
  Place(
    id: 10,
    title: 'Belitung Island',
    location: 'Bangka Belitung, Indonesia',
    description:
        'Clear waters and giant granite rocks make it unique lorem ipsum dolor sit amet consectetur adipiscing elit. sit amet elit. .',
    isHotPlace: false,
    image: 'assets/gambar.png',
  ),
];
