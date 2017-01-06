.class public Lcom/cynosure/paymentsdk/helper/ScreenHelper;
.super Ljava/lang/Object;
.source "ScreenHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(F)I
    .locals 3
    .param p0, "dipValue"    # F

    .prologue
    .line 25
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 26
    .local v0, "scale":F
    mul-float v1, p0, v0

    .line 27
    const/high16 v2, 0x3f000000    # 0.5f

    .line 26
    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getOrientation()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cynosure/paymentsdk/CoreContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 12
    .local v0, "newConfig":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 20
    :goto_0
    return v1

    .line 16
    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_1

    move v1, v2

    .line 17
    goto :goto_0

    :cond_1
    move v1, v2

    .line 20
    goto :goto_0
.end method
