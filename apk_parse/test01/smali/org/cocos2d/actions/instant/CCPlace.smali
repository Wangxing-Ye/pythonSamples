.class public Lorg/cocos2d/actions/instant/CCPlace;
.super Lorg/cocos2d/actions/instant/CCInstantAction;
.source "CCPlace.java"


# instance fields
.field private position:Lorg/cocos2d/types/CGPoint;


# direct methods
.method protected constructor <init>(Lorg/cocos2d/types/CGPoint;)V
    .locals 2
    .param p1, "pnt"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/cocos2d/actions/instant/CCInstantAction;-><init>()V

    .line 21
    iget v0, p1, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p1, Lorg/cocos2d/types/CGPoint;->y:F

    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/actions/instant/CCPlace;->position:Lorg/cocos2d/types/CGPoint;

    .line 22
    return-void
.end method

.method public static action(Lorg/cocos2d/types/CGPoint;)Lorg/cocos2d/actions/instant/CCPlace;
    .locals 1
    .param p0, "pnt"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 13
    new-instance v0, Lorg/cocos2d/actions/instant/CCPlace;

    invoke-direct {v0, p0}, Lorg/cocos2d/actions/instant/CCPlace;-><init>(Lorg/cocos2d/types/CGPoint;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCPlace;->copy()Lorg/cocos2d/actions/instant/CCPlace;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/cocos2d/actions/instant/CCInstantAction;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/cocos2d/actions/instant/CCPlace;->copy()Lorg/cocos2d/actions/instant/CCPlace;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/cocos2d/actions/instant/CCPlace;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lorg/cocos2d/actions/instant/CCPlace;

    iget-object v1, p0, Lorg/cocos2d/actions/instant/CCPlace;->position:Lorg/cocos2d/types/CGPoint;

    invoke-direct {v0, v1}, Lorg/cocos2d/actions/instant/CCPlace;-><init>(Lorg/cocos2d/types/CGPoint;)V

    return-object v0
.end method

.method public start(Lorg/cocos2d/nodes/CCNode;)V
    .locals 2
    .param p1, "aTarget"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lorg/cocos2d/actions/instant/CCInstantAction;->start(Lorg/cocos2d/nodes/CCNode;)V

    .line 32
    iget-object v0, p0, Lorg/cocos2d/actions/instant/CCPlace;->target:Lorg/cocos2d/nodes/CCNode;

    iget-object v1, p0, Lorg/cocos2d/actions/instant/CCPlace;->position:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 33
    return-void
.end method
