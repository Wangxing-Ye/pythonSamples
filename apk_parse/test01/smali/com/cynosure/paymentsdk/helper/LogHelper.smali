.class public Lcom/cynosure/paymentsdk/helper/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field public static _isShowLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cynosure/paymentsdk/helper/LogHelper;->_isShowLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printD(Ljava/lang/String;)V
    .locals 2
    .param p0, "logContent"    # Ljava/lang/String;

    .prologue
    .line 12
    sget-boolean v0, Lcom/cynosure/paymentsdk/helper/LogHelper;->_isShowLog:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    sget-object v0, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    sget-object v0, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTAG:Ljava/lang/String;

    const-string v1, "log D is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static printI(Ljava/lang/String;)V
    .locals 2
    .param p0, "logContent"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-boolean v0, Lcom/cynosure/paymentsdk/helper/LogHelper;->_isShowLog:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    sget-object v0, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    sget-object v0, Lcom/cynosure/paymentsdk/helper/Constant;->LOGTAG:Ljava/lang/String;

    const-string v1, "log I is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
