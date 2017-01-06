.class Lcom/duoku/platform/single/view/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/view/c;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/view/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/view/c$c;->a:Lcom/duoku/platform/single/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/view/c;Lcom/duoku/platform/single/view/c$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/view/c$c;-><init>(Lcom/duoku/platform/single/view/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/view/c$c;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/view/c;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/c$c;->a:Lcom/duoku/platform/single/view/c;

    iget-object v2, p0, Lcom/duoku/platform/single/view/c$c;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v2}, Lcom/duoku/platform/single/view/c;->b(Lcom/duoku/platform/single/view/c;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/duoku/platform/single/view/c$c;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v3}, Lcom/duoku/platform/single/view/c;->c(Lcom/duoku/platform/single/view/c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/view/c;I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c$c;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->d(Lcom/duoku/platform/single/view/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
