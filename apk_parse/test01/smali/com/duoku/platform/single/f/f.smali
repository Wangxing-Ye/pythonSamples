.class Lcom/duoku/platform/single/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/f/d;

.field private final synthetic b:Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/f/d;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/f/f;->a:Lcom/duoku/platform/single/f/d;

    iput-object p2, p0, Lcom/duoku/platform/single/f/f;->b:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/f/f;->a:Lcom/duoku/platform/single/f/d;

    invoke-static {v0}, Lcom/duoku/platform/single/f/d;->a(Lcom/duoku/platform/single/f/d;)Lcom/duoku/platform/single/f/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoku/platform/single/f/a;->a()V

    iget-object v0, p0, Lcom/duoku/platform/single/f/f;->a:Lcom/duoku/platform/single/f/d;

    invoke-static {v0}, Lcom/duoku/platform/single/f/d;->b(Lcom/duoku/platform/single/f/d;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/duoku/platform/single/f/d;->d()Lcom/duoku/platform/single/util/H;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finishLoadLogo  LOGO_TIMER run time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/g/a;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/f/f;->b:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-interface {v1, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
