use admin

db.HW1.find({
      Genre: "Male",
  })

db.HW1.find({
      Genre: "Female",
  })

 db.HW1.aggregate({
   $group: {
     _id: "$Genre",
     totalIncome: { $sum: "$Annual Income (k$)" },
     averageIncome : {$avg: "$Annual Income (k$)"},
     count: {$sum : 1},
     averageSpendingScore: {$avg: "$Spending Score (1-100)"}
   }
 })


 db.HW1.aggregate([{
    $match: {
      Age: 20
   }},
   {$group: {
     _id: "$Genre",
     totalIncome: { $sum: "$Annual Income (k$)" },
     averageIncome : {$avg: "$Annual Income (k$)"},
     count: {$sum : 1},
     averageSpendingScore: {$avg: "$Spending Score (1-100)"}
   }}
 ])

 db.HW1.aggregate([{
   $match: {
     Age: { $gt: 20, $lt: 30 }
  }},
  {$group: {
    _id: "$Genre",
    totalIncome: { $sum: "$Annual Income (k$)" },
    averageIncome : {$avg: "$Annual Income (k$)"},
    count: {$sum : 1},
    averageSpendingScore: {$avg: "$Spending Score (1-100)"}
  }}
])

 db.HW1.aggregate([{
   $match: {
     Age: { $gt: 60}
  }},
  {$group: {
    _id: "$Genre",
    totalIncome: { $sum: "$Annual Income (k$)" },
    averageIncome : {$avg: "$Annual Income (k$)"},
    count: {$sum : 1},
    averageSpendingScore: {$avg: "$Spending Score (1-100)"}
  }}
])

db.HW1.deleteOne({CustomerID : "0202"})

db.HW1.deleteOne({CustomerID : "0201"})

db.HW1.insertOne({
Age: 25,
"Annual Income (k$)" : 20,
CustomerID: "0202",
Genre: "Male",
"Spending Score (1-100)": 45,
})

db.HW1.getIndexes()

db.HW1.createIndex(
{"Annual Income (k$)": 1}
)

db.HW1.dropIndex(
{"Annual Income (k$)": 1}
)

db.HW1.getIndexes()

db.HW1.createIndex(
{"Genre": 1}
)

db.HW1.createIndex(
{"Age": 1}
)