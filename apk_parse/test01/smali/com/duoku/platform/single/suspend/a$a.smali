.class Lcom/duoku/platform/single/suspend/a$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/a;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/suspend/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/a$a;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/suspend/a;Lcom/duoku/platform/single/suspend/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/a$a;-><init>(Lcom/duoku/platform/single/suspend/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a$a;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->l(Lcom/duoku/platform/single/suspend/a;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a$a;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->m(Lcom/duoku/platform/single/suspend/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a$a;->a:Lcom/duoku/platform/single/suspend/a;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a$a;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->m(Lcom/duoku/platform/single/suspend/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
