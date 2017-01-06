.class Lcom/sns/game/ui/CCGameMenu$1;
.super Ljava/lang/Object;
.source "CCGameMenu.java"

# interfaces
.implements Lcom/sns/game/ui/CCGameMenu$OnSelectedItemSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sns/game/ui/CCGameMenu;->addDefaultSelectedItemSettingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sns/game/ui/CCGameMenu;


# direct methods
.method constructor <init>(Lcom/sns/game/ui/CCGameMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sns/game/ui/CCGameMenu$1;->this$0:Lcom/sns/game/ui/CCGameMenu;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemSelected(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 172
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItem;->setScale(F)V

    .line 173
    return-void
.end method

.method public itemUnSelect(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 184
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItem;->setScale(F)V

    .line 185
    return-void
.end method

.method public keepSelected(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 178
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItem;->setScale(F)V

    .line 179
    return-void
.end method
