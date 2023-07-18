# Product.create!([
#   { name: "Cast Iron Wok", price: "65.0", description: "A cast iron wok, careful it gets hot!", inventory: "13.0" },
#   { name: "Pot", price: "88.0", description: "A seafoam green cooking pan.", inventory: "8.0" },
#   { name: "Spatula", price: "8.0", description: "A yellow silicone spatula.", inventory: "20.0" },
#   { name: "Wusthof 8 inch chef's knife", price: "170.0", description: "A German chef knife, very sharp!", inventory: "1.0" },
#   { name: "Measuring Spoons", price: "17.0", description: "A colorful set of measuring spoons.", inventory: "55.0" },
#   { name: "Pan", price: "45.0", description: "A lovely red frying pan.", inventory: "23.0" },
#   { name: "Mapo Tofu", price: "15.0", description: "Mapo Tofu just like at the Szechuan restaurants. It warms the belly.", inventory: "1.0" },
#   { name: "3 Piece Dark Plate", price: "12.0", description: "Crispy, tasty, delicious! Fried chicken with 2 sides!", inventory: "3.0" },
#   { name: "Kitchen_World", email: "kitchenworld@info.com", phone_number: "3122345678" },
#   { name: "Kingdom_Foods", email: "kingdomfoods@info.com", phone_number: "3123123122" },
# ])
Image.create(
  [ #pot 1 and 2
    { url: "https://assets.wfcdn.com/im/1668494/resize-h445%5Ecompr-r85/2245/224575412/Rio+Healthy+Nonstick+2+qt.+Saucepan+with+Lid.jpg", product_id: 1 },
    { url: "https://assets.wfcdn.com/im/58423059/resize-h445%5Ecompr-r85/2245/224575417/Rio+Healthy+Nonstick+2+qt.+Saucepan+with+Lid.jpg", product_id: 1 },
    #spatula 1 and 2
    { url: "https://cdnimg.webstaurantstore.com/images/products/large/152156/462253.jpg", product_id: 2 },
    { url: "https://cdnimg.webstaurantstore.com/images/products/large/152156/755828.jpg", product_id: 2 },
    #chefs knife 1-2
    { url: "https://cdn.shopify.com/s/files/1/0372/6232/7941/products/1030100120.png?v=1635407724", product_id: 3 },
    { url: "https://cdn.shopify.com/s/files/1/0372/6232/7941/products/Wu_estof_Classic_8-inch_Chef_Bobbi_Lin_0348x_58ab572f-cc6f-40b4-9597-451149205c05.jpg?v=1650577404", product_id: 3 },
    #measuring spoons 1-2
    { url: "https://m.media-amazon.com/images/I/61kf4g72neL._AC_SX679_.jpg", product_id: 4 },
    { url: "https://m.media-amazon.com/images/I/51OnxTdZyuL._AC_SX679_.jpg", product_id: 4 },
    #wok 1 2
    { url: "https://secure.lodgecastiron.com/on/demandware.static/-/Sites-www-lodge-com/default/dw1e15445e/images/L14W/L14W_14-Inch-Wok_Whitetable1_800x800_WEB.jpg", product_id: 5 },
    { url: "https://secure.lodgecastiron.com/on/demandware.static/-/Sites-www-lodge-com/default/dw50d41928/images/L14W/L14W.png", product_id: 5 },
    #pan 1-2
    { url: "https://assets.wfcdn.com/im/42882413/resize-h445%5Ecompr-r85/2253/225375216/Ninja+Foodi+Neverstick+Ceramic+Non+Stick+Frying+Pan.jpg", product_id: 6 },
    { url: "https://assets.wfcdn.com/im/17611207/resize-h445%5Ecompr-r85/1583/158330904/Ninja+Foodi+Neverstick+Ceramic+Non+Stick+Frying+Pan.jpg", product_id: 6 },
    #mapo tofu 1-2
    { url: "https://thewoksoflife.com/wp-content/uploads/2019/06/mapo-tofu-12.jpg", product_id: 7 },
    { url: "https://thewoksoflife.com/wp-content/uploads/2019/06/mapo-tofu-13.jpg", product_id: 7 },
    #chicken!
    { url: "https://s.hdnux.com/photos/01/11/42/67/19279343/7/1400x0.jpg", product_id: 8 },
    { url: "https://cdn.vox-cdn.com/thumbor/8sisjjaZ7PU7PEO4EOGPbbuKMQE=/0x0:2048x1364/1520x1013/filters:focal(1385x107:1711x433):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/60099667/19942843_1910469055876899_2603196838461514200_o.0.jpg", product_id: 8 },
  ]
)
