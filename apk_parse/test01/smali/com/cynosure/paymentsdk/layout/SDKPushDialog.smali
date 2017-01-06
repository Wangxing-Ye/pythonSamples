.class public Lcom/cynosure/paymentsdk/layout/SDKPushDialog;
.super Lcom/cynosure/paymentsdk/layout/SDKDialog;
.source "SDKPushDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;,
        Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;,
        Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;,
        Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;
    }
.end annotation


# instance fields
.field private _apkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _isAnyErrorInProgress:Z

.field private _pushContent:Lcom/cynosure/paymentsdk/vo/PushContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1}, Lcom/cynosure/paymentsdk/layout/SDKDialog;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean v0, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_isAnyErrorInProgress:Z

    .line 53
    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->requestWindowFeature(I)Z

    .line 54
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->initDialog()V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_apkList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->downloadAPK(Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V

    return-void
.end method

.method private downloadAPK(Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V
    .locals 7
    .param p1, "apkInfo"    # Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    .prologue
    .line 295
    :try_start_0
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    const-string v5, "\u5df2\u5b58\u5728\u4e8e\u60a8\u7684\u624b\u673a\u4e2d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cynosure/paymentsdk/SDKInterface;->showToast(Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string v4, "ready to download file"

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 302
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 303
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkFileURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->getMD5Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 304
    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "savePath":Ljava/lang/String;
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/FileHelper;->isExistSDCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 307
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 308
    const-string v5, "download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 306
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/FileHelper;->makeDirs(Ljava/lang/String;)Z

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 311
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    const-string v5, "download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 313
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 314
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkFileURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cynosure/paymentsdk/helper/EncryptHelper;->getMD5Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 315
    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file save path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 317
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 321
    invoke-static {v2}, Lcom/cynosure/paymentsdk/helper/FileHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f00\u59cb\u4e0b\u8f7d:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cynosure/paymentsdk/SDKInterface;->showToast(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkID()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6b63\u5728\u4e0b\u8f7d:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-static {v4, v5, v2}, Lcom/cynosure/paymentsdk/SDKInterface;->showDownloadNotice(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v3, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkID()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;-><init>(IZ)V

    .line 329
    .local v3, "uploadPushRecord":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;
    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;->start()V

    .line 332
    new-instance v0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;

    invoke-direct {v0, p1, v2}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;-><init>(Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;Ljava/lang/String;)V

    .line 333
    .local v0, "download":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;
    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 350
    .end local v0    # "download":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadThread;
    .end local v2    # "savePath":Ljava/lang/String;
    .end local v3    # "uploadPushRecord":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    invoke-static {v1}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "savePath":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "file is exists"

    invoke-static {v4}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    .line 338
    new-instance v3, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;

    invoke-virtual {p1}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkID()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;-><init>(IZ)V

    .line 339
    .restart local v3    # "uploadPushRecord":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;
    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;->start()V

    .line 342
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->installNormal(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 346
    .end local v3    # "uploadPushRecord":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$UploadPushUserRecordThread;
    :cond_2
    const-string v4, "\u672a\u627e\u5230SD\u5361,\u4e0d\u80fd\u8fdb\u884c\u4e0b\u8f7d"

    invoke-static {v4}, Lcom/cynosure/paymentsdk/SDKInterface;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private initDialog()V
    .locals 35

    .prologue
    .line 60
    :try_start_0
    new-instance v8, Lcom/cynosure/paymentsdk/helper/DBHelper;

    invoke-direct {v8}, Lcom/cynosure/paymentsdk/helper/DBHelper;-><init>()V

    .line 61
    .local v8, "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    invoke-virtual {v8}, Lcom/cynosure/paymentsdk/helper/DBHelper;->getRandomPushContent()Lcom/cynosure/paymentsdk/vo/PushContent;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_pushContent:Lcom/cynosure/paymentsdk/vo/PushContent;

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_pushContent:Lcom/cynosure/paymentsdk/vo/PushContent;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 65
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/Display;->getWidth()I

    move-result v25

    .line 66
    .local v25, "screenWith":I
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/Display;->getHeight()I

    move-result v24

    .line 70
    .local v24, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_pushContent:Lcom/cynosure/paymentsdk/vo/PushContent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/vo/PushContent;->getScript()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 72
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_apkList:Ljava/util/ArrayList;

    .line 74
    new-instance v26, Landroid/widget/TableLayout;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v26, "tableLayout":Landroid/widget/TableLayout;
    const/16 v31, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 76
    const-string v31, "#ffffff"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setBackgroundColor(I)V

    .line 77
    new-instance v20, Landroid/widget/TableLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v20, "para_TableLayout":Landroid/widget/TableLayout$LayoutParams;
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->setContentView(Landroid/view/View;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_pushContent:Lcom/cynosure/paymentsdk/vo/PushContent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/vo/PushContent;->getScript()Ljava/lang/String;

    move-result-object v31

    const-string v32, "------"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 82
    .local v30, "tempRow":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-lt v12, v0, :cond_1

    .line 148
    new-instance v22, Landroid/widget/TableRow;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 150
    .local v22, "row":Landroid/widget/TableRow;
    new-instance v16, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .local v16, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v31, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 152
    const/16 v31, 0x14

    const/16 v32, 0xa

    const/16 v33, 0x14

    const/16 v34, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    new-instance v7, Landroid/widget/Button;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v7, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 159
    .local v7, "buttonConfirm":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_apkList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_8

    .line 160
    const-string v31, "\u4e0b\u8f7d\u5168\u90e8"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_1
    const-string v31, "#21B8FF"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 167
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v18, "para_ButtonConfirm":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 169
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0xa

    const/16 v34, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v9, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;-><init>(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;)V

    .line 172
    .local v9, "downloadAllListener":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;
    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v6, Landroid/widget/Button;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v6, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 177
    .local v6, "buttonCancel":Landroid/widget/Button;
    const-string v31, "\u4e0b\u6b21\u518d\u8bf4"

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const-string v31, "#E7E7E7"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 180
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v17, "para_ButtonCancel":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v31, 0xa

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    const/high16 v31, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 183
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v31, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$1;-><init>(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;)V

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 197
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 199
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_isAnyErrorInProgress:Z

    .line 208
    .end local v6    # "buttonCancel":Landroid/widget/Button;
    .end local v7    # "buttonConfirm":Landroid/widget/Button;
    .end local v8    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v9    # "downloadAllListener":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$DownloadAllClickListener;
    .end local v12    # "i":I
    .end local v16    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v17    # "para_ButtonCancel":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "para_ButtonConfirm":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "para_TableLayout":Landroid/widget/TableLayout$LayoutParams;
    .end local v22    # "row":Landroid/widget/TableRow;
    .end local v24    # "screenHeight":I
    .end local v25    # "screenWith":I
    .end local v26    # "tableLayout":Landroid/widget/TableLayout;
    .end local v30    # "tempRow":[Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 83
    .restart local v8    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v12    # "i":I
    .restart local v20    # "para_TableLayout":Landroid/widget/TableLayout$LayoutParams;
    .restart local v24    # "screenHeight":I
    .restart local v25    # "screenWith":I
    .restart local v26    # "tableLayout":Landroid/widget/TableLayout;
    .restart local v30    # "tempRow":[Ljava/lang/String;
    :cond_1
    aget-object v31, v30, v12

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 85
    new-instance v23, Landroid/widget/TableRow;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 86
    .local v23, "row0":Landroid/widget/TableRow;
    const-string v31, "#FFFFFF"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 88
    aget-object v31, v30, v12

    const-string v32, "~~~~~~"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 89
    .local v27, "tempApks":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-lt v15, v0, :cond_3

    .line 144
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 82
    .end local v15    # "j":I
    .end local v23    # "row0":Landroid/widget/TableRow;
    .end local v27    # "tempApks":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 90
    .restart local v15    # "j":I
    .restart local v23    # "row0":Landroid/widget/TableRow;
    .restart local v27    # "tempApks":[Ljava/lang/String;
    :cond_3
    aget-object v31, v27, v15

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 91
    aget-object v31, v27, v15

    const-string v32, "\\|"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 92
    .local v29, "tempItem":[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 93
    new-instance v5, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;

    invoke-direct {v5}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;-><init>()V

    .line 94
    .local v5, "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    const/16 v31, 0x0

    aget-object v31, v29, v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 95
    const/16 v31, 0x0

    aget-object v31, v29, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkID(I)V

    .line 100
    :goto_4
    const/16 v31, 0x1

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkTitle(Ljava/lang/String;)V

    .line 101
    const/16 v31, 0x2

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setPackageName(Ljava/lang/String;)V

    .line 102
    const/16 v31, 0x3

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setStartActivityName(Ljava/lang/String;)V

    .line 103
    const/16 v31, 0x4

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkImageURL(Ljava/lang/String;)V

    .line 104
    const/16 v31, 0x5

    aget-object v31, v29, v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkFileURL(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_apkList:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkImageURL()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkImageURL()Ljava/lang/String;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkImageURL()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, "imageName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->getApkImageURL()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 112
    sget-object v33, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 113
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 111
    invoke-static/range {v31 .. v32}, Lcom/cynosure/paymentsdk/helper/ImageHelper;->getBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 114
    .local v28, "tempImage":Landroid/graphics/Bitmap;
    if-eqz v28, :cond_7

    .line 115
    new-instance v21, Landroid/widget/TableLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v21, "para_TableRow":Landroid/widget/TableLayout$LayoutParams;
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v13, Landroid/widget/ImageView;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v13, "image":Landroid/widget/ImageView;
    const/16 v19, 0x0

    .line 123
    .local v19, "para_Image":Landroid/widget/TableRow$LayoutParams;
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/ScreenHelper;->getOrientation()I

    move-result v31

    if-nez v31, :cond_6

    .line 124
    new-instance v19, Landroid/widget/TableRow$LayoutParams;

    .end local v19    # "para_Image":Landroid/widget/TableRow$LayoutParams;
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3f666666    # 0.9f

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x4

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3f666666    # 0.9f

    mul-float v32, v32, v33

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 129
    .restart local v19    # "para_Image":Landroid/widget/TableRow$LayoutParams;
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    sget-object v31, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 132
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    new-instance v10, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v5}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;-><init>(Lcom/cynosure/paymentsdk/layout/SDKPushDialog;Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;)V

    .line 135
    .local v10, "downloadListener":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;
    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .end local v5    # "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    .end local v10    # "downloadListener":Lcom/cynosure/paymentsdk/layout/SDKPushDialog$PushDialogDownloadClickListener;
    .end local v13    # "image":Landroid/widget/ImageView;
    .end local v14    # "imageName":Ljava/lang/String;
    .end local v19    # "para_Image":Landroid/widget/TableRow$LayoutParams;
    .end local v21    # "para_TableRow":Landroid/widget/TableLayout$LayoutParams;
    .end local v28    # "tempImage":Landroid/graphics/Bitmap;
    .end local v29    # "tempItem":[Ljava/lang/String;
    :cond_4
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 98
    .restart local v5    # "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    .restart local v29    # "tempItem":[Ljava/lang/String;
    :cond_5
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;->setApkID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 203
    .end local v5    # "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    .end local v8    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .end local v12    # "i":I
    .end local v15    # "j":I
    .end local v20    # "para_TableLayout":Landroid/widget/TableLayout$LayoutParams;
    .end local v23    # "row0":Landroid/widget/TableRow;
    .end local v24    # "screenHeight":I
    .end local v25    # "screenWith":I
    .end local v26    # "tableLayout":Landroid/widget/TableLayout;
    .end local v27    # "tempApks":[Ljava/lang/String;
    .end local v29    # "tempItem":[Ljava/lang/String;
    .end local v30    # "tempRow":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 204
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    invoke-static {v11}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    .line 206
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_isAnyErrorInProgress:Z

    goto/16 :goto_2

    .line 127
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v5    # "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    .restart local v8    # "dbHelper":Lcom/cynosure/paymentsdk/helper/DBHelper;
    .restart local v12    # "i":I
    .restart local v13    # "image":Landroid/widget/ImageView;
    .restart local v14    # "imageName":Ljava/lang/String;
    .restart local v15    # "j":I
    .restart local v19    # "para_Image":Landroid/widget/TableRow$LayoutParams;
    .restart local v20    # "para_TableLayout":Landroid/widget/TableLayout$LayoutParams;
    .restart local v21    # "para_TableRow":Landroid/widget/TableLayout$LayoutParams;
    .restart local v23    # "row0":Landroid/widget/TableRow;
    .restart local v24    # "screenHeight":I
    .restart local v25    # "screenWith":I
    .restart local v26    # "tableLayout":Landroid/widget/TableLayout;
    .restart local v27    # "tempApks":[Ljava/lang/String;
    .restart local v28    # "tempImage":Landroid/graphics/Bitmap;
    .restart local v29    # "tempItem":[Ljava/lang/String;
    .restart local v30    # "tempRow":[Ljava/lang/String;
    :cond_6
    :try_start_1
    new-instance v19, Landroid/widget/TableRow$LayoutParams;

    .end local v19    # "para_Image":Landroid/widget/TableRow$LayoutParams;
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3ecccccd    # 0.4f

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x4

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v32, v0

    const v33, 0x3ecccccd    # 0.4f

    mul-float v32, v32, v33

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v19

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .restart local v19    # "para_Image":Landroid/widget/TableRow$LayoutParams;
    goto :goto_5

    .line 138
    .end local v13    # "image":Landroid/widget/ImageView;
    .end local v19    # "para_Image":Landroid/widget/TableRow$LayoutParams;
    .end local v21    # "para_TableRow":Landroid/widget/TableLayout$LayoutParams;
    :cond_7
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_isAnyErrorInProgress:Z

    goto :goto_6

    .line 163
    .end local v5    # "apkInfo":Lcom/cynosure/paymentsdk/vo/DownloadAPKInfo;
    .end local v14    # "imageName":Ljava/lang/String;
    .end local v15    # "j":I
    .end local v23    # "row0":Landroid/widget/TableRow;
    .end local v27    # "tempApks":[Ljava/lang/String;
    .end local v28    # "tempImage":Landroid/graphics/Bitmap;
    .end local v29    # "tempItem":[Ljava/lang/String;
    .restart local v7    # "buttonConfirm":Landroid/widget/Button;
    .restart local v16    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v22    # "row":Landroid/widget/TableRow;
    :cond_8
    const-string v31, "\u7acb\u5373\u4e0b\u8f7d"

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private setDialogSize()V
    .locals 7

    .prologue
    .line 244
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 245
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 246
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 248
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/ScreenHelper;->getOrientation()I

    move-result v3

    if-nez v3, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 255
    invoke-virtual {p0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    return-void

    .line 252
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public dialogResize()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->initDialog()V

    .line 239
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->setDialogSize()V

    .line 240
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/cynosure/paymentsdk/layout/SDKDialog;->onCreate(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_pushContent:Lcom/cynosure/paymentsdk/vo/PushContent;

    if-eqz v0, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->_isAnyErrorInProgress:Z

    if-nez v0, :cond_0

    .line 221
    invoke-super {p0}, Lcom/cynosure/paymentsdk/layout/SDKDialog;->show()V

    .line 223
    invoke-direct {p0}, Lcom/cynosure/paymentsdk/layout/SDKPushDialog;->setDialogSize()V

    .line 225
    invoke-static {}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->getInstance()Lcom/cynosure/paymentsdk/layout/SDKDialogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cynosure/paymentsdk/layout/SDKDialogManager;->addDialog(Lcom/cynosure/paymentsdk/layout/SDKDialog;)V

    .line 234
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "some errors on create dialog"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_1
    const-string v0, "pushContent is null"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printD(Ljava/lang/String;)V

    goto :goto_0
.end method
