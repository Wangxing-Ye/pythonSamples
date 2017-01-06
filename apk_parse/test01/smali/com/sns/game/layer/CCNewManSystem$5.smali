.class Lcom/sns/game/layer/CCNewManSystem$5;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewManSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewManSystem;->activateCallBack(ILorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewManSystem;

.field private final synthetic val$studyId:I

.field private final synthetic val$target:Lorg/cocos2d/layers/CCLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewManSystem;ILorg/cocos2d/layers/CCLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewManSystem$5;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iput p2, p0, Lcom/sns/game/layer/CCNewManSystem$5;->val$studyId:I

    iput-object p3, p0, Lcom/sns/game/layer/CCNewManSystem$5;->val$target:Lorg/cocos2d/layers/CCLayer;

    .line 572
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 576
    iget-object v0, p0, Lcom/sns/game/layer/CCNewManSystem$5;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    invoke-virtual {v0, v1}, Lcom/sns/game/layer/CCNewManSystem;->setActivate(Z)V

    .line 577
    iget v0, p0, Lcom/sns/game/layer/CCNewManSystem$5;->val$studyId:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/sns/game/layer/CCNewManSystem$5;->val$studyId:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/sns/game/layer/CCNewManSystem$5;->this$0:Lcom/sns/game/layer/CCNewManSystem;

    iget v1, p0, Lcom/sns/game/layer/CCNewManSystem$5;->val$studyId:I

    iget-object v2, p0, Lcom/sns/game/layer/CCNewManSystem$5;->val$target:Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->activate(ILorg/cocos2d/layers/CCLayer;)V

    .line 580
    :cond_0
    return-void
.end method
