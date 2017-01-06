.class public Lcom/cynosure/paymentsdk/helper/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_FAILED_INVALID_PACKAGE:I = -0x3

.field public static final DELETE_FAILED_PERMISSION_DENIED:I = -0x4

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_OTHER:I = -0xf4240

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/helper/PackageHelper;->TAG:Ljava/lang/String;

    .line 828
    return-void

    .line 54
    nop

    :array_0
    .array-data 1
        0x50t
        0x61t
        0x63t
        0x6bt
        0x61t
        0x67t
        0x65t
        0x55t
        0x74t
        0x69t
        0x6ct
        0x73t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 477
    if-eqz p0, :cond_0

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 479
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 482
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 483
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 484
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 487
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 492
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getInstallLocation()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 503
    const-string v5, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm get-install-location"

    invoke-static {v5, v4, v3}, Lcom/cynosure/paymentsdk/helper/ShellHelper;->execCommand(Ljava/lang/String;ZZ)Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;

    move-result-object v0

    .line 504
    .local v0, "commandResult":Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;
    iget v5, v0, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->result:I

    if-nez v5, :cond_0

    .line 505
    iget-object v5, v0, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 506
    iget-object v5, v0, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 508
    :try_start_0
    iget-object v5, v0, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 509
    .local v2, "location":I
    packed-switch v2, :pswitch_data_0

    .end local v2    # "location":I
    :cond_0
    :goto_0
    move v3, v4

    .line 521
    :goto_1
    :pswitch_0
    return v3

    .line 513
    .restart local v2    # "location":I
    :pswitch_1
    const/4 v3, 0x2

    goto :goto_1

    .line 516
    .end local v2    # "location":I
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 518
    sget-object v3, Lcom/cynosure/paymentsdk/helper/PackageHelper;->TAG:Ljava/lang/String;

    const-string v5, "pm get-install-location error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getInstallLocationParams()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->getInstallLocation()I

    move-result v0

    .line 531
    .local v0, "location":I
    packed-switch v0, :pswitch_data_0

    .line 537
    const-string v1, ""

    :goto_0
    return-object v1

    .line 533
    :pswitch_0
    const-string v1, "-f"

    goto :goto_0

    .line 535
    :pswitch_1
    const-string v1, "-s"

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final install(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->isSystemApplication(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/ShellHelper;->checkRootPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    invoke-static {p0, p1}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->installSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->installNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static installNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 100
    :cond_0
    const/4 v2, 0x0

    .line 107
    :goto_0
    return v2

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 104
    const-string v3, "application/vnd.android.package-archive"

    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static installSilent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -r "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->getInstallLocationParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {p0, p1, v0}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->installSilent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static installSilent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "pmParams"    # Ljava/lang/String;

    .prologue
    const v5, -0xf4240

    const/4 v4, 0x1

    const/4 v6, -0x3

    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v4, v6

    .line 280
    .end local p2    # "pmParams":Ljava/lang/String;
    :cond_1
    :goto_0
    return v4

    .line 152
    .restart local p2    # "pmParams":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_3

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v4, v6

    .line 157
    goto :goto_0

    .line 164
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm install "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_5

    const-string p2, ""

    .end local p2    # "pmParams":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->isSystemApplication(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_1
    invoke-static {v7, v3, v4}, Lcom/cynosure/paymentsdk/helper/ShellHelper;->execCommand(Ljava/lang/String;ZZ)Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;

    move-result-object v1

    .line 166
    .local v1, "commandResult":Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 167
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    const-string v7, "Success"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    const-string v7, "success"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    :cond_6
    sget-object v3, Lcom/cynosure/paymentsdk/helper/PackageHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "installSilent successMsg:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", ErrorMsg:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    if-nez v3, :cond_8

    move v4, v5

    .line 173
    goto/16 :goto_0

    .end local v1    # "commandResult":Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;
    :cond_7
    move v3, v4

    .line 165
    goto :goto_1

    .line 175
    .restart local v1    # "commandResult":Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;
    :cond_8
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 176
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 178
    :cond_9
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_APK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 179
    const/4 v4, -0x2

    goto/16 :goto_0

    .line 181
    :cond_a
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_URI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v4, v6

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_b
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 185
    const/4 v4, -0x4

    goto/16 :goto_0

    .line 187
    :cond_c
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 188
    const/4 v4, -0x5

    goto/16 :goto_0

    .line 190
    :cond_d
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_NO_SHARED_USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 191
    const/4 v4, -0x6

    goto/16 :goto_0

    .line 193
    :cond_e
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 194
    const/4 v4, -0x7

    goto/16 :goto_0

    .line 196
    :cond_f
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 197
    const/4 v4, -0x8

    goto/16 :goto_0

    .line 199
    :cond_10
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 200
    const/16 v4, -0x9

    goto/16 :goto_0

    .line 202
    :cond_11
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 203
    const/16 v4, -0xa

    goto/16 :goto_0

    .line 205
    :cond_12
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_DEXOPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 206
    const/16 v4, -0xb

    goto/16 :goto_0

    .line 208
    :cond_13
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_OLDER_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 209
    const/16 v4, -0xc

    goto/16 :goto_0

    .line 211
    :cond_14
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 212
    const/16 v4, -0xd

    goto/16 :goto_0

    .line 214
    :cond_15
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_NEWER_SDK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 215
    const/16 v4, -0xe

    goto/16 :goto_0

    .line 217
    :cond_16
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_TEST_ONLY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 218
    const/16 v4, -0xf

    goto/16 :goto_0

    .line 220
    :cond_17
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 221
    const/16 v4, -0x10

    goto/16 :goto_0

    .line 223
    :cond_18
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MISSING_FEATURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 224
    const/16 v4, -0x11

    goto/16 :goto_0

    .line 226
    :cond_19
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_CONTAINER_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 227
    const/16 v4, -0x12

    goto/16 :goto_0

    .line 229
    :cond_1a
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 230
    const/16 v4, -0x13

    goto/16 :goto_0

    .line 232
    :cond_1b
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 233
    const/16 v4, -0x14

    goto/16 :goto_0

    .line 235
    :cond_1c
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 236
    const/16 v4, -0x15

    goto/16 :goto_0

    .line 238
    :cond_1d
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_VERIFICATION_FAILURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 239
    const/16 v4, -0x16

    goto/16 :goto_0

    .line 241
    :cond_1e
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 242
    const/16 v4, -0x17

    goto/16 :goto_0

    .line 244
    :cond_1f
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_UID_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 245
    const/16 v4, -0x18

    goto/16 :goto_0

    .line 247
    :cond_20
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_NOT_APK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 248
    const/16 v4, -0x64

    goto/16 :goto_0

    .line 250
    :cond_21
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 251
    const/16 v4, -0x65

    goto/16 :goto_0

    .line 253
    :cond_22
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 254
    const/16 v4, -0x66

    goto/16 :goto_0

    .line 256
    :cond_23
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 257
    const/16 v4, -0x67

    goto/16 :goto_0

    .line 259
    :cond_24
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 260
    const/16 v4, -0x68

    goto/16 :goto_0

    .line 262
    :cond_25
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 263
    const/16 v4, -0x69

    goto/16 :goto_0

    .line 265
    :cond_26
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 266
    const/16 v4, -0x6a

    goto/16 :goto_0

    .line 268
    :cond_27
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 269
    const/16 v4, -0x6b

    goto/16 :goto_0

    .line 271
    :cond_28
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 272
    const/16 v4, -0x6c

    goto/16 :goto_0

    .line 274
    :cond_29
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 275
    const/16 v4, -0x6d

    goto/16 :goto_0

    .line 277
    :cond_2a
    iget-object v3, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED_INTERNAL_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 278
    const/16 v4, -0x6e

    goto/16 :goto_0

    :cond_2b
    move v4, v5

    .line 280
    goto/16 :goto_0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 566
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 567
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v3, v4

    .line 572
    :goto_1
    return v3

    .line 569
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    const/4 v3, 0x1

    goto :goto_1

    .line 567
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isSystemApplication(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    if-nez p0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 400
    if-nez p0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 404
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 421
    if-eqz p0, :cond_0

    .line 422
    if-eqz p1, :cond_0

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 434
    :cond_0
    :goto_0
    return v2

    .line 428
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 429
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTopActivity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 450
    if-eqz p0, :cond_0

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-object v3

    .line 455
    :cond_1
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 456
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 457
    .local v2, "tasksInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    .line 458
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public static startInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 549
    .local v1, "sdkVersion":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 550
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 558
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 560
    return-void

    .line 554
    :cond_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v2, "pkg"

    :goto_1
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method public static final uninstall(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p0}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->isSystemApplication(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Lcom/cynosure/paymentsdk/helper/ShellHelper;->checkRootPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    invoke-static {p0, p1}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->uninstallSilent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->uninstallNormal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static uninstallNormal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 313
    :cond_0
    const/4 v1, 0x0

    .line 319
    :goto_0
    return v1

    .line 316
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 317
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static uninstallSilent(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->uninstallSilent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static uninstallSilent(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isKeepData"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 355
    :cond_0
    const/4 v3, -0x3

    .line 375
    :cond_1
    :goto_0
    return v3

    .line 362
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm uninstall"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_4

    const-string v2, " -k "

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    const-string v6, "\\ "

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    .local v0, "command":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/cynosure/paymentsdk/helper/PackageHelper;->isSystemApplication(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    invoke-static {v5, v2, v3}, Lcom/cynosure/paymentsdk/helper/ShellHelper;->execCommand(Ljava/lang/String;ZZ)Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;

    move-result-object v1

    .line 364
    .local v1, "commandResult":Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;
    iget-object v2, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 365
    iget-object v2, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    const-string v5, "Success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    const-string v5, "success"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    :cond_3
    sget-object v2, Lcom/cynosure/paymentsdk/helper/PackageHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallSilent successMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ErrorMsg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v2, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    if-nez v2, :cond_6

    move v3, v4

    .line 370
    goto :goto_0

    .line 362
    .end local v0    # "command":Ljava/lang/StringBuilder;
    .end local v1    # "commandResult":Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;
    :cond_4
    const-string v2, " "

    goto :goto_1

    .restart local v0    # "command":Ljava/lang/StringBuilder;
    :cond_5
    move v2, v3

    .line 363
    goto :goto_2

    .line 372
    .restart local v1    # "commandResult":Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;
    :cond_6
    iget-object v2, v1, Lcom/cynosure/paymentsdk/helper/ShellHelper$CommandResult;->errorMsg:Ljava/lang/String;

    const-string v3, "Permission denied"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 373
    const/4 v3, -0x4

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 375
    goto/16 :goto_0
.end method
