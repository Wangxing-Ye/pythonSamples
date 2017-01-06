.class Lcom/sns/game/activity/GameActivityss$16;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "GameActivityss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->closeProgressDialogWithCallBack()Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/activity/GameActivityss;


# direct methods
.method constructor <init>(Lcom/sns/game/activity/GameActivityss;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$16;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 1017
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss$16;->this$0:Lcom/sns/game/activity/GameActivityss;

    invoke-virtual {v0}, Lcom/sns/game/activity/GameActivityss;->closeProgressDialog()V

    .line 1021
    return-void
.end method
