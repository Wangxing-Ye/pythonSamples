.class public Lcom/duoku/platform/single/suspend/C;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.duoku.platform.single.ui.DKPayCenterActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.duoku.platform.single.ui.YeePaymentCenterActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.duoku.platform.single.ui.DKStartDownloadActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.duoku.platform.single.ui.DKContainerActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.alipay.android.mini.window.MiniPayActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.alipay.sdk.app.H5PayActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mm.purchasesdk.iapservice.BillingLayoutActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.duoku.platform.single.ui.DKLotteryDrawActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoku/platform/single/suspend/C;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    :goto_0
    sget-object v4, Lcom/duoku/platform/single/suspend/C;->a:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_1

    :cond_0
    return v2

    :cond_1
    sget-object v2, Lcom/duoku/platform/single/suspend/C;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Lcom/duoku/platform/single/suspend/C;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
