from pysnmp.hlapi import *

snmp_engine = SnmpEngine()
auth_data = UsmUserData('kullanici_adi', 'sifre', 'auth_key', 'auth_protocol', 'priv_key', 'priv_protocol')

switch_ip = '1.1.1.1' # örnek ip
oid = '1.1.1.1.1.1.1.1.1' # örnek oid

iterator = getCmd(
    snmp_engine,
    auth_data,
    UdpTransportTarget((switch_ip, 161)),
    ContextData(),
    ObjectType(ObjectIdentity(oid))
)

errorIndication, errorStatus, errorIndex, varBinds = next(iterator)

if errorIndication:
    print(f'Hata: {errorIndication}')
elif errorStatus:
    print(f'Hata: {errorStatus.prettyPrint()} at {errorIndex}')
else:
    for varBind in varBinds:
        print(f'{varBind.prettyPrint()}'
