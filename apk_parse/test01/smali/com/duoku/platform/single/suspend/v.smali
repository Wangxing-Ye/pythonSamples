.class Lcom/duoku/platform/single/suspend/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/u;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/u;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/v;->a:Lcom/duoku/platform/single/suspend/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/v;->a:Lcom/duoku/platform/single/suspend/u;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/u;->a(Lcom/duoku/platform/single/suspend/u;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/v;->a:Lcom/duoku/platform/single/suspend/u;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/u;->a(Lcom/duoku/platform/single/suspend/u;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/q;->d(Lcom/duoku/platform/single/suspend/q;)Lcom/duoku/platform/single/item/e;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/q;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/e;)V

    return-void
.end method
