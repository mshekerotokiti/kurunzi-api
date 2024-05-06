puts 'Starting seed process...'

# Destroy existing records to avoid duplicates
BlogPost.destroy_all
Service.destroy_all
KurunziShop.destroy_all
Category.destroy_all

# Creating sample categories
laptops = Category.create(name: 'laptops')
desktops = Category.create(name: 'Desktops')
accessories = Category.create(name: 'Accessories')
cameras = Category.create(name: 'Cameras')
play_stations = Category.create(name: 'Play Stations')
uncategorized = Category.create(name: 'uncategorized')

# Sample blog posts
puts 'Seeding Blog Posts...'
BlogPost.create([
  {
    image_url: "https://miro.medium.com/v2/resize:fit:1400/format:webp/1*pnZtQ6GTlK7DKtI1OI-c8Q.jpeg",
    title: "TROUBLESHOOTING AND REPAIRS",
    body: "Let’s dive in and get those machines purring again! 🚀💻 No problem is too big or too small!.",
    published_at: Time.now - 1.day,
    medium_link: "https://medium.com/@kurunzitechmedia/troubleshooting-and-repairs-9d36437ceb8a"
  },
  {
    image_url: "https://miro.medium.com/v2/resize:fit:1400/format:webp/1*Qx42orXTlZ8pALXknnEkcw.jpeg",
    title: "CENTRAL PROCESSING UNIT(CPU) AND MONITORING IT’S USAGE",
    body: "The CPU in a computer is like an engine in your car or a brain in your skull.",
    published_at: Time.now - 2.day,
    medium_link: "https://medium.com/@kurunzitechmedia/central-processing-unit-cpu-and-monitoring-its-usage-d37199e8e34d"
  },
  {
    image_url: "https://miro.medium.com/v2/resize:fit:1400/format:webp/1*PyRU64OOItGz5o-ci2veiQ.jpeg",
    title: "REFURBISHED VS USED /PRE-OWNED laptops.id",
    body: "What is a refurbished laptop and is it recommended? This will guide you when buying your PC soon.",
    published_at: Time.now - 3.day,
    medium_link: "https://medium.com/@kurunzitechmedia/difference-between-refurbished-and-used-pre-owned-laptops.id-bdb7095284ef"
  }
])

# Sample services data
puts 'Seeding Services...'
services = [
  { name: "Laptop Sales", description: "Wide range of Laptops from top brands" },
  { name: "Laptop Repairs", description: "Hardware and software troubleshooting, upgrades, and repairs"},
  { name: "Desktop Computer Sales", description: "Customizable desktop computers for home and business"},
  { name: "Desktop Computer Repairs", description: "Desktop maintenance, virus removal, and upgrades"},
  { name: "Web Development", description: "Custom website and web application development"},
  { name: "Computer Accessories", description: "Laptop bags, chargers, keyboards, and more"}
]
Service.create(services)

# Sample products (KurunziShop items)
puts 'Seeding Products...'
products = [
  { name: 'Apple Macbook Air 2012', price: 25000, description: 'Intel Celeron 8th generation with 4gb ram ddr4 ,1tb hdd 7200 rpm , 15 inches , hdmi and 3 usb ports, one year warranty ', image_url: 'https://www.trustedreviews.com/wp-content/uploads/sites/54/2012/06/IMG-5607-1-1.jpg', category_id: laptops.id },

  { name: 'Apple Macbook Pro 2015', price: 55000, description: ' Intel corei7 15 inches , with 8gb ram , 1tb hdd , 7200 rpm,  plus 256gb ssd , 2 gb dedicated nvidia graphics full hd , VGA  and hdmi port.', image_url: 'https://m.media-amazon.com/images/I/51wIq8VeIQS._AC_UF1000,1000_QL80_.jpg', category_id: laptops.id },

  {
    name: 'Apple Macbook Air 2015 ', 
    price: 32000, 
     description: 'Intel corei5 11th gen , 8gb ram ddr4, 512 Gb ssd, 3 usb ports, 15 inches , hdmi port.', 
    image_url: 'https://i.ebayimg.com/images/g/z6MAAOSw3ihjDXaU/s-l1600.jpg', category_id:laptops.id
  },
  {
    name: 'Asus E410',price: 18500, description: ' Intel corei7 15 inches , with 8gb ram , 1tb hdd , 7200 rpm,  plus 256gb ssd , 2 gb dedicated nvidia graphics full hd , VGA  and hdmi port.', 
  image_url: 'https://www.phone-x.co.ke/wp-content/uploads/2022/07/89911632319069.jpg', category_id:laptops.id
  },
  {
    name: 'Asus 541xl', price: 33500,  description: ' Intel corei7 15 inches , with 8gb ram , 1tb hdd , 7200 rpm,  plus 256gb ssd , 2 gb dedicated nvidia graphics full hd , VGA  and hdmi port.', image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnuN9URz0JjteiAqUV9J2yOVGnpEQuTNa4KFSI8Z6Wvg&s', category_id:laptops.id
  },
  {
  name: 'Lenovo Ideapad 3', price: 50000, description: ' Intel corei7 15 inches , with 8gb ram , 1tb hdd , 7200 rpm,  plus 256gb ssd , 2 gb dedicated nvidia graphics full hd , VGA  and hdmi port.', 
  image_url: 'https://dnsl.co.ke/wp-content/uploads/2023/01/82H8015PUE.jpeg',category_id:laptops.id
  },
  {
    name: 'Lenovo Thinkpad x1 yoga', price: 47000, description: ' Intel corei7 15 inches , with 8gb ram , 1tb hdd , 7200 rpm,  plus 256gb ssd , 2 gb dedicated nvidia graphics full hd , VGA  and hdmi port.', image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRX5KxnsAH-NIbbJa0JIUMecLtWpD9GldPnpirsU5N2A&s',category_id:laptops.id
  },
  {
    name:'Dell latitude 5430',price:70000, description:'',image_url:'https://bitratedigital.co.ke/wp-content/uploads/2023/02/DELL-LATITUDE-5430-CORE-I5-16GB-512GB-SSD-3-1-scaled.jpg.webp',category_id:laptops.id
  },
  {
    name:'Dell latitude 5430', price: 70000, description:'intel corei7 12th gen 16gb ram , 512gb ssd , backlit keyboard, 13 inches , full hd', image_url:'https://www.dataworld.co.ke/wp-content/uploads/2023/05/LAT-5430-2.jpg',category_id:laptops.id
  },
  {
    name:'Dell Inspiron 15 ', price: 45000, description:'intel corei5 11th gen , 8gb ram ddr4, 512 Gb ssd, 3 usb ports, 15 inches , hdmi port ', image_url:'https://www.fgee.co.ke/wp-content/uploads/2023/08/Untitled-design-2023-08-03T144934.509.png', category_id:laptops.id
  },
  {
    name:'Dell latitude 7280', price: 30000, description:'intel corei7 6th gen , 8GB ram ddr4 , 2.8Ghz , 256 Gb ssd , full hd , backlit keyboard , 12.5 inches ', image_url:'https://www.laptopsfactory.co.ke/wp-content/uploads/2024/03/Dell-7280.png', category_id:laptops.id
  },
  {
    name:'Lenovo Thinkbook 14', price:50000, description:'Intel corei5 11th gen, 8gb ram , 512 gb ssd, 14 inches ',image_url:'https://mombasacomputers.b-cdn.net/wp-content/uploads/2022/02/Lenovo-ThinkBook-14-G2-ITL-Intel-Core-i5-11th-Gen-8GB-RAM-512GB-SSD-14-Inches-FHD-Display-2.jpg', category_id:laptops.id
  },
  {
   name:'Lenovo ThinkPad E14', price:65000, description:'Intel corei7 11th gen , 16Gb ram , 512 Gb ssd , backlit keyboard, full hd , hdmi , type c and 3 usb port ', image_url:'https://zurimall.co.ke/wp-content/uploads/2023/05/Untitled-1-2.jpg.webp', category_id:laptops.id
  },
  {
   name:'Lenovo ThinkPad x13 ', price: 55000, description:'ultra slim laptop.Processor : 11th  Generation Intel® Core™ i5-Integrated Intel® Iris® Xe Graphics, 8 GB LPDDR5-6400MHz (Soldered),256 GB SSD M.2 2280 PCIe Gen4 TLC Opal',image_url:'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8MjY0NjY0fGltYWdlL2pwZWd8aGZhL2hlNC8xMDgxMjE3MDMzODMzNC5qcGd8MjY5MmIxNTNmYjU5ZWQ4ZjBjOGI4YTIwMjVjYzk3ZTYwMDUyNWM5N2NmOTlkNjVmZjcxNGEzNzM3ZDA5ODQ2Yw/lenovo-laptop-thinkpad-x13-gallery-2.jpg', category_id:laptops.id
  },
  {
    name:'Hp 250 g8 ', price:28000, description:'intel Celeron , 8gb  ram , 256 gb ssd, 15 inches frameless, 2 cores, Intel hd graphics,2 usb ports, typ  c port, hdmi port, numerical keyboard ',image_url:'https://zurimall.co.ke/wp-content/uploads/2023/03/Artboard-1-copy-2@300x-100-2023-04-01T013459.124.jpg.webp', category_id:laptops.id
  },
  {
    name:'Hp 250 G8 Notebook ',price:65000, description:'Intel core i7 11th Generation  16 Gb Ram DDR4  512GB SSD (8 CPUs), 15.6 Inches size, numerical keyboard with hmdi port and type c port ',image_url:'https://support.hp.com/wcc-assets/document/images/834/c06951531.png', category_id:laptops.id
  },
  {
    name:
  },


  # Add more products as needed
]
KurunziShop.create(products)
Item.create(products)

puts 'All data seeded successfully.'
puts 'done seeding'
