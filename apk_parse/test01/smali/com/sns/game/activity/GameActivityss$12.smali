.class Lcom/sns/game/activity/GameActivityss$12;
.super Ljava/lang/Object;
.source "GameActivityss.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/activity/GameActivityss;->activateGameAlertDialog(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/activity/GameActivityss;

.field private final synthetic val$positiveCallBack:Lcom/sns/game/util/LogicalHandleCallBack;


# direct methods
.method constructor <init>(Lcom/sns/game/activity/GameActivityss;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/activity/GameActivityss$12;->this$0:Lcom/sns/game/activity/GameActivityss;

    iput-object p2, p0, Lcom/sns/game/activity/GameActivityss$12;->val$positiveCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss$12;->val$positiveCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/sns/game/activity/GameActivityss$12;->val$positiveCallBack:Lcom/sns/game/util/LogicalHandleCallBack;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 921
    :cond_0
    return-void
.end method
