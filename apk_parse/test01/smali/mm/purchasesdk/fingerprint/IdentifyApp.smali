.class public Lmm/purchasesdk/fingerprint/IdentifyApp;
.super Ljava/lang/Object;
.source "s"


# static fields
.field public static final COMPUTING:I = -0x6

.field public static final DATA_ERROR:I = -0x7

.field public static final FILE_IO:I = -0x3

.field public static final NOT_INITED:I = -0x1

.field public static final NO_ERROR:I = 0x0

.field public static final PARAM_INVALID:I = -0x2

.field public static final SF_NOT_FOUND:I = -0x4

.field private static final TAG:Ljava/lang/String; = "identifyapp"

.field public static final THREAD_ERROR:I = -0x5

.field private static mPurchaseCore:Lmm/purchasesdk/core/IPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 195
    :try_start_0
    const-string v1, "identifyapp"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .local v0, "a":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-void

    .line 23
    .end local v0    # "a":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 173
    .restart local v0    # "a":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IdTokenDecrypt([B)Ljava/lang/String;
.end method

.method public static native IdTokenEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native IdTokenMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native IdTokenMd5L([B)Ljava/lang/String;
.end method

.method public static native IdTokenService([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native SHA1Digest()Ljava/lang/String;
.end method

.method public static native base64decode(Ljava/lang/String;)[B
.end method

.method public static native base64encode([B)Ljava/lang/String;
.end method

.method public static native checkResponse([B[B[B)I
.end method

.method public static native checkSignature(Ljava/lang/String;)I
.end method

.method public static native contentEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decrypt([BLjava/lang/String;)[B
.end method

.method public static native decryptPapaya(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native deletelib(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native desdecrypt([BLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native desencrypt([BLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native enccontent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native enccontentuicom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encrypt([BLjava/lang/String;)[B
.end method

.method public static native encryptPapaya(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encryptPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static synchronized native declared-synchronized gatherAppSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native generateTransactionID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getAppSignature()Ljava/lang/String;
.end method

.method public static native getAppTrustInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getKeymap()Ljava/lang/String;
.end method

.method public static native getLastError()I
.end method

.method public static getPurchseCore()Lmm/purchasesdk/core/IPurchase;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-object v0
.end method

.method public static getPurchseCore(Landroid/content/Context;)Lmm/purchasesdk/core/IPurchase;
    .locals 1
    .param p0, "a"    # Landroid/content/Context;

    .prologue
    .line 87
    sget-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    if-nez v0, :cond_0

    .line 31
    const-string v0, ""

    invoke-static {p0, v0}, Lmm/purchasesdk/fingerprint/IdentifyApp;->load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmm/purchasesdk/core/IPurchase;

    sput-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    .line 12
    :cond_0
    sget-object v0, Lmm/purchasesdk/fingerprint/IdentifyApp;->mPurchaseCore:Lmm/purchasesdk/core/IPurchase;

    return-object v0
.end method

.method public static native getSignature()Ljava/lang/String;
.end method

.method public static native getcontent()Ljava/lang/String;
.end method

.method public static native getrandomnum()Ljava/lang/String;
.end method

.method public static native getrid()Ljava/lang/String;
.end method

.method public static native gsmdecode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native gsmencode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native init(Ljava/lang/Object;Ljava/lang/String;I)Z
.end method

.method public static native load(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public static native loadlib(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native md5([B)Ljava/lang/String;
.end method

.method public static native plaincontent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native plaincontentunicom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native prepareLoad(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native strongEncyptCipher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native strongUserDataCipher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
