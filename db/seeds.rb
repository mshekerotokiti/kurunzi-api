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
  #Laptops
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
    name:'Hp 240 G8 Notebook',price:35000, description:'Intel core i5,10th Generation, 
    8Gb  Ram DDR4 , 256GB SSD plus 1 Tb(1,000 GB)HDD 
    14 inches size frameless ',image_url:'https://mombasacomputers.b-cdn.net/wp-content/uploads/2022/06/Hp-240-G8-Intel-Core-i5-10th-Gen-4GB-RAM-1TB-HDD-14-Inches-FHD-Display.jpg',category_id:laptops.id
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
    name:' New Hp 250 g8 ', price:28000, description:'intel Celeron , 8gb  ram , 256 gb ssd, 15 inches frameless, 2 cores, Intel hd graphics,2 usb ports, type c port, hdmi port, numerical keyboard ',image_url:'https://zurimall.co.ke/wp-content/uploads/2023/03/Artboard-1-copy-2@300x-100-2023-04-01T013459.124.jpg.webp', category_id:laptops.id
  },
  {
    name:'Hp 250 G8 Notebook ',price:65000, description:'Intel core i7 11th Generation,  16 Gb Ram DDR4  512GB SSD (8 CPUs), 15.6 Inches size, numerical keyboard with hmdi port and type c port ',image_url:'https://support.hp.com/wcc-assets/document/images/834/c06951531.png', category_id:laptops.id
  },
  {
    name:'Hp 250 G7 Notebook', price: 24000, description:'Intel Corei3 7th gen processor, 15 inches , 4gb ram , 1 tb hdd 7200 rpm', image_url:'https://support.hp.com/wcc-assets/document/images/896/c06687166.png', category_id:laptops.id
   },
   {
    name:'Hp 250 G7 Notebook', price:45000 , description:'Intel corei5 10th gen processor, 2gb nvidia mx110 dedicated graphics, 16gb ram , 512 gb Nvme ssd, full hd ', image_url:'https://www.fgee.co.ke/wp-content/uploads/2021/07/portatil_6BP64EA_01_l.jpg', category_id:laptops.id
   },
   {
    name:'Hp Probook 640 G1', price:20500 , description:'Intel corei5 4gb ram , 500gb hdd , 14 inches, 2.5Ghz  ', image_url:'https://www.avistel.co.ke/wp-content/uploads/2023/01/HP-ProBook-650g1-i5-4GB500GB-1.webp', category_id:laptops.id
   },
   {
    name:'Hp Notebook 15', price: 27500, description:'intel corei5 7th gen processor, 8gb ram ddr4, 15 inches , numerical keyboard, 500gb hdd 7200 rpm (7200 rpm) , long lasting battery ', image_url:'https://zurimall.co.ke/wp-content/uploads/2023/08/Untitled-3678-2.jpg.webp', category_id:laptops.id
   },
   {
    name:'Hp Probook 430 G7', price: 45000, description:'Intel corei5 16gb ram , full hd display, 256gb ssd , 10th generation processor ', image_url:'https://mtech.co.ke/media/products/2023/07/03993.jpg', category_id:laptops.id
   },
   {
    name:'Hp Notebook 14 AMD 9 ', price:23500 , description:'AMD 9 , 4gb ram , 128 Gb ssd, with radeon 5 graphics, 14 inches ,hdmi port, 3 usb port, type c port ', image_url:'https://mtech.co.ke/media/products/2023/07/39390.jpg', category_id:laptops.id
   },
   {
    name:'Hp Probook 11 G2', price:20500 , description:'intel corei3 6th gen , touchscreen,8gb ram ,1 tb hdd, hdmi port, VGA port ', image_url:'https://www.onsidetechsolutions.co.ke/wp-content/uploads/2023/06/HP-Probook-X360-11G2-I5-10th-Gen-8GB-Ram-256GB-SSD-Touch.jpeg', category_id:laptops.id
   },
   

  #Accessories
  {
   name:'Logitech Keyboard K120', price:2500 , description:'Wired Keyboard for Windows, Plug and Play, Full-Size, Spill-Resistant, Curved Space Bar, Compatible with PC, Laptop - Black', image_url:'https://resource.logitech.com/w_692,c_lpad,ar_4:3,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/k120/gallery/k120-gallery-01-new.png?v=1', category_id:accessories.id
  }, 
  {
   name:'TP-Link 5-port Desktop Switch', price:1200 , description:'5 10/100Mbps Auto-Negotiation RJ45 ports, Supports Auto MDI / MDIX,
   Green Ethernet technology,
   IEEE 802.3x flow control,
   Plug and play, no configuration required', image_url:'https://www.amtel.co.ke/wp-content/uploads/2020/11/TL-SF1005D-5-Port.jpg', category_id:accessories.id
  },
  {
   name:'TP-Link 8-port Desktop Switch', price: 1500, description:'8 10/100Mbps auto-negotiation RJ45 ports,
   Supports auto MDI/MDIX
   IEEE 802.3x flow control,
   Plug and play, no configuration required', image_url:'https://www.fgee.co.ke/wp-content/uploads/2021/07/TP-Link-TL-SF1008D-b.jpg', category_id:accessories.id
  },

  {
    name:'Hp Optical Wireless Mouse', price:500 , description:'Comfortable and durable non-slip wheel design
    light 60g button design,
    Game players level optical sensors,
    Precise optical navigation technology
    Ergonomic design
    High resolution up to 600-1600 DPI', image_url:'https://skywave.co.ke/wp-content/uploads/2022/08/WirelessMouse.jpg', category_id:accessories.id
   },
 
   {
    name:'Hp optical Wired Mouse', price: 300, description:'Usb mouse
    3 buttons,
    1000DPI Optical tracking,
    Supports any windows,
    Smooth motion without a mousepad,
    Use in the left or right hand', image_url:'https://lucidtechcentre.com/wp-content/uploads/2023/03/l19-2.webp', category_id:accessories.id
   },
 
   {
    name:'Wireless Reachargeable Mouse', price: 1000, description:'Distance: 10 meters I
    interface: USB,
    Color: Black,White,Gold,Grey,
    DPI: 800-1200-1600,
    Power Supply: Built-in rechargeable battery 500mAh,
    Button: 4 Buttons,
    Size:112 x 58 x 25mm', image_url:'https://www.territories.co.ke/wp-content/uploads/2023/03/Wireless-Rechargeable-Mouse-1.jpg', category_id:accessories.id
   },
 
   {
    name:'JBL Tune 510 BT', price: 3000, description:'Wireless On-Ear Headphones, with Purebass Sound', image_url:'https://i.ebayimg.com/images/g/JWIAAOSwX7FifA1T/s-l1600.webp', category_id:accessories.id
   },
 
   {
    name:'Oraimo Youth Buds ', price:3500 , description:'Wireless Headphones, 48hours listen,Ear cup mounted controls, Black', image_url:'https://i.roamcdn.net/hz/ed/listing-thumb-543w/607d22e215044655a4d195cdb354a7bb/-/horizon-files-prod/ed/picture/qgq9r988/f10ef0e7a6b99208f0d7db1576e1a7dfd2c8e2c5.jpg', category_id:accessories.id
   },
 
   {
    name:'Celebrat A18 BT V5.0', price: 3500, description:'Wireless Headphones, Bluetooth connectivity,Light weight, noise reduction, deep bass , dual mode(wired-wireless), 10hours playtime', image_url:'https://p.globalsources.com/IMAGES/PDT/B1165302410/Headset-wireless-headset.jpg', category_id:accessories.id
   },
 
   {
    name:'Bose QC 39 BT Headphones', price:3000 , description:'Bluetooth connectivity, Aux slot, Memory card slot, Noise cancelling, FM Radio, Comfortable to wear and can be folded', image_url:'https://dukaan.b-cdn.net/700x700/webp/projecteagle/images/a508edb6-f99a-40fb-b647-5b78052b726b.jpg', category_id:accessories.id
   },
   {
    name:'JBL Tune 700 BT ', price:3200 , description:'Pure Bass, 27hours battery life, Multi-point connectivity, foldable, charging cable available', image_url:'https://www.phoneplacekenya.com/wp-content/uploads/2021/11/jbl-tune-700BT-Headphones-a.jpg', category_id:accessories.id
   },
   {
    name:'Air Max2 Headphones', price:3000 , description:'Active noise reduction, charging cable, in ear detection,waterproof, working distance 10-15 meters', image_url:'https://trytoo.com.pk/cdn/shop/files/IMG-0340.jpg?v=1706007486&width=1445', category_id:accessories.id
   },
   {
    name:'Dre Beats Studio 3 Headphones', price: 2500, description:'High performance headphones, noice cancelling, compatible with iOS and android devices, 22hours battery life, wireless', image_url:'https://cdsassets.apple.com/live/7WUAS350/images/beats/beats-setup-studio3-hero.jpg', category_id:accessories.id
   },
   {
    name:'Sound Core by Anker Mini Speaker', price: 5500, description:'Size-Defying Sound and Bass,
    Customizeable EQ with Soundcore App,
    Beat-Driven Light Show,
    PartyCast Technology,
    IPX7 Waterproof,
    15-Hour Playtime', image_url:'https://i0.wp.com/peoplestelecom.qa/storage/2022/12/03-32.jpg?fit=800%2C800&ssl=1', category_id:accessories.id
   },

   {
    name:'Mega Bass F10 Colourful Speaker', price: 2500, description:'Bluetooth, 15 hours playtime', image_url:'https://sc04.alicdn.com/kf/H3373f2f9a04a4ea780c8e756b724882bN.jpg', category_id:accessories.id
   },

  #  Desktops
  #  {
  #   name:'Elitedesk 900 SSF', price: 35000, description:' Desktop PC: Intel Core i7-6500 Quad-Core 3.2GHz | 500GB HDD | 8GB RAM | Windows 10 Professional', image_url:'https://guavastores.com/storage/2022/04/hp-800g2-ssf.jpg', category_id:desktops.id
  #  },
   {
    name:'Dell Optilex 3050', price: 15000, description:'Intel core i3 7th  gen , 8gb ram ddr4 , 500Gb hdd 7200 rpm, with hdmi port, 3.4 GHz ', image_url:'https://www.fgee.co.ke/wp-content/uploads/2021/07/Dell-Optiplex-3050-ci5-4gb-500gb.jpg', category_id:desktops.id
   },
   {
    name:'Lenovo Thinkcentre M 80s', price: 45000, description:'ntel corei5 10th generation , 8gb ddr4 (upgradable) , 512 Gb Nvme ssd , comes with type c port,8  USB ports, HDMI port, display port, VGA port', image_url:'https://p1-ofp.static.pub/medias/bWFzdGVyfHJvb3R8NTY3Nzh8aW1hZ2UvanBnfGg1OS9oMGIvMTA5MjAxNzkyNjk2NjIuanBnfGE2OTIxMGE4OGUzNjljYmZjZDA4NTEzOThkOWQ1NzA4MTcyMzJmOTI0MTY0NmY0MDUzZDc5ZWVkYmRlNTJlMjA/bWFzdGVyfH.jpg', category_id:desktops.id
   },
   {
    name:'Hp Prodesk 600 G3', price:31500 , description:'Intel core i5 - 7th gen
    4GB DDR4 RAM ,
    500GB HDD, 
    3.5Ghz processor speed,
     Windows 10 pro 64-Bit', image_url:'https://mtech.co.ke/media/products/2024/04/2002.jpg', category_id:desktops.id
   },
   {
    name:'Lenovo M710q', price: 19500, description:'Intel core i5 6th generation,
    16GB DDR4 RAM (expandable to 32GB),
    256GB NVME SSD ,
    3.2Ghz processor speed ,
    6 usb 3.o ports ,
    2 display ports ,
    Ethernet cable ,
    Windows 10 pro, 
    2021 microsoft office ,', image_url:'https://p3-ofp.static.pub/fes/cms/2022/09/23/tuqhmlqr5g85dt0mxaoreax10rjtjr859744.jpg', category_id:desktops.id
   },
  
   
  
       



  # Add more products as needed
]
KurunziShop.create(products)
Item.create(products)

puts 'All data seeded successfully.'
puts 'done seeding'
