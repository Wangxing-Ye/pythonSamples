.class Lcom/duoku/platform/single/k/g$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/k/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/k/g;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/g$a;->a:Lcom/duoku/platform/single/k/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/k/g;Lcom/duoku/platform/single/k/g$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/k/g$a;-><init>(Lcom/duoku/platform/single/k/g;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/k/g$a;->a:Lcom/duoku/platform/single/k/g;

    invoke-static {v0}, Lcom/duoku/platform/single/k/g;->e(Lcom/duoku/platform/single/k/g;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
