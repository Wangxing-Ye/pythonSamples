.class Lcom/sns/game/ui/CCGameLayer$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/ui/CCGameLayer;->controlTouchedLglCallBack(Lorg/cocos2d/layers/CCLayer;Z)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/ui/CCGameLayer;

.field private final synthetic val$enabled:Z

.field private final synthetic val$layer:Lorg/cocos2d/layers/CCLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/ui/CCGameLayer;Lorg/cocos2d/layers/CCLayer;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/ui/CCGameLayer$1;->this$0:Lcom/sns/game/ui/CCGameLayer;

    iput-object p2, p0, Lcom/sns/game/ui/CCGameLayer$1;->val$layer:Lorg/cocos2d/layers/CCLayer;

    iput-boolean p3, p0, Lcom/sns/game/ui/CCGameLayer$1;->val$enabled:Z

    .line 332
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sns/game/ui/CCGameLayer$1;->val$layer:Lorg/cocos2d/layers/CCLayer;

    iget-boolean v1, p0, Lcom/sns/game/ui/CCGameLayer$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 336
    return-void
.end method
