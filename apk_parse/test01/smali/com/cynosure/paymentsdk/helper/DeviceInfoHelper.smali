.class public Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;
.super Ljava/lang/Object;
.source "DeviceInfoHelper.java"


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private checkAndSaveDualSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "IMEI1"    # Ljava/lang/String;
    .param p2, "IMSI1"    # Ljava/lang/String;
    .param p3, "IMEI2"    # Ljava/lang/String;
    .param p4, "IMSI2"    # Ljava/lang/String;
    .param p5, "dualSimManufacturer"    # Ljava/lang/String;

    .prologue
    .line 714
    const/4 v2, 0x0

    .line 715
    .local v2, "dualSimInfoIsOK":Z
    const-string v0, "0"

    .line 718
    .local v0, "cardSlotNumber":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->checkIMEI(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 719
    const-string p1, ""

    .line 721
    :cond_0
    invoke-direct {p0, p2}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->checkIMSI(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 722
    const-string p2, ""

    .line 725
    :cond_1
    invoke-direct {p0, p3}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->checkIMEI(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 726
    const-string p3, ""

    .line 728
    :cond_2
    invoke-direct {p0, p4}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->checkIMSI(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 729
    const-string p4, ""

    .line 732
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 733
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 734
    const/4 v2, 0x1

    .line 735
    const-string v0, "2"

    .line 737
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 738
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 739
    const/4 v2, 0x1

    .line 740
    const-string v0, "1"

    .line 742
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 743
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 744
    const/4 v2, 0x0

    .line 745
    const-string v0, "0"

    .line 747
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 748
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 749
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 750
    const/4 v2, 0x0

    .line 758
    :cond_7
    :goto_0
    if-eqz v2, :cond_9

    .line 759
    new-instance v1, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 760
    .local v1, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISDUALSIM:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CURRSIMCARDNUMBER:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_DUALSIMMANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3, p5}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 765
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_IMEI:Ljava/lang/String;

    invoke-virtual {v1, v3, p1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_IMSI:Ljava/lang/String;

    invoke-virtual {v1, v3, p2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_8
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 769
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_IMEI:Ljava/lang/String;

    invoke-virtual {v1, v3, p3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_IMSI:Ljava/lang/String;

    invoke-virtual {v1, v3, p4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .end local v1    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    :cond_9
    return v2

    .line 753
    :cond_a
    const/4 v2, 0x1

    .line 754
    const-string v0, "1"

    goto :goto_0
.end method

.method private checkIMEI(Ljava/lang/String;)Z
    .locals 3
    .param p1, "IMEI"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkIMSI(Ljava/lang/String;)Z
    .locals 3
    .param p1, "IMSI"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "manifestTagName"    # Ljava/lang/String;

    .prologue
    .line 340
    const-string v5, ""

    .line 342
    .local v5, "theValue":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 343
    .local v2, "localPackageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 344
    .local v1, "localApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 345
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 346
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 347
    .local v3, "tempObject":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "tempTheValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 350
    move-object v5, v4

    .line 358
    .end local v1    # "localApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "tempObject":Ljava/lang/Object;
    .end local v4    # "tempTheValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getProvAndCity_Sina()Ljava/lang/String;
    .locals 5

    .prologue
    .line 430
    const-string v2, "get prov and city by sina interface"

    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 432
    new-instance v0, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 433
    .local v0, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    sget-object v2, Lcom/cynosure/paymentsdk/helper/Constant;->URL_GETPROVANDCITY_SINA:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "GBK"

    invoke-virtual {v0, v2, v3, v4}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpGet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "returnValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    .end local v1    # "returnValue":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "returnValue":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getProvAndCity_Taobao()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 446
    const-string v4, "get prov and city by taobao interface"

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 448
    new-instance v0, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;-><init>()V

    .line 449
    .local v0, "conn":Lcom/cynosure/paymentsdk/helper/ConnectionHelper;
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->URL_GETPROVANDCITY_TAOBAO:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v5}, Lcom/cynosure/paymentsdk/helper/ConnectionHelper;->httpGet(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "returnValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 452
    const-string v4, "\"code\":0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 453
    const-string v4, "(?<=region\":\")[^\"]*(?=\")"

    invoke-static {v1, v4}, Lcom/cynosure/paymentsdk/helper/StringHelper;->getSubstringByRegular(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "tempProv":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 456
    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/StringHelper;->decodeUniCode2ZHN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    :cond_0
    const-string v4, "(?<=city\":\")[^\"]*(?=\")"

    invoke-static {v1, v4}, Lcom/cynosure/paymentsdk/helper/StringHelper;->getSubstringByRegular(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "tempCity":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 461
    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/StringHelper;->decodeUniCode2ZHN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tempProv:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 464
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tempCity:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 466
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 472
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 470
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    .end local v2    # "tempCity":Ljava/lang/String;
    .end local v3    # "tempProv":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method private initDualSim_MTK()Z
    .locals 19

    .prologue
    .line 621
    const/4 v8, 0x0

    .line 624
    .local v8, "isDualSim":Z
    :try_start_0
    new-instance v11, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-direct {v11, v1}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;-><init>(Landroid/content/Context;)V

    .line 625
    .local v11, "mtk":Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;
    invoke-virtual {v11}, Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;->IsMTK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    const/4 v12, 0x0

    .line 628
    .local v12, "simId_1":I
    const/4 v13, 0x1

    .line 629
    .local v13, "simId_2":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 632
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    new-instance v15, Ljava/lang/String;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v15, v1}, Ljava/lang/String;-><init>([B)V

    .line 634
    .local v15, "string_getSubscriberIdGemini":Ljava/lang/String;
    const-class v1, Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v6, v17

    invoke-virtual {v1, v15, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 635
    .local v9, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v6

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    .local v3, "imsi_1":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v6

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 638
    .local v5, "imsi_2":Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-direct {v14, v1}, Ljava/lang/String;-><init>([B)V

    .line 640
    .local v14, "string_getDeviceIdGemini":Ljava/lang/String;
    const-class v1, Landroid/telephony/TelephonyManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v6, v17

    invoke-virtual {v1, v14, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 641
    .local v10, "m1":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v6

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 642
    .local v2, "imei_1":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v6

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 644
    .local v4, "imei_2":Ljava/lang/String;
    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->DUALSIMMANUFACTURER_MTK:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->checkAndSaveDualSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 651
    .end local v2    # "imei_1":Ljava/lang/String;
    .end local v3    # "imsi_1":Ljava/lang/String;
    .end local v4    # "imei_2":Ljava/lang/String;
    .end local v5    # "imsi_2":Ljava/lang/String;
    .end local v9    # "m":Ljava/lang/reflect/Method;
    .end local v10    # "m1":Ljava/lang/reflect/Method;
    .end local v11    # "mtk":Lcom/cynosure/paymentsdk/dualsim/MTKDualSim;
    .end local v12    # "simId_1":I
    .end local v13    # "simId_2":I
    .end local v14    # "string_getDeviceIdGemini":Ljava/lang/String;
    .end local v15    # "string_getSubscriberIdGemini":Ljava/lang/String;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v8

    .line 647
    :catch_0
    move-exception v7

    .line 648
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 632
    :array_0
    .array-data 1
        0x67t
        0x65t
        0x74t
        0x53t
        0x75t
        0x62t
        0x73t
        0x63t
        0x72t
        0x69t
        0x62t
        0x65t
        0x72t
        0x49t
        0x64t
        0x47t
        0x65t
        0x6dt
        0x69t
        0x6et
        0x69t
    .end array-data

    .line 638
    nop

    :array_1
    .array-data 1
        0x67t
        0x65t
        0x74t
        0x44t
        0x65t
        0x76t
        0x69t
        0x63t
        0x65t
        0x49t
        0x64t
        0x47t
        0x65t
        0x6dt
        0x69t
        0x6et
        0x69t
    .end array-data
.end method

.method private initDualSim_Qualcomm()Z
    .locals 19

    .prologue
    .line 655
    const/4 v9, 0x0

    .line 658
    .local v9, "isDualSim":Z
    :try_start_0
    new-instance v13, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-direct {v13, v1}, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;-><init>(Landroid/content/Context;)V

    .line 659
    .local v13, "qualcomm":Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;
    invoke-virtual {v13}, Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;->IsQualComm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    new-instance v16, Ljava/lang/String;

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 664
    .local v16, "string_MSimTelephonyManager":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 665
    .local v7, "cx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v6, "phone_msim"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 666
    .local v12, "obj":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 667
    .local v14, "simId_1":I
    const/4 v15, 0x1

    .line 669
    .local v15, "simId_2":I
    const-string v1, "getDeviceId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v6, v17

    invoke-virtual {v7, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 670
    .local v10, "md":Ljava/lang/reflect/Method;
    const-string v1, "getSubscriberId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v6, v17

    invoke-virtual {v7, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 672
    .local v11, "ms":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v6

    invoke-virtual {v10, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 673
    .local v2, "imei_1":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v6

    invoke-virtual {v10, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 675
    .local v4, "imei_2":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v6

    invoke-virtual {v11, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 676
    .local v3, "imsi_1":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v6

    invoke-virtual {v11, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 678
    .local v5, "imsi_2":Ljava/lang/String;
    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->DUALSIMMANUFACTURER_QUALCOMM:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->checkAndSaveDualSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 685
    .end local v2    # "imei_1":Ljava/lang/String;
    .end local v3    # "imsi_1":Ljava/lang/String;
    .end local v4    # "imei_2":Ljava/lang/String;
    .end local v5    # "imsi_2":Ljava/lang/String;
    .end local v7    # "cx":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "md":Ljava/lang/reflect/Method;
    .end local v11    # "ms":Ljava/lang/reflect/Method;
    .end local v12    # "obj":Ljava/lang/Object;
    .end local v13    # "qualcomm":Lcom/cynosure/paymentsdk/dualsim/QualcommDualSimW1;
    .end local v14    # "simId_1":I
    .end local v15    # "simId_2":I
    .end local v16    # "string_MSimTelephonyManager":Ljava/lang/String;
    :cond_0
    :goto_0
    return v9

    .line 681
    :catch_0
    move-exception v8

    .line 682
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 662
    :array_0
    .array-data 1
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x74t
        0x65t
        0x6ct
        0x65t
        0x70t
        0x68t
        0x6ft
        0x6et
        0x79t
        0x2et
        0x4dt
        0x53t
        0x69t
        0x6dt
        0x54t
        0x65t
        0x6ct
        0x65t
        0x70t
        0x68t
        0x6ft
        0x6et
        0x79t
        0x4dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
    .end array-data
.end method

.method private initDualSim_Samsung()Z
    .locals 12

    .prologue
    .line 563
    const/4 v8, 0x0

    .line 567
    .local v8, "isDualSim":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getModel()Ljava/lang/String;

    move-result-object v9

    .line 568
    .local v9, "model":Ljava/lang/String;
    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 569
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 570
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "gt"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "samsung"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    new-instance v10, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-direct {v10, v1}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;-><init>(Landroid/content/Context;)V

    .line 573
    .local v10, "ss":Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;
    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;->IsSamSung()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 575
    .local v11, "telephonemanager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "imei_1":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 578
    .local v3, "imsi_1":Ljava/lang/String;
    const/4 v4, 0x0

    .line 579
    .local v4, "imei_2":Ljava/lang/String;
    const/4 v5, 0x0

    .line 582
    .local v5, "imsi_2":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v6, "phone0"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v11, v0

    .line 583
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 584
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 591
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v6, "phone1"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v11, v0

    .line 592
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 593
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 600
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v6, "phone2"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v11, v0

    .line 601
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 602
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    .line 608
    :goto_2
    :try_start_4
    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->DUALSIMMANUFACTURER_SAMSUNG:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->checkAndSaveDualSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 617
    .end local v2    # "imei_1":Ljava/lang/String;
    .end local v3    # "imsi_1":Ljava/lang/String;
    .end local v4    # "imei_2":Ljava/lang/String;
    .end local v5    # "imsi_2":Ljava/lang/String;
    .end local v9    # "model":Ljava/lang/String;
    .end local v10    # "ss":Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;
    .end local v11    # "telephonemanager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_3
    return v8

    .line 586
    .restart local v2    # "imei_1":Ljava/lang/String;
    .restart local v3    # "imsi_1":Ljava/lang/String;
    .restart local v4    # "imei_2":Ljava/lang/String;
    .restart local v5    # "imsi_2":Ljava/lang/String;
    .restart local v9    # "model":Ljava/lang/String;
    .restart local v10    # "ss":Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;
    .restart local v11    # "telephonemanager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v7

    .line 587
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 613
    .end local v2    # "imei_1":Ljava/lang/String;
    .end local v3    # "imsi_1":Ljava/lang/String;
    .end local v4    # "imei_2":Ljava/lang/String;
    .end local v5    # "imsi_2":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "model":Ljava/lang/String;
    .end local v10    # "ss":Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;
    .end local v11    # "telephonemanager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v7

    .line 614
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 595
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "imei_1":Ljava/lang/String;
    .restart local v3    # "imsi_1":Ljava/lang/String;
    .restart local v4    # "imei_2":Ljava/lang/String;
    .restart local v5    # "imsi_2":Ljava/lang/String;
    .restart local v9    # "model":Ljava/lang/String;
    .restart local v10    # "ss":Lcom/cynosure/paymentsdk/dualsim/SamsungDualSim;
    .restart local v11    # "telephonemanager":Landroid/telephony/TelephonyManager;
    :catch_2
    move-exception v7

    .line 596
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 604
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 605
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method

.method private initDualSim_Spread()Z
    .locals 11

    .prologue
    .line 689
    const/4 v7, 0x0

    .line 692
    .local v7, "isDualSim":Z
    :try_start_0
    new-instance v10, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;

    iget-object v0, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;-><init>(Landroid/content/Context;)V

    .line 693
    .local v10, "spread":Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;
    invoke-virtual {v10}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->IsSpread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const/4 v8, 0x0

    .line 695
    .local v8, "simId_1":I
    const/4 v9, 0x1

    .line 697
    .local v9, "simId_2":I
    invoke-virtual {v10, v8}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getIMSI(I)Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, "imsi_1":Ljava/lang/String;
    invoke-virtual {v10, v9}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getIMSI(I)Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, "imsi_2":Ljava/lang/String;
    invoke-virtual {v10, v8}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getIMEI(I)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "imei_1":Ljava/lang/String;
    invoke-virtual {v10, v9}, Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;->getIMEI(I)Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, "imei_2":Ljava/lang/String;
    sget-object v5, Lcom/cynosure/paymentsdk/helper/Constant;->DUALSIMMANUFACTURER_SPREAD:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->checkAndSaveDualSimInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 710
    .end local v1    # "imei_1":Ljava/lang/String;
    .end local v2    # "imsi_1":Ljava/lang/String;
    .end local v3    # "imei_2":Ljava/lang/String;
    .end local v4    # "imsi_2":Ljava/lang/String;
    .end local v8    # "simId_1":I
    .end local v9    # "simId_2":I
    .end local v10    # "spread":Lcom/cynosure/paymentsdk/dualsim/SpreadDualSimW1;
    :cond_0
    :goto_0
    return v7

    .line 706
    :catch_0
    move-exception v6

    .line 707
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isPad()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public InitDualSim()V
    .locals 5

    .prologue
    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, "isDualSim":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 558
    :cond_0
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 559
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISFINISHDUALSIMCHECK:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void

    .line 531
    .end local v0    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    :cond_1
    if-nez v2, :cond_0

    .line 534
    packed-switch v1, :pswitch_data_0

    .line 530
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :pswitch_0
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->initDualSim_Samsung()Z

    move-result v2

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckSamsung:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 537
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_1

    .line 541
    :pswitch_1
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->initDualSim_MTK()Z

    move-result v2

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckMTK:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 542
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_1

    .line 546
    :pswitch_2
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->initDualSim_Qualcomm()Z

    move-result v2

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckQualcomm:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_1

    .line 551
    :pswitch_3
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->initDualSim_Spread()Z

    move-result v2

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckSpread:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAppID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    new-instance v1, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 41
    .local v1, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_APPID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const-string v3, "appID"

    invoke-direct {p0, v3}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "appID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v0, "9999"

    .line 55
    .end local v0    # "appID":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 48
    .restart local v0    # "appID":Ljava/lang/String;
    :cond_0
    const-string v3, "appID:"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_APPID:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "appID":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 55
    goto :goto_0
.end method

.method public getCPID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    new-instance v1, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 61
    .local v1, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CPID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    const-string v3, "companyID"

    invoke-direct {p0, v3}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "cpID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const-string v0, "9999"

    .line 75
    .end local v0    # "cpID":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 68
    .restart local v0    # "cpID":Ljava/lang/String;
    :cond_0
    const-string v3, "companyID:"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CPID:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "cpID":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 75
    goto :goto_0
.end method

.method public getICCID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 135
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 136
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ICCID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    const-string v1, ""

    .line 140
    .local v1, "iccid":Ljava/lang/String;
    iget-object v4, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 141
    .local v2, "telephonemanager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 143
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->PERMISSION_READ_PHONE_STATE:Ljava/lang/String;

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/PermissionHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ICCID:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v1    # "iccid":Ljava/lang/String;
    .end local v2    # "telephonemanager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 6

    .prologue
    .line 85
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 86
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_IMEI:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const-string v1, ""

    .line 90
    .local v1, "imei":Ljava/lang/String;
    iget-object v4, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 91
    .local v2, "telephonemanager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 93
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->PERMISSION_READ_PHONE_STATE:Ljava/lang/String;

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/PermissionHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_IMEI:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "telephonemanager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 111
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_IMSI:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    const-string v1, ""

    .line 115
    .local v1, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 116
    .local v2, "telephonemanager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 118
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->PERMISSION_READ_PHONE_STATE:Ljava/lang/String;

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/PermissionHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_IMSI:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "telephonemanager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public getIsRootInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 480
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 481
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISROOT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    const-string v1, "0"

    .line 485
    .local v1, "isRoot":Ljava/lang/String;
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/RootHelper;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    const-string v1, "1"

    .line 490
    :cond_0
    sget-object v3, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_ISROOT:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v1    # "isRoot":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 230
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 231
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_MACADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    :try_start_0
    iget-object v6, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 235
    .local v3, "localWifiManager":Landroid/net/wifi/WifiManager;
    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->PERMISSION_ACCESS_WIFI_STATE:Ljava/lang/String;

    invoke-static {v6}, Lcom/cynosure/paymentsdk/helper/PermissionHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 238
    .local v2, "localWifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "macAddress":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 241
    sget-object v6, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_MACADDRESS:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .end local v2    # "localWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "localWifiManager":Landroid/net/wifi/WifiManager;
    .end local v4    # "macAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 246
    .restart local v3    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v6, "can not get macaddress"

    invoke-static {v6}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v3    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    const-string v4, "NA"

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v4, v5

    .line 255
    goto :goto_0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    :try_start_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const-string v1, "NA"

    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const-string v1, "NA"

    goto :goto_0
.end method

.method public getNetworkOperation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 161
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_NETWORKOPERATION:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 163
    const-string v2, "99"

    .line 164
    .local v2, "networkOperation":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 166
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_2

    .line 167
    const-string v4, "46000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 168
    const-string v4, "46002"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    const-string v4, "46007"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    :cond_0
    const-string v2, "0"

    .line 181
    :cond_1
    :goto_0
    const-string v4, "99"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 183
    sget-object v4, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_NETWORKOPERATION:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "networkOperation":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 172
    .restart local v1    # "imsi":Ljava/lang/String;
    .restart local v2    # "networkOperation":Ljava/lang/String;
    :cond_3
    const-string v4, "46001"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    const-string v2, "2"

    .line 174
    goto :goto_0

    .line 175
    :cond_4
    const-string v4, "46003"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 176
    const-string v4, "46011"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    :cond_5
    const-string v2, "1"

    goto :goto_0

    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "networkOperation":Ljava/lang/String;
    :cond_6
    move-object v2, v3

    .line 190
    goto :goto_1
.end method

.method public getOS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 220
    .local v1, "os":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 225
    .end local v1    # "os":I
    :goto_0
    return-object v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const-string v2, "0"

    goto :goto_0
.end method

.method public getPackageMD5()Ljava/lang/String;
    .locals 10

    .prologue
    .line 306
    const-string v4, ""

    .line 308
    .local v4, "md5":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/FileMD5Helper;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 314
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 315
    iget-object v7, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 317
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 332
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    :goto_1
    return-object v4

    .line 318
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 319
    .local v6, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 321
    .local v5, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 322
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->getMD5Code(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 327
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageinfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getProvAndCity()Lcom/cynosure/paymentsdk/vo/ProvAndCity;
    .locals 11

    .prologue
    .line 363
    new-instance v4, Lcom/cynosure/paymentsdk/vo/ProvAndCity;

    invoke-direct {v4}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;-><init>()V

    .line 365
    .local v4, "provAndCity":Lcom/cynosure/paymentsdk/vo/ProvAndCity;
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 367
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_PROV:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->setProv(Ljava/lang/String;)V

    .line 368
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CITY:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->setCity(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getProv()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 373
    const-string v7, ""

    .line 375
    .local v7, "tempProvAndCity":Ljava/lang/String;
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getProvAndCity_Sina()Ljava/lang/String;

    move-result-object v7

    .line 377
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->getProvAndCity_Taobao()Ljava/lang/String;

    move-result-object v7

    .line 382
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "tempProvAndCity:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 382
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 385
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 386
    const-string v9, "\\t"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "temp":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v5

    if-lt v1, v9, :cond_4

    .line 414
    .end local v1    # "i":I
    .end local v5    # "temp":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getProv()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 416
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_PROV:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getProv()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_2
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 420
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_CITY:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .end local v7    # "tempProvAndCity":Ljava/lang/String;
    :cond_3
    return-object v4

    .line 388
    .restart local v1    # "i":I
    .restart local v5    # "temp":[Ljava/lang/String;
    .restart local v7    # "tempProvAndCity":Ljava/lang/String;
    :cond_4
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->MAP_PROV:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8

    .line 397
    :goto_1
    sget-object v9, Lcom/cynosure/paymentsdk/helper/Constant;->MAP_CITY:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_a

    .line 406
    :goto_2
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getProv()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 407
    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 387
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 389
    .local v2, "j":Ljava/lang/Integer;
    sget-object v10, Lcom/cynosure/paymentsdk/helper/Constant;->MAP_PROV:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 390
    .local v8, "tempProvName":Ljava/lang/String;
    aget-object v10, v5, v1

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 391
    aget-object v10, v5, v1

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 392
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->setProv(Ljava/lang/String;)V

    goto :goto_1

    .line 397
    .end local v2    # "j":Ljava/lang/Integer;
    .end local v8    # "tempProvName":Ljava/lang/String;
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 398
    .local v3, "k":Ljava/lang/Integer;
    sget-object v10, Lcom/cynosure/paymentsdk/helper/Constant;->MAP_CITY:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 399
    .local v6, "tempCityName":Ljava/lang/String;
    aget-object v10, v5, v1

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 400
    aget-object v10, v5, v1

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 401
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->setCity(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getResolution()Ljava/lang/String;
    .locals 10

    .prologue
    .line 261
    new-instance v0, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 262
    .local v0, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    sget-object v8, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getDeviceInfoValueFromDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, "tempDeviceInfoValue":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 265
    :try_start_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 266
    .local v3, "localDisplayMetrics":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->_context:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 267
    .local v5, "localWindowManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 269
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 270
    .local v1, "i":I
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 272
    .local v2, "j":I
    const-string v6, ""

    .line 273
    .local v6, "resolution":Ljava/lang/String;
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/helper/DeviceInfoHelper;->isPad()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 274
    const-string v8, "is pad"

    invoke-static {v8}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 275
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 285
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 287
    sget-object v8, Lcom/cynosure/paymentsdk/helper/Constant;->DEVICEINFOKEY_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Lcom/cynosure/paymentsdk/helper/DBHelper;->saveDeviceInfoValue2DB(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "localWindowManager":Landroid/view/WindowManager;
    .end local v6    # "resolution":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v6

    .line 280
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "localWindowManager":Landroid/view/WindowManager;
    .restart local v6    # "resolution":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 282
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 280
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 292
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "localWindowManager":Landroid/view/WindowManager;
    .end local v6    # "resolution":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 293
    .local v4, "localException":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    const-string v6, ""

    goto :goto_1

    .end local v4    # "localException":Ljava/lang/Exception;
    :cond_2
    move-object v6, v7

    .line 298
    goto :goto_1
.end method

.method public getSDKVC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "57"

    return-object v0
.end method
