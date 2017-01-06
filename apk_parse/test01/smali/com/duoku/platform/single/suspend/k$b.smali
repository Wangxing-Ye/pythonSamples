.class Lcom/duoku/platform/single/suspend/k$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/k;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/suspend/k;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/k$b;->a:Lcom/duoku/platform/single/suspend/k;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/suspend/k;Lcom/duoku/platform/single/suspend/k$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/k$b;-><init>(Lcom/duoku/platform/single/suspend/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k$b;->a:Lcom/duoku/platform/single/suspend/k;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/k;->a(Lcom/duoku/platform/single/suspend/k;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k$b;->a:Lcom/duoku/platform/single/suspend/k;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/k;->b(Lcom/duoku/platform/single/suspend/k;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/k$b;->a:Lcom/duoku/platform/single/suspend/k;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/k;->a(Lcom/duoku/platform/single/suspend/k;)Lcom/duoku/platform/single/suspend/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/q;->b()V

    :cond_0
    return-void
.end method
