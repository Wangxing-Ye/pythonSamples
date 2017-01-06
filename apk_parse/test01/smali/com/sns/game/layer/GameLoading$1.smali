.class Lcom/sns/game/layer/GameLoading$1;
.super Ljava/lang/Object;
.source "GameLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/GameLoading;->invokeTargetLoadSelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/GameLoading;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/GameLoading;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/GameLoading$1;->this$0:Lcom/sns/game/layer/GameLoading;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sns/game/layer/GameLoading$1;->this$0:Lcom/sns/game/layer/GameLoading;

    # getter for: Lcom/sns/game/layer/GameLoading;->target_:Lorg/cocos2d/layers/CCLayer;
    invoke-static {v0}, Lcom/sns/game/layer/GameLoading;->access$0(Lcom/sns/game/layer/GameLoading;)Lorg/cocos2d/layers/CCLayer;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/sns/game/layer/GameLoading$1;->this$0:Lcom/sns/game/layer/GameLoading;

    invoke-virtual {v1}, Lcom/sns/game/layer/GameLoading;->getTargetSelector()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 145
    invoke-static {v0, v1, v2}, Lcom/sns/game/util/CCUtil;->invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return-void
.end method
