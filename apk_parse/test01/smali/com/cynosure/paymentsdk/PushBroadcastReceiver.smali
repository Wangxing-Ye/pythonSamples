.class public Lcom/cynosure/paymentsdk/PushBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushBroadcastReceiver.java"


# static fields
.field public static final ACTION_USER_PRESENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x22

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/cynosure/paymentsdk/PushBroadcastReceiver;->ACTION_USER_PRESENT:Ljava/lang/String;

    return-void

    nop

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
        0x69t
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2et
        0x61t
        0x63t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x2et
        0x55t
        0x53t
        0x45t
        0x52t
        0x5ft
        0x50t
        0x52t
        0x45t
        0x53t
        0x45t
        0x4et
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cynosure/paymentsdk/PushBroadcastReceiver;->ACTION_USER_PRESENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    :try_start_0
    const-string v1, "PushBroadcastReceiver ACTION_USER_PRESENT"

    invoke-static {v1}, Lcom/cynosure/paymentsdk/helper/LogHelper;->printI(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/cynosure/paymentsdk/SDKInterface;->StartSDK(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
