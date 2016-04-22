# Ruby client for the NBG Open Bank API

This repository contains a simple Ruby client for accessing the API of the National Bank of Greece.

More information on the NBG Open Bank API can be found at https://nbgdemo.portal.azure-api.net/docs/services/570d09697a995a13c499072f/

## Usage

In order to use `nbg.rb` open a Ruby terminal (e.g. `irb`) and import it with `require_relative 'nbg'`. Now you should be able to use the `nbg_client` method, by providing it with your **secondary key**, the **resource path** you would like to access and the preferred **HTTP method**.

### List available banks

```ruby
2.2.0 :001 > require_relative 'nbg'
 => true
2.2.0 :002 > response = nbg_client('mysecondarykey', '/api/banks/rest', 'GET')
 => #<Net::HTTPOK 200 OK readbody=true>
2.2.0 :003 > puts response.body
{"banks":[{"website":"215501 PIRB GR 215502 PIRB GR 222777 PBFX GR","full_name":"ΤΡΑΠΕΖΑ ΠΕΙΡΑΙΩΣ Α.Ε. (017)","short_name":"www.piraeusbank.gr","id":"5718e02aa230df500b16
c281"},{"website":"215752 BNGR","full_name":"ΤΡΑΠΕΖΑ ΤΗΣ ΕΛΛΑΔΟΣ Α.Ε. (010)","short_name":"www.bankofgreece.gr","id":"5718e02aa230df500b16c27e"},{"website":"2100-214931,3
3","full_name":"ΕΘΝΙΚΗ ΤΡΑΠΕΖΑ ΤΗΣ ΕΛΛΑΔΟΣ Α.Ε. (011)","short_name":"www.nbg.gr","id":"5710bba5d42604e4072d1e72"},{"website":"218691 ACB GR","full_name":"ALPHA BANK S.A. 
(014)","short_name":"www.alpha.gr","id":"5718e02aa230df500b16c27f"},{"website":"","full_name":"ATTICA BANK ΑΝΩΝΥΜΗ ΤΡΑΠΕΖΙΚΗ ΕΤΑΙΡΕΙΑ (016)","short_name":"www.atticabank.
gr","id":"5718e02aa230df500b16c280"},{"website":"210923 euro gr","full_name":"ΤΡΑΠΕΖΑ EUROBANK ERGASIAS Α.Ε. (026)","short_name":"www.eurobank.gr","id":"5718e02aa230df500
b16c282"},{"website":"","full_name":"ΕΠΕΝΔΥΤΙΚΗ ΤΡΑΠΕΖΑ ΕΛΛΑΔΟΣ ΑΕ (034)","short_name":"www.ibg.gr","id":"5718e02aa230df500b16c283"},{"website":"210761 / 210762","full_na
me":"ΜΠΕ ΕΝ ΠΕ ΠΑΡΙΜΠΑ ΣΕΚΙΟΥΡΙΤΙΣ ΣΕΡΒΙΣΙΣ (039)","short_name":"http://securities.bnpparibas.com","id":"5718e02aa230df500b16c284"},{"website":"","full_name":"FCA BANK G.
M.B.H. (040)","short_name":"www.fcabank.gr","id":"5718e02aa230df500b16c285"},{"website":"218385 SABK GR","full_name":"ΤΡΑΠΕΖΑ ΣΑΝΤΕΡΑΤ ΙΡΑΝ (050)","short_name":"www.sader
at.gr","id":"5718e02aa230df500b16c286"},{"website":"","full_name":"AEGEAN BALTIC BANK Α.Τ.Ε. (056)","short_name":"www.aegeanbalticbank.com","id":"5718e02aa230df500b16c287
"},{"website":"","full_name":"CREDICOM CONSUMER FINANCE ΤΡΑΠΕΖΑ Α.Ε. (057)","short_name":"www.credicom.gr","id":"5718e02aa230df500b16c288"},{"website":"","full_name":"UNI
ON DE CREDITOS INMOBILIARIOS S.A. ESTABLECIMIENTO FINANCIERO DE CREDITO (058)","short_name":"www.uci.gr","id":"5718e02aa230df500b16c289"},{"website":"","full_name":"OPEL 
BANK GmbH (059)","short_name":"www.opel.gr","id":"5718e02aa230df500b16c28a"},{"website":"","full_name":"FCE BANK PLC (061)","short_name":"www.ford.gr","id":"5718e02aa230d
f500b16c28b"},{"website":"","full_name":"THE ROYAL BANK OF SCOTLAND PLC (064)","short_name":"www.rbs.co.uk","id":"5718e02aa230df500b16c28c"},{"website":"","full_name":"ΣΥ
ΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ ΧΑΝΙΩΝ Συν. Π.Ε. (069)","short_name":"www.chaniabank.gr","id":"5718e02aa230df500b16c28d"},{"website":"222318 MIDA GR","full_name":"HSBC BANK PLC (071
)","short_name":"www.hsbc.gr","id":"5718e02aa230df500b16c28e"},{"website":"HYVEGRAA","full_name":"UNICREDIT BANK AG (072)","short_name":"www.unicreditgroup.gr","id":"5718
e02aa230df500b16c28f"},{"website":"","full_name":"ΣΥΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ ΗΠΕΙΡΟΥ Συν. Π.Ε. (075)","short_name":"www.epirusbank.gr","id":"5718e02aa230df500b16c290"},{"webs
ite":"","full_name":"ΜΠΑΝΚ ΟΦ ΑΜΕΡΙΚΑ ΝΑ (081)","short_name":"www.bankamerica.com","id":"5718e02aa230df500b16c291"},{"website":"","full_name":"CITIBANK EUROPE PLC (084)",
"short_name":"http://citigroup.com/citi/about/countrypresence/greece.html","id":"5718e02aa230df500b16c292"},{"website":"","full_name":"ΠΑΓΚΡΗΤΙΑ ΣΥΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ Συ
ν. Π.Ε. (087)","short_name":"www.pancretabank.gr","id":"5718e02aa230df500b16c293"},{"website":"-","full_name":"ΣΥΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ Ν. ΕΒΡΟΥ Συν. Π.Ε. (088)","short_nam
e":"www.evrosbank.gr","id":"5718e02aa230df500b16c294"},{"website":"","full_name":"ΣΥΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ ΚΑΡΔΙΤΣΑΣ Συν. Π.Ε. (089)","short_name":"www.bankofkarditsa.gr","
id":"5718e02aa230df500b16c295"},{"website":"","full_name":"ΣΥΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ ΠΕΛΟΠΟΝΝΗΣΟΥ Συν. Π.Ε. (**) (092)","short_name":"www.cbp.gr","id":"5718e02aa230df500b16c
296"},{"website":"","full_name":"\"ΣΥΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ ΠΙΕΡΙΑΣ \"\"ΟΛΥΜΠΙΑΚΗ ΠΙΣΤΗ\"\" Συν. Π.Ε.\" (094)","short_name":"www.pieriabank.gr","id":"5718e02aa230df500b16c2
97"},{"website":"","full_name":"ΣΥΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ ΔΡΑΜΑΣ Συν. Π.Ε. (095)","short_name":"www.dramabank.gr","id":"5718e02aa230df500b16c298"},{"website":"","full_name":
"ΤΑΜΕΙΟ ΠΑΡΑΚΑΤΑΘΗΚΩΝ & ΔΑΝΕΙΩΝ (097)","short_name":"www.tpd.gr","id":"5718e02aa230df500b16c299"},{"website":"","full_name":"ΣΥΝΕΤΑΙΡΙΣΤΙΚΗ ΤΡΑΠΕΖΑ Ν. ΣΕΡΡΩΝ Συν. Π.Ε. (0
99)","short_name":"www.serrescoopbank.gr","id":"5718e02aa230df500b16c29a"},{"website":"","full_name":"VOLKSWAGEN BANK GMBH (102)","short_name":"www.volkswagenbank.gr","id
":"5718e02aa230df500b16c29b"},{"website":"","full_name":"BMW AUSTRIA BANK GmbH (105)","short_name":"www.bmw.gr","id":"5718e02aa230df500b16c29c"},{"website":"","full_name"
:"MERCEDES-BENZ BANK POLSKA S.A. (106)","short_name":"www.mercedes-benz.gr","id":"5718e02aa230df500b16c29d"},{"website":"","full_name":"KEDR OPEN JOINT-STOCK COMPANY COMM
ERCIAL BANK (107)","short_name":"www.kedr.gr","id":"5718e02aa230df500b16c29e"},{"website":"","full_name":"T.C ZIRAAT BANKASI A.S (109)","short_name":"www.ziraatbank.com.g
r","id":"5718e02aa230df500b16c29f"},{"website":"","full_name":"DEUTSCHE BANK AG (111)","short_name":"www.db.com","id":"5718e02aa230df500b16c2a0"},{"website":"","full_name
":"FIMBANK PLC. (114)","short_name":"www.fimbank.com","id":"5718e02aa230df500b16c2a1"},{"website":"","full_name":"HSH NORDBANK AG (115)","short_name":"www.hsh-nordbank.co
m","id":"5718e02aa230df500b16c2a2"}]}
 => nil
 ```