.class Lcom/sns/game/sdk/ui/CCBillingDialog$2;
.super Lcom/sns/game/util/LogicalHandleCallBack;
.source "CCBillingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/sdk/ui/CCBillingDialog;->updateButton(Lorg/cocos2d/menus/CCMenuItemSprite;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

.field private final synthetic val$animChild:Lorg/cocos2d/nodes/CCSprite;


# direct methods
.method constructor <init>(Lcom/sns/game/sdk/ui/CCBillingDialog;Lorg/cocos2d/nodes/CCSprite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$2;->this$0:Lcom/sns/game/sdk/ui/CCBillingDialog;

    iput-object p2, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$2;->val$animChild:Lorg/cocos2d/nodes/CCSprite;

    .line 290
    invoke-direct {p0}, Lcom/sns/game/util/LogicalHandleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHandle()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$2;->val$animChild:Lorg/cocos2d/nodes/CCSprite;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setScale(F)V

    .line 294
    iget-object v0, p0, Lcom/sns/game/sdk/ui/CCBillingDialog$2;->val$animChild:Lorg/cocos2d/nodes/CCSprite;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 295
    return-void
.end method
