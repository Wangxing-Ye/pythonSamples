.class Lorg/cocos2d/actions/CCScheduler$tListEntry;
.super Ljava/lang/Object;
.source "CCScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/actions/CCScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "tListEntry"
.end annotation


# instance fields
.field public callback:Lorg/cocos2d/actions/UpdateCallback;

.field public impMethod:Ljava/lang/reflect/Method;

.field public paused:Z

.field public priority:I

.field public target:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2d/actions/CCScheduler$tListEntry;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/cocos2d/actions/CCScheduler$tListEntry;-><init>()V

    return-void
.end method
