.class Lorg/cocos2d/nodes/CCSprite$TransformValues;
.super Ljava/lang/Object;
.source "CCSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/nodes/CCSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransformValues"
.end annotation


# instance fields
.field ap:Lorg/cocos2d/types/CGPoint;

.field pos:Lorg/cocos2d/types/CGPoint;

.field rotation:F

.field scale:Lorg/cocos2d/types/CGPoint;

.field final synthetic this$0:Lorg/cocos2d/nodes/CCSprite;


# direct methods
.method constructor <init>(Lorg/cocos2d/nodes/CCSprite;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/cocos2d/nodes/CCSprite$TransformValues;->this$0:Lorg/cocos2d/nodes/CCSprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
