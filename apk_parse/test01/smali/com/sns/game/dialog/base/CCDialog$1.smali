.class Lcom/sns/game/dialog/base/CCDialog$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/base/CCDialog;->activateUpdateBanner(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/base/CCDialog;

.field private final synthetic val$Context:Ljava/lang/String;

.field private final synthetic val$Name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/base/CCDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/base/CCDialog$1;->this$0:Lcom/sns/game/dialog/base/CCDialog;

    iput-object p2, p0, Lcom/sns/game/dialog/base/CCDialog$1;->val$Context:Ljava/lang/String;

    iput-object p3, p0, Lcom/sns/game/dialog/base/CCDialog$1;->val$Name:Ljava/lang/String;

    .line 275
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 3

    .prologue
    .line 280
    const-string v0, "UserAction"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateBanner: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog$1;->val$Context:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sns/game/dialog/base/CCDialog$1;->val$Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sns/game/util/CCGameLog;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method
