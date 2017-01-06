.class Lcom/sns/game/activity/GameActivityss$6;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "GameActivityss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->cancelXslibaolglCallback()Lcom/sns/game/util/LogicalHandleCallBack;
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
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$6;->this$0:Lcom/sns/game/activity/GameActivityss;

    .line 414
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "data"    # [Ljava/lang/Object;

    .prologue
    .line 417
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 418
    .local v0, "_btnFoucus":I
    packed-switch v0, :pswitch_data_0

    .line 440
    :goto_0
    :pswitch_0
    return-void

    .line 423
    :pswitch_1
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 426
    .local v1, "app":Lcom/sns/game/activity/GameActivityss;
    const/16 v2, -0x111

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
