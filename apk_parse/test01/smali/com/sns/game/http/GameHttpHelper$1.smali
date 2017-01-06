.class Lcom/sns/game/http/GameHttpHelper$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "GameHttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/http/GameHttpHelper;->asu2cnDialogWithCallBack(Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/http/GameHttpHelper;

.field private final synthetic val$conrfimCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

.field private final synthetic val$retryCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method constructor <init>(Lcom/sns/game/http/GameHttpHelper;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/http/GameHttpHelper$1;->this$0:Lcom/sns/game/http/GameHttpHelper;

    iput-object p2, p0, Lcom/sns/game/http/GameHttpHelper$1;->val$conrfimCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    iput-object p3, p0, Lcom/sns/game/http/GameHttpHelper$1;->val$retryCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 100
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sns/game/http/GameHttpHelper$1;->this$0:Lcom/sns/game/http/GameHttpHelper;

    iget-object v1, p0, Lcom/sns/game/http/GameHttpHelper$1;->val$conrfimCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    iget-object v2, p0, Lcom/sns/game/http/GameHttpHelper$1;->val$retryCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/http/GameHttpHelper;->activateShowUnable2ConnectNetDialog(Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V

    .line 104
    return-void
.end method
