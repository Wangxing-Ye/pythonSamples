.class Lcom/duoku/platform/single/view/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/view/c;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/view/c;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/view/c$b;->a:Lcom/duoku/platform/single/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/view/c$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/view/c;Lcom/duoku/platform/single/view/c$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/view/c$b;-><init>(Lcom/duoku/platform/single/view/c;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/view/c$b;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0, p1}, Lcom/duoku/platform/single/view/c;->a(Lcom/duoku/platform/single/view/c;I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c$b;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->e(Lcom/duoku/platform/single/view/c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/c$b;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->e(Lcom/duoku/platform/single/view/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/view/c$b;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->e(Lcom/duoku/platform/single/view/c;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/view/c$b;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/c$b;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v1}, Lcom/duoku/platform/single/view/c;->f(Lcom/duoku/platform/single/view/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_suspension_item_circle_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/view/c$b;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v0}, Lcom/duoku/platform/single/view/c;->e(Lcom/duoku/platform/single/view/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/single/view/c$b;->a:Lcom/duoku/platform/single/view/c;

    invoke-static {v1}, Lcom/duoku/platform/single/view/c;->f(Lcom/duoku/platform/single/view/c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_suspension_item_circle_select"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    iput p1, p0, Lcom/duoku/platform/single/view/c$b;->b:I

    return-void
.end method
