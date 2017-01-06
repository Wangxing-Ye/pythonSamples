.class Lcom/sns/game/object/SHGameZombieLoader$1;
.super Ljava/lang/Object;
.source "SHGameZombieLoader.java"

# interfaces
.implements Lcom/sns/game/util/CCUtil$CanvasSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/object/SHGameZombieLoader;->setSharedRopeTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/object/SHGameZombieLoader;

.field private final synthetic val$height:I

.field private final synthetic val$ropeNode:Landroid/graphics/Bitmap;

.field private final synthetic val$sourceHeight:I


# direct methods
.method constructor <init>(Lcom/sns/game/object/SHGameZombieLoader;IILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/object/SHGameZombieLoader$1;->this$0:Lcom/sns/game/object/SHGameZombieLoader;

    iput p2, p0, Lcom/sns/game/object/SHGameZombieLoader$1;->val$height:I

    iput p3, p0, Lcom/sns/game/object/SHGameZombieLoader$1;->val$sourceHeight:I

    iput-object p4, p0, Lcom/sns/game/object/SHGameZombieLoader$1;->val$ropeNode:Landroid/graphics/Bitmap;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 125
    iget v2, p0, Lcom/sns/game/object/SHGameZombieLoader$1;->val$height:I

    iget v3, p0, Lcom/sns/game/object/SHGameZombieLoader$1;->val$sourceHeight:I

    div-int v0, v2, v3

    .line 126
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/sns/game/object/SHGameZombieLoader$1;->val$ropeNode:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sns/game/object/SHGameZombieLoader$1;->val$ropeNode:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
