.class public Lcom/cynosure/paymentsdk/CoreService$CoreTimer;
.super Ljava/lang/Object;
.source "CoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cynosure/paymentsdk/CoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoreTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cynosure/paymentsdk/CoreService;


# direct methods
.method public constructor <init>(Lcom/cynosure/paymentsdk/CoreService;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cynosure/paymentsdk/CoreService$CoreTimer;->this$0:Lcom/cynosure/paymentsdk/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    new-instance v1, Lcom/cynosure/paymentsdk/SDKCoreClass;

    invoke-direct {v1}, Lcom/cynosure/paymentsdk/SDKCoreClass;-><init>()V

    .line 87
    .local v1, "sdkCoreClass":Lcom/cynosure/paymentsdk/SDKCoreClass;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/SDKCoreClass;->doSth()V

    .line 88
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
