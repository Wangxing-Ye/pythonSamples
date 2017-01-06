.class Lcom/sns/game/layer/CCSHNewLayer$6;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCSHNewLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/layer/CCSHNewLayer;->achDialogCancelCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/layer/CCSHNewLayer;


# direct methods
.method constructor <init>(Lcom/sns/game/layer/CCSHNewLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/layer/CCSHNewLayer$6;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    .line 913
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sns/game/layer/CCSHNewLayer$6;->this$0:Lcom/sns/game/layer/CCSHNewLayer;

    # invokes: Lcom/sns/game/layer/CCSHNewLayer;->showRewardDialog()V
    invoke-static {v0}, Lcom/sns/game/layer/CCSHNewLayer;->access$0(Lcom/sns/game/layer/CCSHNewLayer;)V

    .line 918
    return-void
.end method
