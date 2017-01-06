.class public Lcom/sns/game/object/SHGameZombieLoader;
.super Ljava/lang/Object;
.source "SHGameZombieLoader.java"


# static fields
.field private static loader:Lcom/sns/game/object/SHGameZombieLoader;


# instance fields
.field private actionLoader:Lorg/cocos2d/nodes/CCSprite;

.field private count:I

.field private maxCreate:I

.field private minCreate:I

.field private parent:Lorg/cocos2d/nodes/CCNode;

.field private ropeTexture:Lorg/cocos2d/opengl/CCTexture2D;

.field private zOrder_:I

.field private zombieList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sns/game/object/GameBaseZombie;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x19

    iput v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->count:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->minCreate:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->maxCreate:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method private getLoadCount()I
    .locals 3

    .prologue
    .line 169
    iget v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->minCreate:I

    iget v2, p0, Lcom/sns/game/object/SHGameZombieLoader;->maxCreate:I

    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v0

    .line 170
    .local v0, "loadCount":I
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sns/game/object/SHGameZombieLoader;->count:I

    if-le v1, v2, :cond_0

    .line 171
    iget v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->count:I

    iget-object v2, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v0, v1, v2

    .line 173
    :cond_0
    return v0
.end method

.method private setSharedRopeTexture()V
    .locals 9

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "copyRopes":Landroid/graphics/Bitmap;
    const-string v3, "guardian_rope"

    .line 113
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/cocos2d/nodes/CCTextureCache;->getTexture(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v7

    iput-object v7, p0, Lcom/sns/game/object/SHGameZombieLoader;->ropeTexture:Lorg/cocos2d/opengl/CCTexture2D;

    .line 114
    iget-object v7, p0, Lcom/sns/game/object/SHGameZombieLoader;->ropeTexture:Lorg/cocos2d/opengl/CCTexture2D;

    if-nez v7, :cond_0

    .line 116
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cocos2d/nodes/CCDirector;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02015f

    .line 115
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 117
    .local v4, "ropeNode":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 118
    .local v6, "sourceWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 119
    .local v5, "sourceHeight":I
    sget-object v7, Lcom/sns/game/util/DeviceManager;->winSize_:Lorg/cocos2d/types/CGSize;

    iget v7, v7, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v2, v7

    .line 120
    .local v2, "height":I
    invoke-static {}, Lcom/sns/game/util/CCUtil;->sharedUtil()Lcom/sns/game/util/CCUtil;

    move-result-object v7

    .line 121
    new-instance v8, Lcom/sns/game/object/SHGameZombieLoader$1;

    invoke-direct {v8, p0, v2, v5, v4}, Lcom/sns/game/object/SHGameZombieLoader$1;-><init>(Lcom/sns/game/object/SHGameZombieLoader;IILandroid/graphics/Bitmap;)V

    .line 120
    invoke-virtual {v7, v6, v2, v8}, Lcom/sns/game/util/CCUtil;->createCanvasBitmap(IILcom/sns/game/util/CCUtil$CanvasSettingListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v7

    .line 132
    iput-object v7, p0, Lcom/sns/game/object/SHGameZombieLoader;->ropeTexture:Lorg/cocos2d/opengl/CCTexture2D;

    .line 134
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v2    # "height":I
    .end local v4    # "ropeNode":Landroid/graphics/Bitmap;
    .end local v5    # "sourceHeight":I
    .end local v6    # "sourceWidth":I
    :cond_0
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sharedLoader()Lcom/sns/game/object/SHGameZombieLoader;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sns/game/object/SHGameZombieLoader;->loader:Lcom/sns/game/object/SHGameZombieLoader;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/sns/game/object/SHGameZombieLoader;

    invoke-direct {v0}, Lcom/sns/game/object/SHGameZombieLoader;-><init>()V

    sput-object v0, Lcom/sns/game/object/SHGameZombieLoader;->loader:Lcom/sns/game/object/SHGameZombieLoader;

    .line 32
    :cond_0
    sget-object v0, Lcom/sns/game/object/SHGameZombieLoader;->loader:Lcom/sns/game/object/SHGameZombieLoader;

    return-object v0
.end method

.method private startZombieAction([I)V
    .locals 4
    .param p1, "indexArray"    # [I

    .prologue
    .line 102
    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 105
    return-void

    .line 102
    :cond_0
    aget v0, p1, v2

    .line 103
    .local v0, "index":I
    iget-object v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sns/game/object/GameBaseZombie;

    invoke-virtual {v1}, Lcom/sns/game/object/GameBaseZombie;->runAction()V

    .line 102
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    .locals 2
    .param p1, "child"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "z"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->zOrder_:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    return-object v0
.end method

.method public callBack_selector_startLoader()V
    .locals 7

    .prologue
    .line 81
    :try_start_0
    iget-object v5, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/sns/game/object/SHGameZombieLoader;->count:I

    if-ge v5, v6, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/sns/game/object/SHGameZombieLoader;->getLoadCount()I

    move-result v3

    .line 83
    .local v3, "loadCount":I
    new-array v2, v3, [I

    .line 84
    .local v2, "indexArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 92
    invoke-direct {p0, v2}, Lcom/sns/game/object/SHGameZombieLoader;->startZombieAction([I)V

    .line 94
    .end local v1    # "i":I
    .end local v2    # "indexArray":[I
    .end local v3    # "loadCount":I
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/sns/game/object/SHGameZombieLoader;->startLoader(F)V

    .line 99
    :goto_1
    return-void

    .line 86
    .restart local v1    # "i":I
    .restart local v2    # "indexArray":[I
    .restart local v3    # "loadCount":I
    :cond_1
    new-instance v4, Lcom/sns/game/object/SHGameZombie;

    invoke-static {}, Lcom/sns/game/object/FlowerCreater;->sharedCreater()Lcom/sns/game/object/FlowerCreater;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/sns/game/object/SHGameZombie;-><init>(Lcom/sns/game/object/SHGameZombieLoader;Lcom/sns/game/object/FlowerCreater;)V

    .line 87
    .local v4, "zombie":Lcom/sns/game/object/SHGameZombie;
    invoke-virtual {v4}, Lcom/sns/game/object/SHGameZombie;->createSelf()V

    .line 89
    iget-object v5, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v5, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    aput v5, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    .end local v2    # "indexArray":[I
    .end local v3    # "loadCount":I
    .end local v4    # "zombie":Lcom/sns/game/object/SHGameZombie;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public creatSelf(Lorg/cocos2d/nodes/CCNode;I)V
    .locals 0
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "zOrder"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p2}, Lcom/sns/game/object/SHGameZombieLoader;->setZorder(I)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/sns/game/object/SHGameZombieLoader;->setParent(Lorg/cocos2d/nodes/CCNode;)V

    .line 48
    invoke-virtual {p0}, Lcom/sns/game/object/SHGameZombieLoader;->setActionLoader()V

    .line 49
    invoke-direct {p0}, Lcom/sns/game/object/SHGameZombieLoader;->setSharedRopeTexture()V

    .line 50
    return-void
.end method

.method public getParent()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    return-object v0
.end method

.method public recycleSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->removeSelf()V

    .line 60
    :cond_1
    iput-object v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 61
    iput-object v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 62
    iput-object v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->ropeTexture:Lorg/cocos2d/opengl/CCTexture2D;

    .line 63
    return-void
.end method

.method public removeAllZombie()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    return-void
.end method

.method public removeZombie(Lcom/sns/game/object/SHGameZombie;)V
    .locals 1
    .param p1, "zombieObj"    # Lcom/sns/game/object/SHGameZombie;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->zombieList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method public setActionLoader()V
    .locals 3

    .prologue
    .line 155
    const-string v0, "point.png"

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 156
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    iget-object v1, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 157
    return-void
.end method

.method public setParent(Lorg/cocos2d/nodes/CCNode;)V
    .locals 0
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sns/game/object/SHGameZombieLoader;->parent:Lorg/cocos2d/nodes/CCNode;

    .line 148
    return-void
.end method

.method public setZorder(I)V
    .locals 0
    .param p1, "z"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/sns/game/object/SHGameZombieLoader;->zOrder_:I

    .line 152
    return-void
.end method

.method public sharedRopeTexture()Lorg/cocos2d/opengl/CCTexture2D;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->ropeTexture:Lorg/cocos2d/opengl/CCTexture2D;

    return-object v0
.end method

.method public startLoader(F)V
    .locals 5
    .param p1, "createTime"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    .line 68
    invoke-static {p1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 69
    const-string v4, "callBack_selector_startLoader"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 67
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 71
    :cond_0
    return-void
.end method

.method public stopLoader()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sns/game/object/SHGameZombieLoader;->actionLoader:Lorg/cocos2d/nodes/CCSprite;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCSprite;->stopAllActions()V

    .line 77
    :cond_0
    return-void
.end method
