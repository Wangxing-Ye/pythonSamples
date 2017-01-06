.class public Lcom/duoku/platform/single/view/DKListViewExtend;
.super Landroid/widget/ListView;


# static fields
.field private static final b:Ljava/lang/String; = "DKListViewExtend"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/view/DKListViewExtend;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/view/DKListViewExtend;->a:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method
