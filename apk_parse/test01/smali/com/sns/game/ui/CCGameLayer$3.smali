.class Lcom/sns/game/ui/CCGameLayer$3;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/ui/CCGameLayer;->ccTargetControlTouchCallBackAn(Lorg/cocos2d/layers/CCLayer;Z)Lcom/sns/game/actions/CCLogicalCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/ui/CCGameLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/ui/CCGameLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/ui/CCGameLayer$3;->this$0:Lcom/sns/game/ui/CCGameLayer;

    .line 355
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 359
    move-object v1, p1

    check-cast v1, Lorg/cocos2d/layers/CCLayer;

    .line 360
    .local v1, "_tagLayer":Lorg/cocos2d/layers/CCLayer;
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 361
    .local v0, "_enabled":Z
    invoke-virtual {v1, v0}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 362
    return-void
.end method
