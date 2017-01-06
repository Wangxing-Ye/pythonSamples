.class Lcom/duoku/platform/single/suspend/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/q;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/q;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/u;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/u;)Lcom/duoku/platform/single/suspend/q;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/u;->a:Lcom/duoku/platform/single/suspend/q;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/duoku/platform/single/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/u;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/q;->r(Lcom/duoku/platform/single/suspend/q;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/u;->a:Lcom/duoku/platform/single/suspend/q;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->e()V

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/suspend/v;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/suspend/v;-><init>(Lcom/duoku/platform/single/suspend/u;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    goto :goto_0
.end method
