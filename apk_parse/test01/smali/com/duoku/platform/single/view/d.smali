.class Lcom/duoku/platform/single/view/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/view/c;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/view/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/view/d;->a:Lcom/duoku/platform/single/view/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/view/d;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/view/c;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/view/d;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v1}, Lcom/duoku/platform/single/view/c;->b(Lcom/duoku/platform/single/view/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
