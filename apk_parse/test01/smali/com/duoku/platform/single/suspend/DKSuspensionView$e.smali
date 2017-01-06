.class Lcom/duoku/platform/single/suspend/DKSuspensionView$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/DKSuspensionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Lcom/duoku/platform/single/suspend/DKSuspensionView;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$e;->c:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$e;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$e;->c:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_suspension_circle_selected"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$e;->a:Ljava/util/List;

    iget v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$e;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$e;->c:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->d(Lcom/duoku/platform/single/suspend/DKSuspensionView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_suspension_circle_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iput p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$e;->b:I

    return-void
.end method
