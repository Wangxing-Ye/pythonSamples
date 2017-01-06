.class Lcom/sns/game/dialog/CCInGamePauseDialog$2;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCInGamePauseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/CCInGamePauseDialog;->btnLibaoWithCallback(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/CCInGamePauseDialog;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCInGamePauseDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCInGamePauseDialog$2;->this$0:Lcom/sns/game/dialog/CCInGamePauseDialog;

    .line 303
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sns/game/dialog/CCInGamePauseDialog$2;->this$0:Lcom/sns/game/dialog/CCInGamePauseDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/dialog/CCInGamePauseDialog;->setIsTouchEnabled(Z)V

    .line 306
    return-void
.end method
