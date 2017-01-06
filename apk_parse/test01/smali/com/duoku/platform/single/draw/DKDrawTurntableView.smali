.class public Lcom/duoku/platform/single/draw/DKDrawTurntableView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:F

.field private k:[Ljava/lang/String;

.field private l:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x3c

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5145\u503c\u536110\u5143"

    aput-object v2, v0, v1

    const-string v1, "\u795e\u79d8\u5927\u5956"

    aput-object v1, v0, v4

    const-string v1, "\u4e2d\u79cb\u8282\u5927\u793c\u5305"

    aput-object v1, v0, v5

    const-string v1, "\u518d\u63a5\u518d\u5389 "

    aput-object v1, v0, v6

    const-string v1, "\u53ef\u60dc\uff0c\u6ca1\u4e2d\u5956\uff01"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u6d88\u706d\u661f\u661f\u6fc0\u6d3b\u7801"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->k:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x5

    aput v3, v0, v1

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->l:[I

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x3c

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5145\u503c\u536110\u5143"

    aput-object v2, v0, v1

    const-string v1, "\u795e\u79d8\u5927\u5956"

    aput-object v1, v0, v4

    const-string v1, "\u4e2d\u79cb\u8282\u5927\u793c\u5305"

    aput-object v1, v0, v5

    const-string v1, "\u518d\u63a5\u518d\u5389 "

    aput-object v1, v0, v6

    const-string v1, "\u53ef\u60dc\uff0c\u6ca1\u4e2d\u5956\uff01"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u6d88\u706d\u661f\u661f\u6fc0\u6d3b\u7801"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->k:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x5

    aput v3, v0, v1

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->l:[I

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x3c

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5145\u503c\u536110\u5143"

    aput-object v2, v0, v1

    const-string v1, "\u795e\u79d8\u5927\u5956"

    aput-object v1, v0, v4

    const-string v1, "\u4e2d\u79cb\u8282\u5927\u793c\u5305"

    aput-object v1, v0, v5

    const-string v1, "\u518d\u63a5\u518d\u5389 "

    aput-object v1, v0, v6

    const-string v1, "\u53ef\u60dc\uff0c\u6ca1\u4e2d\u5956\uff01"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u6d88\u706d\u661f\u661f\u6fc0\u6d3b\u7801"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->k:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x5

    aput v3, v0, v1

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->l:[I

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->j:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/duoku/platform/single/util/O;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/duoku/platform/single/util/O;->a(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v1, :cond_0

    :goto_0
    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->f:I

    iget v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->f:I

    iput v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dk_draw_circle"

    invoke-static {p1, v1}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->f:I

    iget v2, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->g:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->i:Landroid/graphics/Rect;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->k:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v7, 0x4

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/high16 v8, -0x1000000

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->i:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->f:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->c:F

    iget v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->g:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->d:F

    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0}, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v11, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->e:F

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->c:F

    iget v1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->d:F

    iget v4, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->c:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->l:[I

    array-length v0, v0

    if-lt v6, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->e:F

    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->e:F

    iget v1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->c:F

    iget v4, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->d:F

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->k:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v7, :cond_1

    move v0, v7

    :cond_1
    iget-object v1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    iget v4, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->f:I

    int-to-double v4, v4

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v9

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    iget v9, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->j:F

    mul-float/2addr v0, v9

    float-to-double v9, v0

    div-double/2addr v4, v9

    double-to-int v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v11, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_2

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->k:[Ljava/lang/String;

    aget-object v1, v0, v6

    iget-object v5, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->f:I

    iget v1, p0, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/single/draw/DKDrawTurntableView;->setMeasuredDimension(II)V

    return-void
.end method
