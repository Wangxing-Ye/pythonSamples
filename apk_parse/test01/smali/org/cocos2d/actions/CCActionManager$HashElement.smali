.class Lorg/cocos2d/actions/CCActionManager$HashElement;
.super Ljava/lang/Object;
.source "CCActionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/actions/CCActionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashElement"
.end annotation


# instance fields
.field actionIndex:I

.field final actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/actions/base/CCAction;",
            ">;"
        }
    .end annotation
.end field

.field paused:Z

.field target:Lorg/cocos2d/nodes/CCNode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actionIndex:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/actions/CCActionManager$HashElement;->actions:Ljava/util/ArrayList;

    .line 36
    return-void
.end method
