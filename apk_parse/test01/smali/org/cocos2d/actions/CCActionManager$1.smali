.class Lorg/cocos2d/actions/CCActionManager$1;
.super Lorg/cocos2d/utils/pool/ConcOneClassPool;
.source "CCActionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/actions/CCActionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cocos2d/utils/pool/ConcOneClassPool",
        "<",
        "Lorg/cocos2d/actions/CCActionManager$HashElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2d/actions/CCActionManager;


# direct methods
.method constructor <init>(Lorg/cocos2d/actions/CCActionManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2d/actions/CCActionManager$1;->this$0:Lorg/cocos2d/actions/CCActionManager;

    .line 39
    invoke-direct {p0}, Lorg/cocos2d/utils/pool/ConcOneClassPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic allocate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/CCActionManager$1;->allocate()Lorg/cocos2d/actions/CCActionManager$HashElement;

    move-result-object v0

    return-object v0
.end method

.method protected allocate()Lorg/cocos2d/actions/CCActionManager$HashElement;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/cocos2d/actions/CCActionManager$HashElement;

    invoke-direct {v0}, Lorg/cocos2d/actions/CCActionManager$HashElement;-><init>()V

    return-object v0
.end method
