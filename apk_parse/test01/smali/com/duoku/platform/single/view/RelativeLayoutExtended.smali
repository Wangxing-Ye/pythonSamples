.class public Lcom/duoku/platform/single/view/RelativeLayoutExtended;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/view/RelativeLayoutExtended$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/duoku/platform/single/view/RelativeLayoutExtended$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    iget v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    iget v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    iget v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/duoku/platform/single/view/RelativeLayoutExtended$a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->b:Lcom/duoku/platform/single/view/RelativeLayoutExtended$a;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->b:Lcom/duoku/platform/single/view/RelativeLayoutExtended$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/view/RelativeLayoutExtended;->b:Lcom/duoku/platform/single/view/RelativeLayoutExtended$a;

    invoke-interface {v0}, Lcom/duoku/platform/single/view/RelativeLayoutExtended$a;->a()V

    :cond_0
    return-void
.end method
