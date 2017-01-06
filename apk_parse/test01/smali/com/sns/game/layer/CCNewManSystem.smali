.class public Lcom/sns/game/layer/CCNewManSystem;
.super Ljava/lang/Object;
.source "CCNewManSystem.java"


# static fields
.field public static final SHARED_KEY_FRESHMAN:Ljava/lang/String; = "new_man"

.field public static final STUDY_ID_1:I = 0x1

.field public static final STUDY_ID_2:I = 0x2

.field public static final STUDY_ID_3:I = 0x3

.field public static final STUDY_ID_4:I = 0x4

.field public static final STUDY_ID_5:I = 0x5

.field public static final STUDY_ID_6:I = 0x6

.field public static final STUDY_ID_7:I = 0x7

.field private static sharedData:Landroid/content/SharedPreferences;

.field private static system:Lcom/sns/game/layer/CCNewManSystem;


# instance fields
.field private isActivate:Z

.field private isAllCompleted_:Z

.field studyNodesMapping:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/sns/game/layer/CCNewManSystem;->sharedFreshManData()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    .line 584
    iput-boolean v1, p0, Lcom/sns/game/layer/CCNewManSystem;->isActivate:Z

    .line 585
    iput-boolean v1, p0, Lcom/sns/game/layer/CCNewManSystem;->isAllCompleted_:Z

    .line 49
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewManSystem;->firstLoadSharedFreshManData()V

    .line 50
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewManSystem;->checkDone()V

    .line 51
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewManSystem;->isAllDone()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sns/game/layer/CCNewManSystem;->setAllCompleted(Z)V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/sns/game/layer/CCNewManSystem;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewManSystem;->finish()V

    return-void
.end method

.method private cancelLglCallBack(ZLorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "isFinish"    # Z
    .param p2, "targetLayer"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 437
    new-instance v0, Lcom/sns/game/layer/CCNewManSystem$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/layer/CCNewManSystem$1;-><init>(Lcom/sns/game/layer/CCNewManSystem;ZLorg/cocos2d/layers/CCLayer;)V

    return-object v0
.end method

.method private checkDone()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/CCNewManSystem;->isDone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/sns/game/layer/CCNewManSystem;->finish()V

    .line 607
    :cond_0
    return-void
.end method

.method private create(IILorg/cocos2d/layers/CCLayer;Ljava/util/List;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V
    .locals 32
    .param p1, "studyId"    # I
    .param p2, "nextStudyId"    # I
    .param p3, "targetLayer"    # Lorg/cocos2d/layers/CCLayer;
    .param p5, "callBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .param p6, "billingCallBack"    # Lcom/sns/game/util/LogicalHandleCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/cocos2d/layers/CCLayer;",
            "Ljava/util/List",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;",
            "Lcom/sns/game/util/LogicalHandleCallBack;",
            "Lcom/sns/game/util/LogicalHandleCallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p4, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    packed-switch p1, :pswitch_data_0

    .line 374
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->putNodes2Mapping(ILjava/util/List;)V

    .line 379
    :goto_1
    return-void

    .line 236
    :pswitch_0
    const-string v27, "white_point.png"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v30, 0x44480000    # 800.0f

    const/high16 v31, 0x43f00000    # 480.0f

    invoke-static/range {v28 .. v31}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    .line 237
    .local v4, "black":Lorg/cocos2d/nodes/CCSprite;
    sget-object v27, Lorg/cocos2d/types/ccColor3B;->ccBLACK:Lorg/cocos2d/types/ccColor3B;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 238
    const/16 v27, 0xa0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 239
    const/high16 v27, 0x43c80000    # 400.0f

    const/high16 v28, 0x43700000    # 240.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 241
    const-string v27, "Xsjc_Box.png"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    .line 242
    .local v5, "box":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v27, 0x43c80000    # 400.0f

    const/high16 v28, 0x43700000    # 240.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 244
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Xsjc_Step"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, "freshman"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v26

    .line 245
    .local v26, "word":Lorg/cocos2d/nodes/CCSprite;
    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v5, v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 246
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lorg/cocos2d/nodes/CCSprite;->setPositionWithCcso(FF)V

    .line 248
    const-string v27, "Xsjc_Img_dj.png"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v11

    .line 249
    .local v11, "djpm":Lorg/cocos2d/nodes/CCSprite;
    const/16 v27, 0x1

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v11, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 250
    const/high16 v27, 0x43070000    # 135.0f

    const/high16 v28, -0x3dc80000    # -46.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPositionWithCcso(FF)V

    .line 253
    if-eqz p5, :cond_0

    move-object/from16 v18, p5

    .line 254
    .local v18, "normalLglCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 256
    const v27, 0x7fffff9b

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v4, v1, v2}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 257
    const v27, 0x7fffff9b

    const/16 v28, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v5, v1, v2}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 258
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 376
    .end local v4    # "black":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "box":Lorg/cocos2d/nodes/CCSprite;
    .end local v11    # "djpm":Lorg/cocos2d/nodes/CCSprite;
    .end local v18    # "normalLglCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    .end local v26    # "word":Lorg/cocos2d/nodes/CCSprite;
    :catch_0
    move-exception v12

    .line 377
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 253
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "black":Lorg/cocos2d/nodes/CCSprite;
    .restart local v5    # "box":Lorg/cocos2d/nodes/CCSprite;
    .restart local v11    # "djpm":Lorg/cocos2d/nodes/CCSprite;
    .restart local v26    # "word":Lorg/cocos2d/nodes/CCSprite;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->activateCallBack(ILorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v18

    goto :goto_2

    .line 269
    .end local v4    # "black":Lorg/cocos2d/nodes/CCSprite;
    .end local v5    # "box":Lorg/cocos2d/nodes/CCSprite;
    .end local v11    # "djpm":Lorg/cocos2d/nodes/CCSprite;
    .end local v26    # "word":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_1
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v19

    .line 270
    .local v19, "sImgAnPoint":Lorg/cocos2d/types/CGPoint;
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v21

    .line 271
    .local v21, "sImgScale":Lorg/cocos2d/types/CGPoint;
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v20

    .line 272
    .local v20, "sImgPostion":Lorg/cocos2d/types/CGPoint;
    const/high16 v22, 0x3f800000    # 1.0f

    .line 274
    .local v22, "sImgScaleToDt":F
    invoke-static {}, Lorg/cocos2d/types/CGRect;->zero()Lorg/cocos2d/types/CGRect;

    move-result-object v9

    .line 275
    .local v9, "btnRect":Lorg/cocos2d/types/CGRect;
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v8

    .line 277
    .local v8, "btnPosition":Lorg/cocos2d/types/CGPoint;
    packed-switch p1, :pswitch_data_1

    .line 313
    :goto_3
    :pswitch_2
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Xsjc_Step"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ".png"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, "freshman"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v23

    .line 314
    .local v23, "scaleImg":Lorg/cocos2d/nodes/CCSprite;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 315
    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setScaleX(F)V

    .line 316
    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setScaleY(F)V

    .line 317
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 319
    const-string v27, "point.png"

    move-object/from16 v0, v27

    invoke-static {v0, v9}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v6

    .line 320
    .local v6, "btn":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v6, v8}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 322
    if-eqz p5, :cond_1

    move-object/from16 v18, p5

    .line 323
    .restart local v18    # "normalLglCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 326
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 327
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    invoke-static/range {v27 .. v28}, Lorg/cocos2d/actions/interval/CCScaleTo;->action(FF)Lorg/cocos2d/actions/interval/CCScaleTo;

    move-result-object v24

    .line 328
    .local v24, "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    invoke-static/range {v24 .. v24}, Lorg/cocos2d/actions/ease/CCEaseExponentialOut;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/ease/CCEaseExponentialOut;

    move-result-object v13

    .line 329
    .local v13, "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    move-object/from16 v0, p3

    check-cast v0, Lcom/sns/game/ui/CCGameLayer;

    move-object v14, v0

    .line 330
    .local v14, "gLayer":Lcom/sns/game/ui/CCGameLayer;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/sns/game/ui/CCGameLayer;->controlTouchedLglCallBack(Z)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sns/game/actions/CCLogicalCallBack;->action(Lcom/sns/game/util/LogicalHandleCallBack;)Lcom/sns/game/actions/CCLogicalCallBack;

    move-result-object v17

    .line 331
    .local v17, "lglCkAn":Lcom/sns/game/actions/CCLogicalCallBack;
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v17, v27, v28

    move-object/from16 v0, v27

    invoke-static {v13, v0}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v25

    .line 332
    .local v25, "seque":Lorg/cocos2d/actions/interval/CCSequence;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCSprite;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 335
    const v27, 0x7fffff9b

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 336
    const v27, 0x7fffff9b

    const/16 v28, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v6, v1, v2}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 337
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 279
    .end local v6    # "btn":Lorg/cocos2d/nodes/CCSprite;
    .end local v13    # "eeout":Lorg/cocos2d/actions/ease/CCEaseExponentialOut;
    .end local v14    # "gLayer":Lcom/sns/game/ui/CCGameLayer;
    .end local v17    # "lglCkAn":Lcom/sns/game/actions/CCLogicalCallBack;
    .end local v18    # "normalLglCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    .end local v23    # "scaleImg":Lorg/cocos2d/nodes/CCSprite;
    .end local v24    # "scaleTo":Lorg/cocos2d/actions/interval/CCScaleTo;
    .end local v25    # "seque":Lorg/cocos2d/actions/interval/CCSequence;
    :pswitch_3
    const v27, 0x3f4a3d71    # 0.79f

    const v28, 0x3da3d70a    # 0.08f

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 280
    const v27, 0x4089999a    # 4.3f

    const v28, 0x4179999a    # 15.6f

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 281
    const v27, 0x441ec000    # 635.0f

    const/high16 v28, 0x421c0000    # 39.0f

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 282
    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x3e800000    # 0.25f

    mul-float v22, v27, v28

    .line 283
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v29, 0x43a30000    # 326.0f

    const/high16 v30, 0x42940000    # 74.0f

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 284
    const v27, 0x441ec000    # 635.0f

    const/high16 v28, 0x42200000    # 40.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    goto/16 :goto_3

    .line 287
    :pswitch_4
    const v27, 0x3e19999a    # 0.15f

    const v28, 0x3da3d70a    # 0.08f

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 288
    const/high16 v27, 0x40c00000    # 6.0f

    const/high16 v28, 0x41a00000    # 20.0f

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 289
    const/high16 v27, 0x42f40000    # 122.0f

    const/high16 v28, 0x421c0000    # 39.0f

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 290
    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x3e800000    # 0.25f

    mul-float v22, v27, v28

    .line 291
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v29, 0x437c0000    # 252.0f

    const/high16 v30, 0x428c0000    # 70.0f

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 292
    const/high16 v27, 0x42fa0000    # 125.0f

    const/high16 v28, 0x42200000    # 40.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    goto/16 :goto_3

    .line 295
    :pswitch_5
    const/high16 v27, 0x3f000000    # 0.5f

    const v28, 0x3d23d70a    # 0.04f

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 296
    const/high16 v27, 0x40d00000    # 6.5f

    const/high16 v28, 0x41e80000    # 29.0f

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 297
    const/high16 v27, 0x43c80000    # 400.0f

    const/high16 v28, 0x41880000    # 17.0f

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 298
    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x3e800000    # 0.25f

    mul-float v22, v27, v28

    .line 299
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v29, 0x43140000    # 148.0f

    const/high16 v30, 0x42280000    # 42.0f

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 300
    const/high16 v27, 0x43c80000    # 400.0f

    const/high16 v28, 0x41980000    # 19.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    goto/16 :goto_3

    .line 303
    :pswitch_6
    const v27, 0x3eb851ec    # 0.36f

    const v28, 0x3db851ec    # 0.09f

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 304
    const/high16 v27, 0x41200000    # 10.0f

    const v28, 0x416ccccd    # 14.8f

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 305
    const/high16 v27, 0x438f0000    # 286.0f

    const/high16 v28, 0x422c0000    # 43.0f

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    .line 306
    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x3e800000    # 0.25f

    mul-float v22, v27, v28

    .line 307
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/high16 v29, 0x42f60000    # 123.0f

    const/high16 v30, 0x42a40000    # 82.0f

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->set(FFFF)V

    .line 308
    const v27, 0x438f8000    # 287.0f

    const/high16 v28, 0x42280000    # 42.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/cocos2d/types/CGPoint;->set(FF)V

    goto/16 :goto_3

    .line 322
    .restart local v6    # "btn":Lorg/cocos2d/nodes/CCSprite;
    .restart local v23    # "scaleImg":Lorg/cocos2d/nodes/CCSprite;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->activateCallBack(ILorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v18

    goto/16 :goto_4

    .line 344
    .end local v6    # "btn":Lorg/cocos2d/nodes/CCSprite;
    .end local v8    # "btnPosition":Lorg/cocos2d/types/CGPoint;
    .end local v9    # "btnRect":Lorg/cocos2d/types/CGRect;
    .end local v19    # "sImgAnPoint":Lorg/cocos2d/types/CGPoint;
    .end local v20    # "sImgPostion":Lorg/cocos2d/types/CGPoint;
    .end local v21    # "sImgScale":Lorg/cocos2d/types/CGPoint;
    .end local v22    # "sImgScaleToDt":F
    .end local v23    # "scaleImg":Lorg/cocos2d/nodes/CCSprite;
    :pswitch_7
    const-string v27, "CCPayGoldDialog_Bg.png"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v10

    .line 345
    .local v10, "dialogBox":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v27, 0x43c80000    # 400.0f

    const/high16 v28, 0x43700000    # 240.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 347
    const-string v27, "Xsjc_Step4_Img_Black.png"

    const-string v28, "freshman"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v15

    .line 348
    .local v15, "img":Lorg/cocos2d/nodes/CCSprite;
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(FF)V

    .line 349
    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 351
    const-string v27, "Xsjc_Step4_Btn_Get.png"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v7

    .line 352
    .local v7, "btnGet":Lorg/cocos2d/nodes/CCSprite;
    const/high16 v27, 0x43440000    # 196.0f

    const/high16 v28, 0x43520000    # 210.0f

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 354
    const-string v27, "Xsjc_Step4_Img_Get.png"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v16

    .line 355
    .local v16, "imgGet":Lorg/cocos2d/nodes/CCSprite;
    const v27, 0x43808000    # 257.0f

    const v28, 0x43888000    # 273.0f

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 357
    if-eqz p5, :cond_2

    move-object/from16 v18, p5

    .line 358
    .restart local v18    # "normalLglCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/cocos2d/nodes/CCSprite;->setUserData(Ljava/lang/Object;)V

    .line 360
    const v27, 0x7fffff9b

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v10, v1, v2}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 361
    const v27, 0x7fffff9b

    const/16 v28, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v15, v1, v2}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 362
    const v27, 0x7fffff9b

    const/16 v28, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v7, v1, v2}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 363
    const v27, 0x7fffff9b

    const/16 v28, 0x4

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 364
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 357
    .end local v18    # "normalLglCallBack":Lcom/sns/game/util/LogicalHandleCallBack;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem;->activateCallBack(ILorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    goto :goto_5

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 277
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private createSpriteByFrameOrImage(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rootPath"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    .line 663
    .local v0, "cache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v1

    .line 664
    .local v1, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-eqz v1, :cond_0

    .line 665
    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 670
    :goto_0
    return-object v2

    .line 667
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    goto :goto_0

    .line 670
    :cond_1
    invoke-static {p1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    goto :goto_0
.end method

.method private finish()V
    .locals 6

    .prologue
    .line 132
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sns/game/layer/CCNewManSystem;->setActivate(Z)V

    .line 133
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sns/game/layer/CCNewManSystem;->setAllCompleted(Z)V

    .line 134
    sget-object v4, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 135
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x7

    if-le v2, v4, :cond_0

    .line 139
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 136
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "i":I
    :cond_0
    move v3, v2

    .line 137
    .local v3, "studyId":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i":I
    .end local v3    # "studyId":I
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private firstLoadSharedFreshManData()V
    .locals 3

    .prologue
    .line 66
    sget-object v1, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private isAllDone()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 611
    :try_start_0
    sget-object v7, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 612
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 613
    .local v2, "keyArray":[Ljava/lang/String;
    array-length v8, v2

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    .line 618
    const/4 v6, 0x1

    .line 621
    .end local v2    # "keyArray":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return v6

    .line 613
    .restart local v2    # "keyArray":[Ljava/lang/String;
    .restart local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    aget-object v4, v2, v7

    .line 614
    .local v4, "sharedKey":Ljava/lang/String;
    sget-object v9, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    const/4 v10, 0x0

    invoke-interface {v9, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 616
    .local v0, "done":Z
    if-eqz v0, :cond_0

    .line 613
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 619
    .end local v0    # "done":Z
    .end local v2    # "keyArray":[Ljava/lang/String;
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "sharedKey":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private setAllCompleted(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/sns/game/layer/CCNewManSystem;->isAllCompleted_:Z

    .line 601
    return-void
.end method

.method private static sharedFreshManData()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 674
    sget-object v0, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v0, Lcom/sns/game/activity/GameActivityss;

    .line 675
    .local v0, "app":Lcom/sns/game/activity/GameActivityss;
    const-string v2, "new_man"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sns/game/activity/GameActivityss;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 676
    .local v1, "preferences":Landroid/content/SharedPreferences;
    return-object v1
.end method

.method public static sharedSystem()Lcom/sns/game/layer/CCNewManSystem;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/sns/game/layer/CCNewManSystem;->system:Lcom/sns/game/layer/CCNewManSystem;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/sns/game/layer/CCNewManSystem;

    invoke-direct {v0}, Lcom/sns/game/layer/CCNewManSystem;-><init>()V

    sput-object v0, Lcom/sns/game/layer/CCNewManSystem;->system:Lcom/sns/game/layer/CCNewManSystem;

    .line 62
    :cond_0
    sget-object v0, Lcom/sns/game/layer/CCNewManSystem;->system:Lcom/sns/game/layer/CCNewManSystem;

    return-object v0
.end method


# virtual methods
.method public activate(ILorg/cocos2d/layers/CCLayer;)V
    .locals 17
    .param p1, "studyId"    # I
    .param p2, "targetLayer"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 455
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    if-eqz p2, :cond_0

    .line 457
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sns/game/layer/CCNewManSystem;->isAllCompleted_:Z

    if-nez v3, :cond_0

    .line 458
    invoke-virtual/range {p0 .. p1}, Lcom/sns/game/layer/CCNewManSystem;->isDone(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    invoke-virtual/range {p0 .. p1}, Lcom/sns/game/layer/CCNewManSystem;->doneTo(I)V

    .line 463
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v7, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 468
    :pswitch_0
    const/4 v5, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/sns/game/layer/CCNewManSystem;->cancelLglCallBack(ZLorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/sns/game/layer/CCNewManSystem;->create(IILorg/cocos2d/layers/CCLayer;Ljava/util/List;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    .end local v7    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :catch_0
    move-exception v16

    .line 567
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 473
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v7    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :pswitch_1
    :try_start_1
    new-instance v8, Lcom/sns/game/layer/CCNewManSystem$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem$2;-><init>(Lcom/sns/game/layer/CCNewManSystem;Lorg/cocos2d/layers/CCLayer;I)V

    .line 485
    .local v8, "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    add-int/lit8 v5, p1, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/sns/game/layer/CCNewManSystem;->create(IILorg/cocos2d/layers/CCLayer;Ljava/util/List;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V

    goto :goto_0

    .line 490
    .end local v8    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    :pswitch_2
    add-int/lit8 v11, p1, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/sns/game/layer/CCNewManSystem;->create(IILorg/cocos2d/layers/CCLayer;Ljava/util/List;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V

    goto :goto_0

    .line 495
    :pswitch_3
    new-instance v8, Lcom/sns/game/layer/CCNewManSystem$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem$3;-><init>(Lcom/sns/game/layer/CCNewManSystem;Lorg/cocos2d/layers/CCLayer;I)V

    .line 506
    .restart local v8    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    add-int/lit8 v5, p1, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/sns/game/layer/CCNewManSystem;->create(IILorg/cocos2d/layers/CCLayer;Ljava/util/List;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V

    goto :goto_0

    .line 511
    .end local v8    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    :pswitch_4
    add-int/lit8 v11, p1, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/sns/game/layer/CCNewManSystem;->create(IILorg/cocos2d/layers/CCLayer;Ljava/util/List;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V

    goto/16 :goto_0

    .line 516
    :pswitch_5
    new-instance v8, Lcom/sns/game/layer/CCNewManSystem$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v8, v0, v1, v2}, Lcom/sns/game/layer/CCNewManSystem$4;-><init>(Lcom/sns/game/layer/CCNewManSystem;Lorg/cocos2d/layers/CCLayer;I)V

    .line 524
    .restart local v8    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    add-int/lit8 v5, p1, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/sns/game/layer/CCNewManSystem;->create(IILorg/cocos2d/layers/CCLayer;Ljava/util/List;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V

    goto/16 :goto_0

    .line 529
    .end local v8    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/sns/game/layer/CCNewManSystem;->resetTo(I)V

    .line 530
    const/4 v11, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/sns/game/layer/CCNewManSystem;->cancelLglCallBack(ZLorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/sns/game/layer/CCNewManSystem;->create(IILorg/cocos2d/layers/CCLayer;Ljava/util/List;Lcom/sns/game/util/LogicalHandleCallBack;Lcom/sns/game/util/LogicalHandleCallBack;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public activateCallBack(ILorg/cocos2d/layers/CCLayer;)Lcom/sns/game/util/LogicalHandleCallBack;
    .locals 1
    .param p1, "studyId"    # I
    .param p2, "target"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 572
    new-instance v0, Lcom/sns/game/layer/CCNewManSystem$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/layer/CCNewManSystem$5;-><init>(Lcom/sns/game/layer/CCNewManSystem;ILorg/cocos2d/layers/CCLayer;)V

    return-object v0
.end method

.method public doneTo(I)V
    .locals 1
    .param p1, "studyId"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sns/game/layer/CCNewManSystem;->setStudyStepTo(IZ)V

    .line 105
    return-void
.end method

.method public isActivate()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/sns/game/layer/CCNewManSystem;->isActivate:Z

    return v0
.end method

.method public isAllCompleted()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/sns/game/layer/CCNewManSystem;->isAllCompleted_:Z

    return v0
.end method

.method public isDone(I)Z
    .locals 6
    .param p1, "studyId"    # I

    .prologue
    const/4 v2, 0x0

    .line 627
    :try_start_0
    iget-boolean v3, p0, Lcom/sns/game/layer/CCNewManSystem;->isAllCompleted_:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 632
    :cond_0
    :goto_0
    return v2

    .line 628
    :cond_1
    sget-object v3, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 630
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public varargs isDone([I)Z
    .locals 6
    .param p1, "studyIds"    # [I

    .prologue
    .line 637
    const/4 v0, 0x1

    .line 640
    .local v0, "complete":Z
    :try_start_0
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 652
    :goto_1
    return v0

    .line 640
    :cond_0
    aget v2, p1, v3

    .line 642
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/CCNewManSystem;->isDone(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 643
    const/4 v0, 0x0

    .line 644
    goto :goto_1

    .line 640
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 647
    .end local v2    # "id":I
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 649
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public loadSystem(Lorg/cocos2d/layers/CCLayer;)V
    .locals 4
    .param p1, "target"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 85
    :try_start_0
    iget-boolean v3, p0, Lcom/sns/game/layer/CCNewManSystem;->isAllCompleted_:Z

    if-nez v3, :cond_0

    .line 87
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v1

    .line 88
    .local v1, "sfCache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    const-string v3, "freshman/Xsjc_UI.plist"

    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    .line 90
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v2

    .line 91
    .local v2, "tCache":Lorg/cocos2d/nodes/CCTextureCache;
    const-string v3, "freshman/Xsjc_Step2.png"

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    .line 92
    const-string v3, "freshman/Xsjc_Step3.png"

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    .line 93
    const-string v3, "freshman/Xsjc_Step4_Img_Black.png"

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;

    .line 94
    const-string v3, "freshman/Xsjc_Step5.png"

    invoke-virtual {v2, v3}, Lorg/cocos2d/nodes/CCTextureCache;->addImage(Ljava/lang/String;)Lorg/cocos2d/opengl/CCTexture2D;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "sfCache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    .end local v2    # "tCache":Lorg/cocos2d/nodes/CCTextureCache;
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public putNodes2Mapping(ILjava/util/List;)V
    .locals 3
    .param p1, "studyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lorg/cocos2d/nodes/CCNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "studyNodes":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 151
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/CCNewManSystem;->setActivate(Z)V

    .line 152
    iget-object v1, p0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeNodes4Mapping(I)V
    .locals 5
    .param p1, "studyId"    # I

    .prologue
    .line 163
    :try_start_0
    iget-object v3, p0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :try_start_1
    iget-object v2, p0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 165
    .local v1, "studyNodes":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-static {v1}, Lorg/cocos2d/nodes/CCNode;->removeChildren(Ljava/lang/Iterable;)V

    .line 163
    monitor-exit v3

    .line 171
    .end local v1    # "studyNodes":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    :goto_0
    return-void

    .line 163
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public resetTo(I)V
    .locals 1
    .param p1, "studyId"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sns/game/layer/CCNewManSystem;->setStudyStepTo(IZ)V

    .line 109
    return-void
.end method

.method public setActivate(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/sns/game/layer/CCNewManSystem;->isActivate:Z

    .line 593
    return-void
.end method

.method public setStudyStepTo(IZ)V
    .locals 7
    .param p1, "studyId"    # I
    .param p2, "v"    # Z

    .prologue
    .line 114
    :try_start_0
    sget-object v4, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 118
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 119
    .local v0, "complete_":Z
    sget-object v4, Lcom/sns/game/layer/CCNewManSystem;->sharedData:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 120
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "complete_":Z
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected spriteByFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    .line 657
    .local v0, "cache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    invoke-virtual {v0, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    return-object v1
.end method

.method public touched(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    :try_start_0
    iget-object v7, p0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 199
    const/16 v7, 0x112

    invoke-static {v7}, Lcom/sns/game/util/SoundManager;->playTriggerEffect(I)V

    .line 200
    iget-object v7, p0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 201
    .local v6, "studyId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/sns/game/layer/CCNewManSystem;->studyNodesMapping:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 202
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 225
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    .end local v6    # "studyId":Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-void

    .line 202
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    .restart local v6    # "studyId":Ljava/lang/Integer;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCNode;

    .line 203
    .local v5, "node":Lorg/cocos2d/nodes/CCNode;
    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCNode;->getUserData()Ljava/lang/Object;

    move-result-object v3

    .line 204
    .local v3, "data":Ljava/lang/Object;
    instance-of v8, v3, Lcom/sns/game/util/LogicalHandleCallBack;

    if-eqz v8, :cond_0

    .line 205
    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCNode;->getBoundingBox()Lorg/cocos2d/types/CGRect;

    move-result-object v8

    .line 206
    invoke-virtual {v5}, Lorg/cocos2d/nodes/CCNode;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v9

    invoke-virtual {v9, p1}, Lorg/cocos2d/nodes/CCNode;->convertTouchToNodeSpace(Landroid/view/MotionEvent;)Lorg/cocos2d/types/CGPoint;

    move-result-object v9

    .line 205
    invoke-static {v8, v9}, Lorg/cocos2d/types/CGRect;->containsPoint(Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGPoint;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 207
    move-object v0, v3

    check-cast v0, Lcom/sns/game/util/LogicalHandleCallBack;

    move-object v1, v0

    .line 209
    .local v1, "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    .line 210
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sns/game/layer/CCNewManSystem;->removeNodes4Mapping(I)V

    .line 211
    invoke-virtual {v1}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v1    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    .end local v3    # "data":Ljava/lang/Object;
    .end local v5    # "node":Lorg/cocos2d/nodes/CCNode;
    .end local v6    # "studyId":Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 223
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 215
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "callBack":Lcom/sns/game/util/LogicalHandleCallBack;
    .restart local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    .restart local v3    # "data":Ljava/lang/Object;
    .restart local v5    # "node":Lorg/cocos2d/nodes/CCNode;
    .restart local v6    # "studyId":Ljava/lang/Integer;
    :cond_3
    const/4 v7, 0x0

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v7}, Lcom/sns/game/util/LogicalHandleCallBack;->updateHandleObject(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
