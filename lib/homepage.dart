import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'services/Apiservices.dart';
import 'podos/empfulldetails.dart';

class Home extends StatefulWidget {
  final empnopassed;

  Home({this.empnopassed});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading;
  Recordset _empfulldetails;
Map empnopassedvalue;
  //Map empnopassed={};





  @override
  void initState() {
    super.initState();
    _loading = true;
    empnopassedvalue=widget.empnopassed;

    MyApi.getfullempdetails(empno:empnopassedvalue['empnopassed']).then((value) {
      setState(() {
        _empfulldetails = value[0];
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
 //empnopassed=ModalRoute.of(context).settings.arguments;
 // print("List $empnopassed['empnopassed']");
 //print("value $empnopassed");

    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? "Loading..." : "Yateem Ac"),
        centerTitle: true,
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.account_circle_outlined,
                        size: 100,
                      )
                    ],
                  )),
              ListTile(
                leading: Text("Emp name -"),
                title: Text(_loading?"Loading..":_empfulldetails.empname),
              ),
              ListTile(
                leading: Text("Emp number -"),
                title: Text(_loading?"Loading..":_empfulldetails.empno),
              ),
              ListTile(
                leading: Text("Designation -"),
                title: Text(_loading?"Loading..":_empfulldetails.designationName),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () async {
                    SharedPreferences loginInfo=await SharedPreferences.getInstance();
                     loginInfo.remove('empno');
                     loginInfo.setBool("loggedIn", false);
                    SystemNavigator.pop();
                  },
                  child: Text("Logout"),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            elevation: 8,
            color: Colors.lightBlueAccent.shade100,
            child: Text(_loading?'':'${_empfulldetails.empname}\n${_empfulldetails.designationName}'),
          ),
          Expanded(
            child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  padding: EdgeInsets.all(5),
                  children: List.generate(homeIcons.length, (index){
                    return Card(
                      child: InkWell(
                        splashColor: Colors.grey.shade700,
                        onTap: (){
                          print("tapped");
                          Navigator.pushNamed(context, '/sublistpage',arguments: icondetails[index]);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            homeIcons[index].icon,
                            //ImageIcon(Image.asset("assets/icons/crm.png")),
                            Text(homeIcons[index].label),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
          ),
        ],
      ),






      /*Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //scrollDirection: Axis.vertical,
        children: [
          SizedBox(height: 10),
             *//*Card(
            elevation: 8,
            color: Colors.lightBlueAccent.shade100,
            child: Text(_loading?'':'${_empfulldetails.empname}\n${_empfulldetails.designationName}'),
          ),*//*
          GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            padding: EdgeInsets.all(5),
            children:List.generate(homeIcons.length, (index){
              return Card(
                child: InkWell(
                  onTap: (){
                    print("tapped");
                    Navigator.pushNamed(context, '/sublistpage',arguments: icondetails[index]);
                  },
                  splashColor: Colors.grey.shade700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      homeIcons[index].icon,
                      //ImageIcon(Image.asset("assets/icons/crm.png")),
                      Text(homeIcons[index].label),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      )*/
    );
  }
}

List<HomeIcon> homeIcons=[
  HomeIcon(icon:ImageIcon(AssetImage("assets/icons/crm.png"),
      color: Colors.pinkAccent.shade400),label: "CRM"),
  HomeIcon(icon:ImageIcon(AssetImage("assets/icons/supplychain.png"),
      color: Colors.green.shade900),label: "SUPPLY\nCHAIN"),
  HomeIcon(icon:ImageIcon(AssetImage("assets/icons/project.png"),
      color: Colors.blue.shade900),label: "PROJECTS"),
  HomeIcon(icon:ImageIcon(AssetImage("assets/icons/showroom.png"),
      color: Colors.amber.shade900),label: "E\nSHOWROOM"),
  HomeIcon(icon:ImageIcon(AssetImage("assets/icons/warehouse.png"),
      color: Colors.red.shade900),label: "WMS"),
  HomeIcon(icon:ImageIcon(AssetImage("assets/icons/hr.png"),
      color: Colors.teal.shade700),label: "HR"),
  HomeIcon(icon:ImageIcon(AssetImage("assets/icons/maintenance.png"),
      color: Colors.deepPurple.shade400),label: "MMP"),
  HomeIcon(icon:ImageIcon(AssetImage("assets/icons/service.png")
      ,color: Colors.brown.shade400), label: "SMC"),
];

List<Map> icondetails=[{"pagetitle":"CRM",
  "lists":['Bills & Payments','Complaints & Enqueries','Customer Profile',
    'Orders & Schedules'],"redirectclass":['BillsNpaymentCrm','ComplaintsNenqueriesCrm',
    'CustomerProfileCrm','OrdersNschedulesCrm']},

  {"pagetitle":"SUPPLY CHAIN","lists":['Supplier Profiles','Enqueries & Quotations'
    ,'Purchase Orders']
    ,"redirectclass":['SupplierProfilesSupplychain','EnqueriesQuotationsSupplychain',
    'PurchaseOrdersSupplychain']},

  {"pagetitle":"PROJECTS","lists":['Projects Details','Bills of Quantity'
    ,'Payment Application','Bills & Payments','Project Cost Analysis','Project Statement']
    ,"redirectclass":['Projectdetails','BillsofQuantityProjects',
    'PaymentApplicationProjects','BillsNpaymentProjects','ProjectCostAnalysis',
    'ProjectStatement']},

  {"pagetitle":"E-SHOWROOM","lists":['Product Profile','E-cart','Delivery',
    'Bills & Payments']
    ,"redirectclass":['ProductprofileEshowroom','Ecart','Deliveryeshowroom',
    'BillsNpaymentshowroom']},

  {"pagetitle":"WMS","lists":['Product Profile','Warehouse Premises','Shelves & Racks'
    ,'Putaway','Delivery & Takeaway','Stock Position','Non Moving & Slow Moving Stocks']
    ,"redirectclass":['ProductProfileWms','WarehousepremisesWms',
    'ShelvesRacksWms','PutawayWms','DeliveryTakeawayWms'
    ,'StockpositionWms','SlowMovingStocksWms']},

  {"pagetitle":"HR","lists":['Time & Attendence','Jobwise Allocation', 'Loss of Pay',
    'Pay Slip','Loans & Deduction','Apply for Leave','Apply for Document']
    ,"redirectclass":['TimeNattendenceHr','JobwiseallocationHr',
    'LossofPayHr','PayslipHr','LoansNdeductionHr','ApplyforleaveHr','ApplyfordocHr']},

  {"pagetitle":"MMP","lists":['Premisis','Equipment','Installed Location','Maintenance Agreement',
    'Manpower Requirement Details','Scopes & Procedures','Workorder Schedules & Job Card']
    ,"redirectclass":['PremisesMmp','EquipmentMmp',
    'InstalledLocationMmp','MaintenanceAgreementsMmp','ManpowerRequirementMmp',
    'ScopesProceduresMmp','JobcardMmp']},

  {"pagetitle":"SMC","lists":[]}];

class HomeIcon{
  ImageIcon icon;
  String label;
  HomeIcon({this.icon,this.label});
}
