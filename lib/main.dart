import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpagesample/homepage.dart';
import 'package:loginpagesample/loginpage.dart';
import 'package:loginpagesample/sublistpage.dart';
import 'subpages/crm/billsNpayments.dart';
import 'subpages/crm/complaintsNenqueries.dart';
import 'subpages/crm/customer_profile.dart';
import 'subpages/crm/ordersNschedules.dart';
import 'subpages/eshowroom/Ecart.dart';
import 'subpages/eshowroom/billsNpayments.dart';
import 'subpages/eshowroom/delivery.dart';
import 'subpages/eshowroom/productprofile.dart';
import 'subpages/hr/applyfordoc.dart';
import 'subpages/hr/applyforleave.dart';
import 'subpages/hr/jobwiseallocation.dart';
import 'subpages/hr/loansNdeduction.dart';
import 'subpages/hr/lossofpay.dart';
import 'subpages/hr/payslip.dart';
import 'subpages/hr/timeNattendence.dart';
import 'subpages/mmp/equipment.dart';
import 'subpages/mmp/installedlocation.dart';
import 'subpages/mmp/maintenance_agreements.dart';
import 'subpages/mmp/manpower_requirement.dart';
import 'subpages/mmp/premises.dart';
import 'subpages/mmp/scopesNprocedures.dart';
import 'subpages/mmp/workorderschedulesNjobcard.dart';
import 'subpages/projects/billsNpayments.dart';
import 'subpages/projects/billsofquantity.dart';
import 'subpages/projects/payment_application.dart';
import 'subpages/projects/projectdetails.dart';
import 'subpages/projects/projects_costAnalysis.dart';
import 'subpages/projects/projectstatement.dart';
import 'subpages/supplychain/enqueriesNquotations.dart';
import 'subpages/supplychain/purchase_orders.dart';
import 'subpages/supplychain/supplier_profiles.dart';
import 'subpages/wms/deliveryNtakeaway.dart';
import 'subpages/wms/product_profile.dart';
import 'subpages/wms/putaway.dart';
import 'subpages/wms/shelvesNracks.dart';
import 'subpages/wms/slowmovingstocks.dart';
import 'subpages/wms/stockposition.dart';
import 'subpages/wms/warehousepremises.dart';

void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/loginpage',
    routes: {
      '/loginpage':(context)=>Login(),
      '/home':(context)=>Home(
        empnopassed: ModalRoute.of(context).settings.arguments),
      '/sublistpage':(context)=>SublistPage(),
      '/BillsNpaymentCrm':(context)=>BillsNpaymentCrm(),
      '/ComplaintsNenqueriesCrm':(context)=>ComplaintsNenqueriesCrm(),
      '/CustomerProfileCrm':(context)=>CustomerProfileCrm(),
      '/OrdersNschedulesCrm':(context)=>OrdersNschedulesCrm(),
      '/SupplierProfilesSupplychain':(context)=>SupplierProfilesSupplychain(),
      '/EnqueriesQuotationsSupplychain':(context)=>EnqueriesQuotationsSupplychain(),
      '/PurchaseOrdersSupplychain':(context)=>PurchaseOrdersSupplychain(),
      '/Projectdetails':(context)=>Projectdetails(),
      '/BillsofQuantityProjects':(context)=>BillsofQuantityProjects(),
      '/PaymentApplicationProjects':(context)=>PaymentApplicationProjects(),
      '/BillsNpaymentProjects':(context)=>BillsNpaymentProjects(),
      '/ProjectCostAnalysis':(context)=>ProjectCostAnalysis(),
      '/ProjectStatement':(context)=>ProjectStatement(),
      '/ProductprofileEshowroom':(context)=>ProductprofileEshowroom(),
      '/Ecart':(context)=>Ecart(),
      '/Deliveryeshowroom':(context)=>Deliveryeshowroom(),
      '/BillsNpaymentshowroom':(context)=>BillsNpaymentshowroom(),
      '/ProductProfileWms':(context)=>ProductProfileWms(),
      '/WarehousepremisesWms':(context)=>WarehousepremisesWms(),
      '/ShelvesRacksWms':(context)=>ShelvesRacksWms(),
      '/PutawayWms':(context)=>PutawayWms(),
      '/DeliveryTakeawayWms':(context)=>DeliveryTakeawayWms(),
      '/StockpositionWms':(context)=>StockpositionWms(),
      '/SlowMovingStocksWms':(context)=>SlowMovingStocksWms(),
      '/TimeNattendenceHr':(context)=>TimeNattendenceHr(),
      '/JobwiseallocationHr':(context)=>JobwiseallocationHr(),
      '/LossofPayHr':(context)=>LossofPayHr(),
      '/PayslipHr':(context)=>PayslipHr(),
      '/LoansNdeductionHr':(context)=>LoansNdeductionHr(),
      '/ApplyforleaveHr':(context)=>ApplyforleaveHr(),
      '/ApplyfordocHr':(context)=>ApplyfordocHr(),
      '/PremisesMmp':(context)=>PremisesMmp(),
      '/EquipmentMmp':(context)=>EquipmentMmp(),
      '/InstalledLocationMmp':(context)=>InstalledLocationMmp(),
      '/MaintenanceAgreementsMmp':(context)=>MaintenanceAgreementsMmp(),
      '/ManpowerRequirementMmp':(context)=>ManpowerRequirementMmp(),
      '/ScopesProceduresMmp':(context)=>ScopesProceduresMmp(),
      '/JobcardMmp':(context)=>JobcardMmp(),





    },
  ),
);