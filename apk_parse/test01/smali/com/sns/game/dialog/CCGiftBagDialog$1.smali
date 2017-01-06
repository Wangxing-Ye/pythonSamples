.class Lcom/sns/game/dialog/CCGiftBagDialog$1;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCGiftBagDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/dialog/CCGiftBagDialog;->getLglCallBack(Lorg/cocos2d/menus/CCMenuItemSprite;)Lcom/sns/game/util/LogicalHandleCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/dialog/CCGiftBagDialog;


# direct methods
.method constructor <init>(Lcom/sns/game/dialog/CCGiftBagDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/dialog/CCGiftBagDialog$1;->this$0:Lcom/sns/game/dialog/CCGiftBagDialog;

    .line 294
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 2

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog$1;->this$0:Lcom/sns/game/dialog/CCGiftBagDialog;

    # invokes: Lcom/sns/game/dialog/CCGiftBagDialog;->onTakeGiftCallBack()V
    invoke-static {v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->access$0(Lcom/sns/game/dialog/CCGiftBagDialog;)V

    .line 299
    iget-object v1, p0, Lcom/sns/game/dialog/CCGiftBagDialog$1;->this$0:Lcom/sns/game/dialog/CCGiftBagDialog;

    invoke-virtual {v1}, Lcom/sns/game/dialog/CCGiftBagDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method
