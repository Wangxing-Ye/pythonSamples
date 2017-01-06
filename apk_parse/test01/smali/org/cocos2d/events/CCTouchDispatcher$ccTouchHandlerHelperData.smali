.class Lorg/cocos2d/events/CCTouchDispatcher$ccTouchHandlerHelperData;
.super Ljava/lang/Object;
.source "CCTouchDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/events/CCTouchDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ccTouchHandlerHelperData"
.end annotation


# instance fields
.field public ccTouchSelectorType:I

.field final synthetic this$0:Lorg/cocos2d/events/CCTouchDispatcher;

.field public touchSel:Ljava/lang/String;

.field public touchesSel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2d/events/CCTouchDispatcher;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/cocos2d/events/CCTouchDispatcher$ccTouchHandlerHelperData;->this$0:Lorg/cocos2d/events/CCTouchDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
