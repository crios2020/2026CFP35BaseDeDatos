print("-- Test MongoDB --")

#pip install pymongo
#pip install dnspython

from pymongo import MongoClient

#para una conexión local
#client=MongoClient("mongodb://localhost:27017/")

#Conexión a server remoto
client = MongoClient("mongodb://user:java@192.168.104.148:27017/")
db = client["mi_base"]
coleccion = db["usuarios"]
print("---------------------------------------------------------")
print(db)
print("---------------------------------------------------------")
print(db.list_collection_names)
print("---------------------------------------------------------")

#creamos una conexión (db)
coll=db.get_collection("usuarios")
#print(coll)
print(coll.estimated_document_count())
print("---------------------------------------------------------")

# Insertamos un doc (registro)
informacionUsuario={
    "nombre" : "Garcia",
    "direccion" : "Medrano 2345",
    "codigo_postal" : "14545",
    "ciudad" : "Buenos Aires" 
}
#coll.insert_one(informacionUsuario)

informacionUsuario2={
    "nombre" : "Martín",
    "dirección" : "Algarrobo",
    "codigo postal" : "14545",
    "ciudad" : "Buenos Aires" 
}
#coll.insert_one(informacionUsuario2)

informacionUsuarios = [
    {
    "nombre" : "García",
    "dirección" : "Calle Ejemplo 10",
    "código postal" : "46006",
    "ciudad" : "Valencia"
    },
    {
    "nombre" : "Rodríguez",
    "dirección" : "Calle Principal 1",
    "código postal" : "28007",
    "ciudad" : "Madrid"
    },
    {
    "nombre" : "González",
    "dirección" : "Calle Amplia 2",
    "código postal" : "36002",
    "ciudad" : "Pontevedra"
    }
]
# coll.insert_many(informacionUsuarios)

print("---------------------------------------------------------")
# Imprimimos el contenido de la base (select * from tabla)
for doc in coll.find():
    print(doc)

print("---------------------------------------------------------")

#filtrado de registros (where)
datos=coll.find({"ciudad" : "Buenos Aires"})
for doc in datos:
    print(doc)


