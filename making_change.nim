import std/tables
import std/strformat
import std/strutils


const tafawa = {"Value": 5}.toTable()
const alvan = {"Value": 10}.toTable()
const murtala = {"Value": 20}.toTable()
const wazobia = {"Value": 50}.toTable()
const awolowo = {"Value": 100}.toTable()
const bello = {"Value": 200}.toTable()
const azikiwe = {"Value": 500}.toTable()
const mai_borno = {"Value": 1000}.toTable()

const currencies = {"Mai Borno": mai_borno, "Azikiwe": azikiwe, "Bello": bello, "Awolowo": awolowo, "Wazobia": wazobia, "Murtala": murtala, "Alvans": alvan, "Tafawa": tafawa}.toOrderedTable()

echo "Enter the total cost: "
let total_cost = readLine(stdin).parseInt()
echo "Enter yout paying currency"
let bills_recieved = readLine(stdin).parseInt()

var  change = bills_recieved - total_cost

var change_array =  initTable[string, int]()

echo &"Total purchase cost: {total_cost}\namount recieved: {bills_recieved}\nchange: {change}"

while change > 0:
    for name, currency_dict in currencies:
        # echo name, currency_dict
        if change >= currency_dict["Value"]:
            change = change - currency_dict["Value"]
            var value = currency_dict["Value"]
            var key = &"{name}_{value}"
            if name notin change_array:
                change_array[key] = 1
            else:
                change_array[key].inc

echo &"Change notes will be \t{change_array}"