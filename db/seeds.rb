# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Subject.create!(
[
 {
   "id": 1,
   "title": "統計基礎",
   "weekday": "friday",
   "period": 3,
 },
 {
    "id": 2,
    "title": "生物",
    "weekday": "wednesday",
    "period": 2,
  }
 ]
)


Teacher.create!(
  [
    {
      "id": 1,
      "name": "山田太郎"
    },
    {
      "id": 2,
      "name": "鈴木加奈子"
    }
  ]
 )


Lectuer.create!(
  [
     {
       "id": 1,
       "title": "ガイダンス",
       "date": "2020-04-23"
     },
     {
       "id": 2,
       "title": "確率変数と確率分布",
       "date": "2020-04-30"
     },
     {
       "id": 3,
       "title": "生物物理学",
       "date": "2020-04-07"
     },
     {
       "id": 4,
       "title": "分子細胞生物理学",
       "date": "2020-04-14"
     }
  ]
)
