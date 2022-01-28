// To parse this JSON data, do
//
//     final employeefulldetails = employeefulldetailsFromJson(jsonString);

import 'dart:convert';

Employeefulldetails employeefulldetailsFromJson(String str) => Employeefulldetails.fromJson(json.decode(str));

String employeefulldetailsToJson(Employeefulldetails data) => json.encode(data.toJson());

class Employeefulldetails {
  Employeefulldetails({
    this.recordset,
  });

  List<Recordset> recordset;

  factory Employeefulldetails.fromJson(Map<String, dynamic> json) => Employeefulldetails(
    recordset: List<Recordset>.from(json["recordset"].map((x) => Recordset.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "recordset": List<dynamic>.from(recordset.map((x) => x.toJson())),
  };
}


class Recordset {
  Recordset({
    this.compCode,
    this.recno,
    this.empno,
    this.empname,
    this.firstName,
    this.middleName,
    this.lastName,
    this.joinDt,
    this.contractorId,
    this.contractorName,
    this.sponsorId,
    this.sponsorName,
    this.divisionId,
    this.divisionName,
    this.departmentId,
    this.departmentName,
    this.designationId,
    this.designationName,
    this.bandId,
    this.bandName,
    this.gradeId,
    this.gradeName,
    this.sexChar,
    this.sex,
    this.empTypeChar,
    this.empType,
    this.lmraApplicableChar,
    this.lmraApplicable,
    this.islocalChar,
    this.islocal,
    this.countryId,
    this.nationality,
    this.locationCode,
    this.location,
    this.shiftId,
    this.shiftNo,
    this.shiftDesc,
    this.shiftStartTime,
    this.shiftEndTime,
    this.minPunchesRequired,
    this.tcCd,
    this.dob,
    this.maritalStatusCode,
    this.maritalStatus,
    this.religionCode,
    this.religion,
    this.fatherName,
    this.pContact,
    this.pAddress1,
    this.pAddress2,
    this.pStreet,
    this.pCity,
    this.pState,
    this.pCountry,
    this.pTel1,
    this.pTel2,
    this.lContact,
    this.lFlat,
    this.lBuilding,
    this.lStreet,
    this.lBlock,
    this.lCity,
    this.lPoBox,
    this.lMobile,
    this.lPager,
    this.lTel,
    this.emailId,
    this.onLeaveChar,
    this.onLeave,
    this.considerWeeklyOffChar,
    this.considerWeeklyOff,
    this.empStatus,
    this.terminatedOn,
    this.finalSettlementDate,
    this.gosiApplicableAmt,
    this.gosiPerc,
    this.gosiAmt,
    this.compGosiPerc,
    this.compGosiAmt,
    this.gosiGlAcNo,
    this.gosiLastPaidDt,
    this.gosiPrevArrears,
    this.payGosiToBank,
    this.netGosi,
    this.lDueFrom,
    this.lMinDays,
    this.lMaxDays,
    this.lMinYears,
    this.iDueFrom,
    this.iMinDays,
    this.iMaxDays,
    this.iMinYears,
    this.payModeChar,
    this.payMode,
    this.bankAcNo,
    this.bankId,
    this.bankCd,
    this.bankName,
    this.salaryTransferAbbrev1,
    this.bankBranchId,
    this.bankBranchCd,
    this.bankBranchName,
    this.origBankAcNo,
    this.origBankId,
    this.origBankCd,
    this.origBankName,
    this.origBankBranchId,
    this.origBankBranchCd,
    this.origBankBranchName,
    this.bankGlAcNo,
    this.otGlAcNo,
    this.costcenterId,
    this.glAcNo,
    this.glAcParams,
    this.cprNo,
    this.physicalFileNo,
    this.mgrEmpNo,
    this.mgrName,
    this.budgetId,
    this.attCardNo,
    this.mgrNoForLevApproval,
    this.mgrNoForOtApproval,
    this.lastPayslipMailed,
  });

  String compCode;
  int recno;
  String empno;
  String empname;
  String firstName;
  String middleName;
  String lastName;
  DateTime joinDt;
  int contractorId;
  String contractorName;
  int sponsorId;
  String sponsorName;
  int divisionId;
  String divisionName;
  int departmentId;
  String departmentName;
  int designationId;
  String designationName;
  int bandId;
  String bandName;
  int gradeId;
  String gradeName;
  String sexChar;
  String sex;
  String empTypeChar;
  String empType;
  String lmraApplicableChar;
  String lmraApplicable;
  String islocalChar;
  String islocal;
  int countryId;
  String nationality;
  String locationCode;
  String location;
  int shiftId;
  int shiftNo;
  String shiftDesc;
  String shiftStartTime;
  String shiftEndTime;
  int minPunchesRequired;
  String tcCd;
  DateTime dob;
  int maritalStatusCode;
  String maritalStatus;
  int religionCode;
  String religion;
  String fatherName;
  String pContact;
  String pAddress1;
  String pAddress2;
  String pStreet;
  String pCity;
  String pState;
  String pCountry;
  String pTel1;
  String pTel2;
  String lContact;
  String lFlat;
  String lBuilding;
  String lStreet;
  String lBlock;
  String lCity;
  String lPoBox;
  String lMobile;
  String lPager;
  String lTel;
  String emailId;
  String onLeaveChar;
  String onLeave;
  String considerWeeklyOffChar;
  String considerWeeklyOff;
  String empStatus;
  dynamic terminatedOn;
  dynamic finalSettlementDate;
  int gosiApplicableAmt;
  int gosiPerc;
  int gosiAmt;
  int compGosiPerc;
  int compGosiAmt;
  String gosiGlAcNo;
  dynamic gosiLastPaidDt;
  int gosiPrevArrears;
  String payGosiToBank;
  int netGosi;
  DateTime lDueFrom;
  int lMinDays;
  int lMaxDays;
  int lMinYears;
  DateTime iDueFrom;
  int iMinDays;
  int iMaxDays;
  int iMinYears;
  String payModeChar;
  String payMode;
  String bankAcNo;
  int bankId;
  String bankCd;
  String bankName;
  String salaryTransferAbbrev1;
  int bankBranchId;
  String bankBranchCd;
  String bankBranchName;
  String origBankAcNo;
  int origBankId;
  String origBankCd;
  String origBankName;
  int origBankBranchId;
  String origBankBranchCd;
  String origBankBranchName;
  String bankGlAcNo;
  String otGlAcNo;
  String costcenterId;
  String glAcNo;
  dynamic glAcParams;
  String cprNo;
  String physicalFileNo;
  String mgrEmpNo;
  String mgrName;
  String budgetId;
  String attCardNo;
  String mgrNoForLevApproval;
  String mgrNoForOtApproval;
  String lastPayslipMailed;

  factory Recordset.fromJson(Map<String, dynamic> json) => Recordset(
    compCode: json["COMP_CODE"],
    recno: json["RECNO"],
    empno: json["EMPNO"],
    empname: json["EMPNAME"],
    firstName: json["FIRST_NAME"],
    middleName: json["MIDDLE_NAME"],
    lastName: json["LAST_NAME"],
    joinDt: DateTime.parse(json["JOIN_DT"]),
    contractorId: json["CONTRACTOR_ID"],
    contractorName: json["CONTRACTOR_NAME"],
    sponsorId: json["SPONSOR_ID"],
    sponsorName: json["SPONSOR_NAME"],
    divisionId: json["DIVISION_ID"],
    divisionName: json["DIVISION_NAME"],
    departmentId: json["DEPARTMENT_ID"],
    departmentName: json["DEPARTMENT_NAME"],
    designationId: json["DESIGNATION_ID"],
    designationName: json["DESIGNATION_NAME"],
    bandId: json["BAND_ID"],
    bandName: json["BAND_NAME"],
    gradeId: json["GRADE_ID"],
    gradeName: json["GRADE_NAME"],
    sexChar: json["SEX_CHAR"],
    sex: json["SEX"],
    empTypeChar: json["EMP_TYPE_CHAR"],
    empType: json["EMP_TYPE"],
    lmraApplicableChar: json["LMRA_APPLICABLE_CHAR"],
    lmraApplicable: json["LMRA_APPLICABLE"],
    islocalChar: json["ISLOCAL_CHAR"],
    islocal: json["ISLOCAL"],
    countryId: json["COUNTRY_ID"],
    nationality: json["NATIONALITY"],
    locationCode: json["LOCATION_CODE"],
    location: json["LOCATION"],
    shiftId: json["SHIFT_ID"],
    shiftNo: json["SHIFT_NO"],
    shiftDesc: json["SHIFT_DESC"],
    shiftStartTime: json["SHIFT_START_TIME"],
    shiftEndTime: json["SHIFT_END_TIME"],
    minPunchesRequired: json["MIN_PUNCHES_REQUIRED"],
    tcCd: json["TC_CD"],
    dob: DateTime.parse(json["DOB"]),
    maritalStatusCode: json["MARITAL_STATUS_CODE"],
    maritalStatus: json["MARITAL_STATUS"],
    religionCode: json["RELIGION_CODE"],
    religion: json["RELIGION"],
    fatherName: json["FATHER_NAME"],
    pContact: json["P_CONTACT"],
    pAddress1: json["P_ADDRESS1"],
    pAddress2: json["P_ADDRESS2"],
    pStreet: json["P_STREET"],
    pCity: json["P_CITY"],
    pState: json["P_STATE"],
    pCountry: json["P_COUNTRY"],
    pTel1: json["P_TEL1"],
    pTel2: json["P_TEL2"],
    lContact: json["L_CONTACT"],
    lFlat: json["L_FLAT"],
    lBuilding: json["L_BUILDING"],
    lStreet: json["L_STREET"],
    lBlock: json["L_BLOCK"],
    lCity: json["L_CITY"],
    lPoBox: json["L_PO_BOX"],
    lMobile: json["L_MOBILE"],
    lPager: json["L_PAGER"],
    lTel: json["L_TEL"],
    emailId: json["EMAIL_ID"],
    onLeaveChar: json["ON_LEAVE_CHAR"],
    onLeave: json["ON_LEAVE"],
    considerWeeklyOffChar: json["CONSIDER_WEEKLY_OFF_CHAR"],
    considerWeeklyOff: json["CONSIDER_WEEKLY_OFF"],
    empStatus: json["EMP_STATUS"],
    terminatedOn: json["TERMINATED_ON"],
    finalSettlementDate: json["FINAL_SETTLEMENT_DATE"],
    gosiApplicableAmt: json["GOSI_APPLICABLE_AMT"],
    gosiPerc: json["GOSI_PERC"],
    gosiAmt: json["GOSI_AMT"],
    compGosiPerc: json["COMP_GOSI_PERC"],
    compGosiAmt: json["COMP_GOSI_AMT"],
    gosiGlAcNo: json["GOSI_GL_AC_NO"],
    gosiLastPaidDt: json["GOSI_LAST_PAID_DT"],
    gosiPrevArrears: json["GOSI_PREV_ARREARS"],
    payGosiToBank: json["PAY_GOSI_TO_BANK"],
    netGosi: json["NET_GOSI"],
    lDueFrom: DateTime.parse(json["L_DUE_FROM"]),
    lMinDays: json["L_MIN_DAYS"],
    lMaxDays: json["L_MAX_DAYS"],
    lMinYears: json["L_MIN_YEARS"],
    iDueFrom: DateTime.parse(json["I_DUE_FROM"]),
    iMinDays: json["I_MIN_DAYS"],
    iMaxDays: json["I_MAX_DAYS"],
    iMinYears: json["I_MIN_YEARS"],
    payModeChar: json["PAY_MODE_CHAR"],
    payMode: json["PAY_MODE"],
    bankAcNo: json["BANK_AC_NO"],
    bankId: json["BANK_ID"],
    bankCd: json["BANK_CD"],
    bankName: json["BANK_NAME"],
    salaryTransferAbbrev1: json["SALARY_TRANSFER_ABBREV1"],
    bankBranchId: json["BANK_BRANCH_ID"],
    bankBranchCd: json["BANK_BRANCH_CD"],
    bankBranchName: json["BANK_BRANCH_NAME"],
    origBankAcNo: json["ORIG_BANK_AC_NO"],
    origBankId: json["ORIG_BANK_ID"],
    origBankCd: json["ORIG_BANK_CD"],
    origBankName: json["ORIG_BANK_NAME"],
    origBankBranchId: json["ORIG_BANK_BRANCH_ID"],
    origBankBranchCd: json["ORIG_BANK_BRANCH_CD"],
    origBankBranchName: json["ORIG_BANK_BRANCH_NAME"],
    bankGlAcNo: json["BANK_GL_AC_NO"],
    otGlAcNo: json["OT_GL_AC_NO"],
    costcenterId: json["COSTCENTER_ID"],
    glAcNo: json["GL_AC_NO"],
    glAcParams: json["GL_AC_PARAMS"],
    cprNo: json["CPR_NO"],
    physicalFileNo: json["PHYSICAL_FILE_NO"],
    mgrEmpNo: json["MGR_EMP_NO"],
    mgrName: json["MGR_NAME"],
    budgetId: json["BUDGET_ID"],
    attCardNo: json["ATT_CARD_NO"],
    mgrNoForLevApproval: json["MGR_NO_FOR_LEV_APPROVAL"],
    mgrNoForOtApproval: json["MGR_NO_FOR_OT_APPROVAL"],
    lastPayslipMailed: json["LAST_PAYSLIP_MAILED"],
  );

  Map<String, dynamic> toJson() => {
    "COMP_CODE": compCode,
    "RECNO": recno,
    "EMPNO": empno,
    "EMPNAME": empname,
    "FIRST_NAME": firstName,
    "MIDDLE_NAME": middleName,
    "LAST_NAME": lastName,
    "JOIN_DT": joinDt.toIso8601String(),
    "CONTRACTOR_ID": contractorId,
    "CONTRACTOR_NAME": contractorName,
    "SPONSOR_ID": sponsorId,
    "SPONSOR_NAME": sponsorName,
    "DIVISION_ID": divisionId,
    "DIVISION_NAME": divisionName,
    "DEPARTMENT_ID": departmentId,
    "DEPARTMENT_NAME": departmentName,
    "DESIGNATION_ID": designationId,
    "DESIGNATION_NAME": designationName,
    "BAND_ID": bandId,
    "BAND_NAME": bandName,
    "GRADE_ID": gradeId,
    "GRADE_NAME": gradeName,
    "SEX_CHAR": sexChar,
    "SEX": sex,
    "EMP_TYPE_CHAR": empTypeChar,
    "EMP_TYPE": empType,
    "LMRA_APPLICABLE_CHAR": lmraApplicableChar,
    "LMRA_APPLICABLE": lmraApplicable,
    "ISLOCAL_CHAR": islocalChar,
    "ISLOCAL": islocal,
    "COUNTRY_ID": countryId,
    "NATIONALITY": nationality,
    "LOCATION_CODE": locationCode,
    "LOCATION": location,
    "SHIFT_ID": shiftId,
    "SHIFT_NO": shiftNo,
    "SHIFT_DESC": shiftDesc,
    "SHIFT_START_TIME": shiftStartTime,
    "SHIFT_END_TIME": shiftEndTime,
    "MIN_PUNCHES_REQUIRED": minPunchesRequired,
    "TC_CD": tcCd,
    "DOB": dob.toIso8601String(),
    "MARITAL_STATUS_CODE": maritalStatusCode,
    "MARITAL_STATUS": maritalStatus,
    "RELIGION_CODE": religionCode,
    "RELIGION": religion,
    "FATHER_NAME": fatherName,
    "P_CONTACT": pContact,
    "P_ADDRESS1": pAddress1,
    "P_ADDRESS2": pAddress2,
    "P_STREET": pStreet,
    "P_CITY": pCity,
    "P_STATE": pState,
    "P_COUNTRY": pCountry,
    "P_TEL1": pTel1,
    "P_TEL2": pTel2,
    "L_CONTACT": lContact,
    "L_FLAT": lFlat,
    "L_BUILDING": lBuilding,
    "L_STREET": lStreet,
    "L_BLOCK": lBlock,
    "L_CITY": lCity,
    "L_PO_BOX": lPoBox,
    "L_MOBILE": lMobile,
    "L_PAGER": lPager,
    "L_TEL": lTel,
    "EMAIL_ID": emailId,
    "ON_LEAVE_CHAR": onLeaveChar,
    "ON_LEAVE": onLeave,
    "CONSIDER_WEEKLY_OFF_CHAR": considerWeeklyOffChar,
    "CONSIDER_WEEKLY_OFF": considerWeeklyOff,
    "EMP_STATUS": empStatus,
    "TERMINATED_ON": terminatedOn,
    "FINAL_SETTLEMENT_DATE": finalSettlementDate,
    "GOSI_APPLICABLE_AMT": gosiApplicableAmt,
    "GOSI_PERC": gosiPerc,
    "GOSI_AMT": gosiAmt,
    "COMP_GOSI_PERC": compGosiPerc,
    "COMP_GOSI_AMT": compGosiAmt,
    "GOSI_GL_AC_NO": gosiGlAcNo,
    "GOSI_LAST_PAID_DT": gosiLastPaidDt,
    "GOSI_PREV_ARREARS": gosiPrevArrears,
    "PAY_GOSI_TO_BANK": payGosiToBank,
    "NET_GOSI": netGosi,
    "L_DUE_FROM": lDueFrom.toIso8601String(),
    "L_MIN_DAYS": lMinDays,
    "L_MAX_DAYS": lMaxDays,
    "L_MIN_YEARS": lMinYears,
    "I_DUE_FROM": iDueFrom.toIso8601String(),
    "I_MIN_DAYS": iMinDays,
    "I_MAX_DAYS": iMaxDays,
    "I_MIN_YEARS": iMinYears,
    "PAY_MODE_CHAR": payModeChar,
    "PAY_MODE": payMode,
    "BANK_AC_NO": bankAcNo,
    "BANK_ID": bankId,
    "BANK_CD": bankCd,
    "BANK_NAME": bankName,
    "SALARY_TRANSFER_ABBREV1": salaryTransferAbbrev1,
    "BANK_BRANCH_ID": bankBranchId,
    "BANK_BRANCH_CD": bankBranchCd,
    "BANK_BRANCH_NAME": bankBranchName,
    "ORIG_BANK_AC_NO": origBankAcNo,
    "ORIG_BANK_ID": origBankId,
    "ORIG_BANK_CD": origBankCd,
    "ORIG_BANK_NAME": origBankName,
    "ORIG_BANK_BRANCH_ID": origBankBranchId,
    "ORIG_BANK_BRANCH_CD": origBankBranchCd,
    "ORIG_BANK_BRANCH_NAME": origBankBranchName,
    "BANK_GL_AC_NO": bankGlAcNo,
    "OT_GL_AC_NO": otGlAcNo,
    "COSTCENTER_ID": costcenterId,
    "GL_AC_NO": glAcNo,
    "GL_AC_PARAMS": glAcParams,
    "CPR_NO": cprNo,
    "PHYSICAL_FILE_NO": physicalFileNo,
    "MGR_EMP_NO": mgrEmpNo,
    "MGR_NAME": mgrName,
    "BUDGET_ID": budgetId,
    "ATT_CARD_NO": attCardNo,
    "MGR_NO_FOR_LEV_APPROVAL": mgrNoForLevApproval,
    "MGR_NO_FOR_OT_APPROVAL": mgrNoForOtApproval,
    "LAST_PAYSLIP_MAILED": lastPayslipMailed,
  };
}
