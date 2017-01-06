.class Lorg/cocos2d/menus/CCMenuItem$2;
.super Ljava/lang/Object;
.source "CCMenuItem.java"

# interfaces
.implements Lorg/cocos2d/menus/CCMenuItem$OnSelectedItemSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2d/menus/CCMenuItem;->addDefaultSelectedItemSettingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/menus/CCMenuItem;


# direct methods
.method constructor <init>(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/menus/CCMenuItem$2;->this$0:Lorg/cocos2d/menus/CCMenuItem;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemSelected(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 406
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItem;->setScale(F)V

    .line 407
    return-void
.end method

.method public itemUnSelect(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 418
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItem;->setScale(F)V

    .line 419
    return-void
.end method

.method public keepSelected(Lorg/cocos2d/menus/CCMenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Lorg/cocos2d/menus/CCMenuItem;

    .prologue
    .line 412
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/cocos2d/menus/CCMenuItem;->setScale(F)V

    .line 413
    return-void
.end method
