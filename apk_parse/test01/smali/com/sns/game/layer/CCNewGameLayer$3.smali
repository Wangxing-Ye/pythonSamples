.class Lcom/sns/game/layer/CCNewGameLayer$3;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCNewGameLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCNewGameLayer;->fgdCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCNewGameLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCNewGameLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCNewGameLayer$3;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    .line 1024
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/layer/CCNewGameLayer$3;->this$0:Lcom/sns/game/layer/CCNewGameLayer;

    # invokes: Lcom/sns/game/layer/CCNewGameLayer;->hiddenGameStars()V
    invoke-static {v1}, Lcom/sns/game/layer/CCNewGameLayer;->access$0(Lcom/sns/game/layer/CCNewGameLayer;)V

    .line 1030
    check-cast p1, Lcom/sns/game/dialog/CCFunnyGameDialog;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lcom/sns/game/dialog/CCFunnyGameDialog;->dropItem(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
