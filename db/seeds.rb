# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

items = Item.create([
    {
        name: "SAMBUSA PLATTER (DEEP-FRIED PATTIES)",
        image_url: "https://i.imgur.com/UAIqhmL.jpeg",
        price: "$8",
        description: "Two traditional Somali-style deep-fried patties made with aromatic herbs, seasoning and served with spicy Bisbaas dipping sauce; choose from a selection of veggie, beef or chicken"
    },
    {
        name: "VEGETABLE SABAAYAD (VEGETABLE WRAP)",
        image_url: "https://i.imgur.com/HBP3uIC.jpeg",
        price: "$8",
        description: "Homemade flatbread filled with garden-picked veggies and served with cilantro "
    },
    {
        name: "CHICKEN HARLEM",
        image_url: "https://i.imgur.com/R2t0FoT.png",
        price: "$16",
        description: "Broiled chicken seasoned with spinach and served with linguine pasta"
    },
    {
        name: "CHICKEN SUQAAR (SAUTEED CHICKEN)",
        image_url: "https://i.imgur.com/rJTUaW6.jpeg",
        price: "$17",
        description: "Sautéed chicken seasoned with aromatic house spices and served with rice or flatbread; a traditional southern Somali dish"
    },
    {
        name: "MANGO CURRY CHICKEN (VEGGIE OPTION AVAILABLE)",
        image_url: "https://i.imgur.com/PJB2apa.jpg",
        price: "$16",
        description: "Slow-cooked chicken drizzled with mango curry sauce and served with a side of vegan biryani; chicken can be replaced with vegetables"
    },
    {
        name: "HILIB ARI (ROASTED GOAT)",
        image_url: "https://i.imgur.com/hpMlMeB.jpeg",
        price: "$18",
        description: "Roasted goat served with rice and spicy Bisbaas dipping sauce"
    },
    {
        name: "CHAPATI (THIN FLATBREAD)",
        image_url: "https://i.imgur.com/bvACDFz.jpeg",
        price: "$2",
        description: "Thin, flour flatbread served flaky on the outside and soft on the inside"
    },
    {
        name: "MALAB IYO MALAWAX (SWEET CREPES)",
        image_url: "",
        price: "$6",
        description: "Two crepes drizzled with honey and dusted with sugar; a popular Somali dessert."
    }
])

reviews = Review.create([
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 5,
        item: items.first
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 5,
        item: items.first
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 4,
        item: items.second
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 3,
        item: items.second
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 3,
        item: items.third
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 5,
        item: items.third
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 5,
        item: items.fourth
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 5,
        item: items.fourth
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 3,
        item: items.fifth
    },
    {
        title: Faker::Name.unique.name,
        description: Faker::Restaurant.review ,
        score: 4,
        item: items.fifth
    }
])