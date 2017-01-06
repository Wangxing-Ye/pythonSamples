.class Lcom/sns/game/util/CCUtil$1;
.super Ljava/lang/Object;
.source "CCUtil.java"

# interfaces
.implements Lcom/sns/game/util/CCUtil$CanvasSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/util/CCUtil;->defaultCanvasSettingListener(II)Lcom/sns/game/util/CCUtil$CanvasSettingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/util/CCUtil;

.field private final synthetic val$height:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sns/game/util/CCUtil;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/util/CCUtil$1;->this$0:Lcom/sns/game/util/CCUtil;

    iput p2, p0, Lcom/sns/game/util/CCUtil$1;->val$width:I

    iput p3, p0, Lcom/sns/game/util/CCUtil$1;->val$height:I

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 272
    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 274
    iget v0, p0, Lcom/sns/game/util/CCUtil$1;->val$width:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sns/game/util/CCUtil$1;->val$height:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 276
    return-void
.end method
