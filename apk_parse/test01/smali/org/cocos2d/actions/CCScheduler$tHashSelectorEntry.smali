.class Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;
.super Ljava/lang/Object;
.source "CCScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/actions/CCScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tHashSelectorEntry"
.end annotation


# instance fields
.field currentTimer:Lorg/cocos2d/actions/CCTimer;

.field currentTimerSalvaged:Z

.field entry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/actions/CCScheduler$tListEntry;",
            ">;"
        }
    .end annotation
.end field

.field paused:Z

.field target:Ljava/lang/Object;

.field timerIndex:I

.field timers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/actions/CCTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;-><init>()V

    return-void
.end method


# virtual methods
.method setPaused(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->paused:Z

    .line 48
    iget-object v0, p0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->entry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/cocos2d/actions/CCScheduler$tHashSelectorEntry;->entry:Lorg/cocos2d/actions/CCScheduler$tListEntry;

    iput-boolean p1, v0, Lorg/cocos2d/actions/CCScheduler$tListEntry;->paused:Z

    .line 51
    :cond_0
    return-void
.end method
