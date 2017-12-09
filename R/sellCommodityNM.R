ActionString.sellCommodityNMO <- function(x) {
  paste0("(sell-commodity ", x[[1]][1], ")")
}

ConditionString.sellCommodityNMO <- function(x) {
  paste0("(", x[[1]][1], "-amount > ", x[[1]][2], ")",
         "\n\t(commodity-selling-price ", x[[1]][1], " > ", x[[1]][3], ")",
         "\n\t(gold-amount < ", x[[1]][4], ")")
}

Mutate.sellCommodityNMO <- function(x) {
  MutateTemplate(x, list(commodity(), Pick1(0:5000), Pick1(0:300), Pick1(0:800)))
}


ActionString.buyCommodityNMO <- function(x) {
  paste0("(buy-commodity ", x[[1]][1], ")")
}

ConditionString.buyCommodityNMO <- function(x) {
  paste0("(", x[[1]][1], "-amount < ", x[[1]][2], ")",
         "\n\t(commodity-buying-price ", x[[1]][1], " < ", x[[1]][3], ")",
         "\n\t(gold-amount > ", x[[1]][4], ")")
}

Mutate.buyCommodityNMO <- function(x) {
  MutateTemplate(x, list(commodity(), Pick1(0:1000), Pick1(0:200), Pick1(100:3000)))
}
