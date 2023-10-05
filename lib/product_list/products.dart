class Product {
  final String Id;
  final String Name;
  final String imagePick; // Add this field for the image
  final List<Item> items;

  Product({
    required this.Id,
    required this.Name,
    required this.imagePick,
    required this.items,
  });

}
class Item{
  final String id;
  final String name;
  final double price;
  final String imagePath;
  final String Description;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.Description,
  });
}

final List<Product> products = [
  Product(
      Id: "1",
      Name: "Belts",
      imagePick: "assets/icon/belt.png",
    items: [
      Item(id: "1",name: 'Black Leather Belt', price: 300, imagePath: "assets/belts/1.png" , Description: "This is Black Leather Belt" ),
      Item(id: "2",name: 'Black Simple Belt', price: 250, imagePath: 'assets/belts/2.png' , Description: "This is Simple Black Belt" ),
      Item(id: "3",name: 'Brown Belt', price: 700, imagePath: 'assets/belts/3.png' , Description: "This is Brown Belt" ),
      Item(id: "4",name: 'Leather Belt', price: 800, imagePath: 'assets/belts/4.png' , Description: "This is Leather Belt" ),
      Item(id: "5",name: 'Brown Leather Belt', price: 250, imagePath: 'assets/belts/5.png' , Description: "This is Brown Leather Belt" ),
      Item(id: "6",name: 'Dark Brown Belt', price: 1000, imagePath: 'assets/belts/6.png'  , Description: "This is Dark Brown Leather Belt"),
      Item(id: "7",name: 'Brown Leather Belt', price: 1500, imagePath: 'assets/belts/7.png' , Description: "This is Brown Leather Belt")
    ]
  ),
  Product(
      Id: "1",
      Name: "Casual Shoes",
      imagePick: "assets/icon/casual shoes.png",
      items:[
        Item(id: "1" , name: 'Black Shoes', price: 1200, imagePath: 'assets/Casual Shoes/1.jpeg' , Description: "This is Black Shoes"),
        Item(id: "2" , name: 'Black Simple Shoes', price: 800, imagePath: 'assets/Casual Shoes/2.jpeg', Description: "This is Black Simple Shoes"),
        Item(id: "3" , name: 'Black Shoes', price: 1200, imagePath: 'assets/Casual Shoes/3.png', Description: "This is Black Shoes"),
        Item(id: "4" , name: 'Black Big Soil', price: 1100, imagePath: 'assets/Casual Shoes/4.png', Description: "This is Black Big Soil Shoes"),
        Item(id: "5" , name: 'Black Shine', price: 2000, imagePath: 'assets/Casual Shoes/5.png', Description: "This is Black Shime Shoes"),
        Item(id: "6" , name: 'Dark Brown', price: 2500, imagePath: 'assets/Casual Shoes/6.png', Description: "This is Dark Brown Shoes"),
        Item(id: "7" , name: 'Pure Brown Leather', price: 3000, imagePath: 'assets/Casual Shoes/7.png', Description: "This is Pure Brown Shoes"),
        Item(id: "8" , name: 'Brown Leather Design', price: 2000, imagePath: 'assets/Casual Shoes/8.png', Description: "This is Brown Shoes"),
      ]
  ),
  Product(
      Id: "3",
      Name: "Purfumes",
      imagePick: "assets/icon/perfume.png",
      items: [
        Item(id: "1",name:"Mockup" , price: 1500, imagePath: 'assets/Perfumes/1.png' , Description: "This is Mockup Perfume"),
        Item(id: "2",name:"AXE blue" , price: 2000, imagePath: 'assets/Perfumes/2.png', Description: "This is AXE blue Perfume"),
        Item(id: "3",name:"new AXE Black" , price: 2000, imagePath: 'assets/Perfumes/3.png', Description: "This is new AXE Black Perfume"),
        Item(id: "4",name:"Fogg" , price: 1000, imagePath: 'assets/Perfumes/4.png', Description: "This is Fogg Perfume"),
        Item(id: "5",name:"Hamston" , price: 2500, imagePath: 'assets/Perfumes/5.png', Description: "This is Hamston Perfume"),
        Item(id: "6",name:"CHANEL Paris" , price: 3500, imagePath: 'assets/Perfumes/6.png', Description: "This is CHANEL Paris Perfume"),
        Item(id: "7",name:"ALLURE CHANEL" , price: 5000, imagePath: 'assets/Perfumes/7.png', Description: "This is ALLURE Perfume"),
      ]
  ),
  Product(
      Id: "4",
      Name: "Shirts",
      imagePick: "assets/icon/shirt.png",
      items: [
        Item(id: "1", name: "Blue Shirt", price: 1500, imagePath: "assets/shirts/1.png", Description: "This is Blue Shirt"),
        Item(id: "2", name: "Brown Shirt", price: 2000, imagePath: "assets/shirts/2.png", Description: "This is Brown Shirt"),
        Item(id: "3", name: "Blue Shirt", price: 1500, imagePath: "assets/shirts/3.png", Description: "This is Blue Shirt"),
        Item(id: "4", name: "Blue Check Shirt", price: 1500, imagePath: "assets/shirts/4.png", Description: "This is Blue Check Shirt"),
        Item(id: "5", name: "Blue Check Shirt", price: 1200, imagePath: "assets/shirts/5.png", Description: "This is Blue Check Shirt"),
        Item(id: "6", name: "Blue & White Shirt", price: 1000, imagePath: "assets/shirts/6.png", Description: "This is Blue & White Shirt"),
        Item(id: "7", name: "White Shirt", price: 2500, imagePath: "assets/shirts/7.png", Description: "This is White Shirt"),
        Item(id: "8", name: "Blue Jean Shirt", price: 1100, imagePath: "assets/shirts/8.png", Description: "This is Blue Jean Shirt"),
        Item(id: "9", name: "Blue Shirt", price: 1800, imagePath: "assets/shirts/9.png", Description: "This is Blue Shirt"),
        Item(id: "10", name: "Black Shirt", price: 2800, imagePath: "assets/shirts/1.png", Description: "This is Black Shirt"),
      ]
  ),
  Product(
      Id: "1",
      Name: "Pents",
      imagePick: "assets/icon/cloth.png",
      items: [
        Item(id: "1",name:"Grey Pent" , price: 1500, imagePath: 'assets/Pents/1.png' , Description: "This is Grey Pents"),
        Item(id: "2",name:"Brown Pent" , price: 1400, imagePath: 'assets/Pents/2.png' , Description: "This is Brown Pents"),
        Item(id: "3",name:"Silver Pent" , price: 1200, imagePath: 'assets/Pents/3.png' , Description: "This is Silver Pents"),
        Item(id: "4",name:"Blue Pent" , price: 1000, imagePath: 'assets/Pents/4.png' , Description: "This is Blue Pents"),
        Item(id: "5",name:"Black Dress Pent" , price: 2500, imagePath: 'assets/Pents/5.png' , Description: "This is Black Dress Pents"),
        Item(id: "7",name:"Silver Pent" , price: 2000, imagePath: 'assets/Pents/7.png' , Description: "This is Silver Pents"),
        Item(id: "8",name:"Dark Pent" , price: 1500, imagePath: 'assets/Pents/8.png' , Description: "This is Dark Pents"),
        Item(id: "9",name:"Light Pent" , price: 1500, imagePath: 'assets/Pents/9.png' , Description: "This is Light Pents"),
        Item(id: "10",name:"Blue Pent" , price: 2000, imagePath: 'assets/Pents/10.png' , Description: "This is Blue Pents"),
      ]
  ),
  Product(
      Id: "8",
      imagePick: "assets/icon/shirt_women.png",
      Name: "Women Shirts",
      items: [
        Item(id: "1", imagePath: "assets/Women Shirt/1.png", name: "Pink Skirt", price: 3000 , Description: "This is Pink Shirt"),
        Item(id: "2", imagePath:  "assets/Women Shirt/2.png", name: "Silver Shirt", price: 1000 , Description: "This is Silver Shirt"),
        Item(id: "3", imagePath:  "assets/Women Shirt/3.png", name: "Black Shirt", price: 1500 , Description: "This is Black Shirt"),
        Item(id: "4", imagePath:  "assets/Women Shirt/4.png", name: "Full Arm Blue", price: 1500 , Description: "This is Full Arm Shirt"),
        Item(id: "5", imagePath:  "assets/Women Shirt/5.png", name: "Pink Shirt", price: 2000 , Description: "This is Pink Shirt"),
        Item(id: "6", imagePath:  "assets/Women Shirt/6.png", name: "Silver Shirt", price: 1000 , Description: "This is Silver Shirt"),
        Item(id: "7", imagePath:  "assets/Women Shirt/7.png", name: "Printed White", price: 2000 , Description: "This is Printed Shirt"),
        Item(id: "8", imagePath:  "assets/Women Shirt/8.png", name: "Printed Dark Blue", price: 2000 , Description: "This is Printed Dark Blue Shirt"),
        Item(id: "9", imagePath:  "assets/Women Shirt/9.png", name: "Printed Blue", price: 2000 , Description: "This is Printed Blue Shirt"),
        Item(id: "10", imagePath:  "assets/Women Shirt/10.png", name: "Printed White", price: 2000 , Description: "This is Printed White Shirt"),
        Item(id: "11", imagePath:  "assets/Women Shirt/11.png", name: "Pink Shirt", price: 2000 , Description: "This is Pink Shirt"),
        Item(id: "12", imagePath:  "assets/Women Shirt/1.png", name: "Blue Shirt", price: 1500 , Description: "This is Blue Shirt")




      ]
  ),
  Product(
      Id: "7",
      Name: "Short Nikar",
      imagePick: "assets/icon/shorts.png",
      items: [
        Item(id: "1",name:"Red Nikar" , price: 1000, imagePath: 'assets/Short Nikar/1.png', Description: "This is Red Nikar"  ),
        Item(id: "2",name:"Simple Redr" , price: 600, imagePath: 'assets/Short Nikar/2.png', Description: "This is Simple Nikar"  ),
        Item(id: "3",name:"Silver Nikar" , price: 800, imagePath: 'assets/Short Nikar/3.png', Description: "This is Silver Nikar"  ),
        Item(id: "4",name:"Black Nikar" , price: 700, imagePath: 'assets/Short Nikar/4.jpg', Description: "This is Black Nikar"  ),
        Item(id: "5",name:"Black Nikar" , price: 800, imagePath: 'assets/Short Nikar/5.png', Description: "This is Black Nikar"  ),
        Item(id: "6",name:"Blue Nikar" , price: 1000, imagePath: 'assets/Short Nikar/6.png', Description: "This is Blue Nikar"  ),
        Item(id: "7",name:"Red Nikar" , price: 500, imagePath: 'assets/Short Nikar/7.png', Description: "This is Red Nikar"  ),
      ]
  ),
  Product(
      Id: "8",
      Name: "Sports Shoes",
      imagePick: "assets/icon/sport-shoe.png",
      items: [
        Item(id: "1" , name:"Ndure" , price: 3000, imagePath: 'assets/sports shoes/1.png' , Description: "This is Ndure Shoes"),
        Item(id: "2" , name:"Nike" , price: 10000, imagePath: 'assets/sports shoes/2.png' , Description: "This is Nike Shoes"),
        Item(id: "3" , name:"Nike Grey" , price: 12000, imagePath: 'assets/sports shoes/3.png' , Description: "This is Nike Grey Shoes"),
        Item(id: "4" , name:"Nike Blue" , price: 20000, imagePath: 'assets/sports shoes/5.png' , Description: "This is Nike Blue Shoes"),
        Item(id: "5" , name:"Nike" , price: 14000, imagePath: 'assets/sports shoes/6.png' , Description: "This is Nike Shoes"),
        Item(id: "6" , name:"Service" , price: 5000, imagePath: 'assets/sports shoes/7.png' , Description: "This is Service Shoes"),
        Item(id: "7" , name:"White Sneaker" , price: 3000, imagePath: 'assets/sports shoes/8.png' , Description: "This is White Sneaker Shoes"),
      ]
  ),
  Product(
      Id: "9",
      Name: "T Shirts",
      imagePick: "assets/icon/tshirt.png",
      items: [
        Item(id: "1", imagePath: 'assets/t shirts/1.png', name: "Red Shirt", price: 1000 , Description: "This is Red T Shirt"),
        Item(id: "2", imagePath: 'assets/t shirts/2.jpeg', name:  "Dark Grey", price: 1200, Description: "This is Dark Grey T Shirt"),
        Item(id: "3", imagePath: 'assets/t shirts/3.png', name:  "Pink Shirt", price: 1000, Description: "This is PinkT Shirt"),
        Item(id: "4", imagePath: 'assets/t shirts/4.png', name:  "Green Shirt", price: 1500, Description: "This is Green T Shirt"),
        Item(id: "5", imagePath: 'assets/t shirts/5.png', name:  "Black Shirt", price: 1900 , Description: "This is Black T Shirt"),
        Item(id: "6", imagePath: 'assets/t shirts/6.png', name:  "Red with Black", price: 1200, Description: "This is Red with Black T Shirt"),
        Item(id: "7", imagePath: 'assets/t shirts/7.png', name:  "Yellow Shirt", price: 800, Description: "This is Yellow T Shirt"),
      ]
  ),
  Product(
      Id: "10",
      Name: "Women High Heel",
      imagePick: "assets/icon/women high-heels.png",
      items: [
        Item(id: "1", imagePath: "assets/Women Heels/1.webp", name: "Yellow High Heel", price: 3000 , Description: "This is Yellow High Heel"  ),
        Item(id: "2", imagePath: "assets/Women Heels/2.png", name: "Stylo High Heel", price: 3500 , Description: "This is Stylo High Heel"),
        Item(id: "3", imagePath: "assets/Women Heels/3.png", name: "Silver High Heel", price: 2500 , Description: "This is Silver High Heel"),
        Item(id: "4", imagePath: "assets/Women Heels/4.jpg", name: "Shinning High Heel", price: 4000 , Description: "This is Shinning High Heel"),
        Item(id: "5", imagePath: "assets/Women Heels/5.png", name: "Dark Red", price: 2000, Description: "This is Dark Red High Heel" ),
        Item(id: "6", imagePath: "assets/Women Heels/6.png", name: "Shinning Black", price: 1500, Description: "This is Shinning Black High Heel" ),
        Item(id: "7", imagePath: "assets/Women Heels/7.png", name: "Pink High Heel", price: 2000, Description: "This is Pink High Heel" ),
        Item(id: "8", imagePath: "assets/Women Heels/8.jpg", name: "Red High Heel", price: 2300, Description: "This is Red High Heel" ),
        Item(id: "9", imagePath: "assets/Women Heels/9.png", name: "Light Pink", price: 1800, Description: "This is Light Pnk High Heel" ),
        Item(id: "10", imagePath: "assets/Women Heels/10.png", name: "Black High Heel", price: 5000, Description: "This is Black High Heel" ),
      ]
  ),
  Product(
      Id: "11",
      Name: "Women Pents",
      imagePick: "assets/icon/women pant.png",
      items: [
        Item(id: "1", imagePath: "assets/Women Pents/1.jpeg", name: "Black Narrow", price: 4000 , Description: "This is Black Narrow Pent"  ),
        Item(id: "2", imagePath: "assets/Women Pents/2.png", name: "Blue Jean", price: 2000 , Description: "This is Blue Jean Pent"),
        Item(id: "3", imagePath: "assets/Women Pents/3.png", name: "Blue Jean", price: 2300 , Description: "This is Blue Jean Pent"),
        Item(id: "4", imagePath: "assets/Women Pents/4.png", name: "Black Jean", price: 2500 , Description: "This is Black Jean Pent"),
        Item(id: "5", imagePath: "assets/Women Pents/5.png", name: "Grey Jean", price: 1800 , Description: "This is Grey Jean Pent"),
        Item(id: "6", imagePath: "assets/Women Pents/6.png", name: "Blue Jean", price: 1500 , Description: "This is Blue Jean Pent"),
        Item(id: "7", imagePath: "assets/Women Pents/7.png", name: "Black Jean", price: 2000 , Description: "This is Black Jean Pent"),
        Item(id: "8", imagePath: "assets/Women Pents/8.png", name: "Black Jean", price: 1500 , Description: "This is Black Jean Pent"),
        Item(id: "9", imagePath: "assets/Women Pents/9.png", name: "Light Blue", price: 2500 , Description: "This is Light Blue Jean Pent"),
        Item(id: "10", imagePath: "assets/Women Pents/10.png", name: "Dark Blue", price: 2300 , Description: "This is Dark Blue Pent"),
        Item(id: "11", imagePath: "assets/Women Pents/11.png", name: "Blue Jean", price: 1900 , Description: "This is Blue Jean Pent"),
      ]
  ),

];

