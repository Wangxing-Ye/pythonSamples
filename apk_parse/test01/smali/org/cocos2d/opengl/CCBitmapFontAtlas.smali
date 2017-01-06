.class public Lorg/cocos2d/opengl/CCBitmapFontAtlas;
.super Lorg/cocos2d/nodes/CCSpriteSheet;
.source "CCBitmapFontAtlas.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCLabelProtocol;
.implements Lorg/cocos2d/protocols/CCRGBAProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;,
        Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;,
        Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;,
        Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;
    }
.end annotation


# static fields
.field public static configurations:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final kCCBitmapFontAtlasMaxChars:I = 0x800

.field static parsed:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;


# instance fields
.field color_:Lorg/cocos2d/types/ccColor3B;

.field configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

.field opacityModifyRGB_:Z

.field opacity_:I

.field string_:Lorg/cocos2d/utils/javolution/TextBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configurations:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p1, "theString"    # Ljava/lang/CharSequence;
    .param p2, "fntFile"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 499
    invoke-static {p2}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->FNTConfigLoadFile(Ljava/lang/String;)Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->parsed:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->atlasName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/nodes/CCSpriteSheet;-><init>(Ljava/lang/String;I)V

    .line 501
    sget-object v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->parsed:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    .line 504
    const/16 v0, 0xff

    iput v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacity_:I

    .line 505
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    sget-object v1, Lorg/cocos2d/types/ccColor3B;->ccWHITE:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->color_:Lorg/cocos2d/types/ccColor3B;

    .line 507
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->contentSize_:Lorg/cocos2d/types/CGSize;

    .line 508
    iget-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->textureAtlas_:Lorg/cocos2d/opengl/CCTextureAtlas;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTextureAtlas;->getTexture()Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/CCTexture2D;->hasPremultipliedAlpha()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacityModifyRGB_:Z

    .line 509
    invoke-static {v2, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    .line 511
    new-instance v0, Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-direct {v0}, Lorg/cocos2d/utils/javolution/TextBuilder;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 513
    invoke-virtual {p0, p1}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->setString(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method public static FNTConfigLoadFile(Ljava/lang/String;)Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;
    .locals 2
    .param p0, "fntFile"    # Ljava/lang/String;

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, "ret":Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;
    sget-object v1, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configurations:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 522
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configurations:Ljava/util/HashMap;

    .line 524
    :cond_0
    sget-object v1, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configurations:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;
    check-cast v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    .line 525
    .restart local v0    # "ret":Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;
    if-nez v0, :cond_1

    .line 526
    invoke-static {p0}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->configuration(Ljava/lang/String;)Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    move-result-object v0

    .line 527
    sget-object v1, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configurations:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_1
    return-object v0
.end method

.method public static FNTConfigRemoveCache()V
    .locals 1

    .prologue
    .line 535
    sget-object v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configurations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 536
    return-void
.end method

.method public static bitmapFontAtlas(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/CCBitmapFontAtlas;
    .locals 1
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "fntFile"    # Ljava/lang/String;

    .prologue
    .line 494
    new-instance v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static purgeCachedData()V
    .locals 0

    .prologue
    .line 489
    invoke-static {}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->FNTConfigRemoveCache()V

    .line 490
    return-void
.end method


# virtual methods
.method public createFontChars()V
    .locals 21

    .prologue
    .line 564
    const/4 v9, 0x0

    .line 565
    .local v9, "nextFontPositionX":I
    const/4 v10, 0x0

    .line 566
    .local v10, "nextFontPositionY":I
    const v11, 0xffff

    .line 567
    .local v11, "prev":C
    const/4 v7, 0x0

    .line 569
    .local v7, "kerningAmount":I
    const/4 v8, 0x0

    .line 570
    .local v8, "longestLine":I
    const/4 v15, 0x0

    .line 572
    .local v15, "totalHeight":I
    const/4 v12, 0x1

    .line 574
    .local v12, "quantityOfLines":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/cocos2d/utils/javolution/TextBuilder;->length()I

    move-result v14

    .line 575
    .local v14, "stringLen":I
    if-nez v14, :cond_0

    .line 646
    :goto_0
    return-void

    .line 580
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-lt v6, v0, :cond_1

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->commonHeight:I

    move/from16 v17, v0

    mul-int v15, v17, v12

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->commonHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->commonHeight:I

    move/from16 v18, v0

    mul-int v18, v18, v12

    sub-int v17, v17, v18

    move/from16 v0, v17

    neg-int v10, v0

    .line 589
    const/4 v6, 0x0

    :goto_2
    if-lt v6, v14, :cond_3

    .line 645
    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->setContentSize(FF)V

    goto :goto_0

    .line 581
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v3

    .line 582
    .local v3, "c":C
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    .line 583
    add-int/lit8 v12, v12, 0x1

    .line 580
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 590
    .end local v3    # "c":C
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/cocos2d/utils/javolution/TextBuilder;->charAt(I)C

    move-result v3

    .line 592
    .restart local v3    # "c":C
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v3, v0, :cond_5

    .line 593
    const/4 v9, 0x0

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->commonHeight:I

    move/from16 v17, v0

    sub-int v10, v10, v17

    .line 589
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 598
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->kerningAmount(II)I

    move-result v7

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->bitmapFontArray:Lorg/cocos2d/utils/collections/IntMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;

    .line 601
    .local v5, "fontDef":Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;
    if-eqz v5, :cond_4

    .line 604
    iget-object v13, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->rect:Lorg/cocos2d/types/CGRect;

    .line 608
    .local v13, "rect":Lorg/cocos2d/types/CGRect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->getChildByTag(I)Lorg/cocos2d/nodes/CCNode;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/nodes/CCSprite;

    .line 609
    .local v4, "fontChar":Lorg/cocos2d/nodes/CCSprite;
    if-nez v4, :cond_7

    .line 610
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteSheet;Lorg/cocos2d/types/CGRect;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    .line 611
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1, v6}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->addChild(Lorg/cocos2d/nodes/CCNode;II)Lorg/cocos2d/nodes/CCNode;

    .line 622
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->commonHeight:I

    move/from16 v17, v0

    iget v0, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->yOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 623
    .local v16, "yOffset":F
    int-to-float v0, v9

    move/from16 v17, v0

    iget v0, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->xOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    iget-object v0, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->rect:Lorg/cocos2d/types/CGRect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v18, v18, v19

    add-float v17, v17, v18

    int-to-float v0, v7

    move/from16 v18, v0

    add-float v17, v17, v18

    .line 624
    int-to-float v0, v10

    move/from16 v18, v0

    add-float v18, v18, v16

    iget-object v0, v13, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v19, v0

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    .line 623
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(FF)V

    .line 627
    iget v0, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->xAdvance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    add-int v9, v9, v17

    .line 628
    move v11, v3

    .line 631
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacityModifyRGB_:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->setOpacityModifyRGB(Z)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->color_:Lorg/cocos2d/types/ccColor3B;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacity_:I

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacity_:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 640
    :cond_6
    if-ge v8, v9, :cond_4

    .line 641
    move v8, v9

    goto/16 :goto_3

    .line 615
    .end local v16    # "yOffset":F
    :cond_7
    invoke-virtual {v4, v13}, Lorg/cocos2d/nodes/CCSprite;->setTextureRect(Lorg/cocos2d/types/CGRect;)V

    .line 618
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->setVisible(Z)V

    .line 619
    const/16 v17, 0xff

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    goto/16 :goto_4
.end method

.method public doesOpacityModifyRGB()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacityModifyRGB_:Z

    return v0
.end method

.method public getColor()Lorg/cocos2d/types/ccColor3B;
    .locals 2

    .prologue
    .line 468
    new-instance v0, Lorg/cocos2d/types/ccColor3B;

    iget-object v1, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->color_:Lorg/cocos2d/types/ccColor3B;

    invoke-direct {v0, v1}, Lorg/cocos2d/types/ccColor3B;-><init>(Lorg/cocos2d/types/ccColor3B;)V

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacity_:I

    return v0
.end method

.method public kerningAmount(II)I
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 547
    and-int/lit16 p1, p1, 0xff

    .line 548
    and-int/lit16 p2, p2, 0xff

    .line 549
    const/4 v2, 0x0

    .line 550
    .local v2, "ret":I
    shl-int/lit8 v3, p1, 0x10

    const v4, 0xffff

    and-int/2addr v4, p2

    or-int v1, v3, v4

    .line 552
    .local v1, "key":I
    iget-object v3, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    iget-object v3, v3, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->kerningDictionary:Lorg/cocos2d/utils/collections/IntMap;

    if-eqz v3, :cond_0

    .line 553
    iget-object v3, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->configuration_:Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    iget-object v3, v3, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->kerningDictionary:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v3, v1}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;

    .line 554
    .local v0, "element":Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;
    if-eqz v0, :cond_0

    .line 555
    iget v2, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;->amount:I

    .line 558
    .end local v0    # "element":Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;
    :cond_0
    return v2
.end method

.method public setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V
    .locals 1
    .param p1, "point"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    .line 680
    iget-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->anchorPoint_:Lorg/cocos2d/types/CGPoint;

    invoke-static {p1, v0}, Lorg/cocos2d/types/CGPoint;->equalToPoint(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    invoke-super {p0, p1}, Lorg/cocos2d/nodes/CCSpriteSheet;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 682
    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->createFontChars()V

    .line 684
    :cond_0
    return-void
.end method

.method public setColor(Lorg/cocos2d/types/ccColor3B;)V
    .locals 5
    .param p1, "color"    # Lorg/cocos2d/types/ccColor3B;

    .prologue
    .line 473
    iget-object v4, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->color_:Lorg/cocos2d/types/ccColor3B;

    invoke-virtual {v4, p1}, Lorg/cocos2d/types/ccColor3B;->set(Lorg/cocos2d/types/ccColor3B;)V

    .line 474
    iget-object v4, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->children_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 475
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 480
    return-void

    .line 476
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->children_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    move-object v3, v0

    .line 477
    check-cast v3, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .line 478
    .local v3, "p":Lorg/cocos2d/protocols/CCRGBAProtocol;
    invoke-interface {v3, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOpacity(I)V
    .locals 5
    .param p1, "o"    # I

    .prologue
    .line 454
    iput p1, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacity_:I

    .line 456
    iget-object v4, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->children_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 457
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 462
    return-void

    .line 458
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->children_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    move-object v3, v0

    .line 459
    check-cast v3, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .line 460
    .local v3, "p":Lorg/cocos2d/protocols/CCRGBAProtocol;
    iget v4, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacity_:I

    invoke-interface {v3, v4}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacity(I)V

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setOpacityModifyRGB(Z)V
    .locals 5
    .param p1, "modify"    # Z

    .prologue
    .line 664
    iput-boolean p1, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->opacityModifyRGB_:Z

    .line 665
    iget-object v4, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->children_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 666
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 671
    return-void

    .line 667
    :cond_0
    iget-object v4, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->children_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    move-object v3, v0

    .line 668
    check-cast v3, Lorg/cocos2d/protocols/CCRGBAProtocol;

    .line 669
    .local v3, "p":Lorg/cocos2d/protocols/CCRGBAProtocol;
    invoke-interface {v3, p1}, Lorg/cocos2d/protocols/CCRGBAProtocol;->setOpacityModifyRGB(Z)V

    .line 666
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setString(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newString"    # Ljava/lang/CharSequence;

    .prologue
    .line 650
    iget-object v3, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v3}, Lorg/cocos2d/utils/javolution/TextBuilder;->reset()V

    .line 651
    iget-object v3, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->string_:Lorg/cocos2d/utils/javolution/TextBuilder;

    invoke-virtual {v3, p1}, Lorg/cocos2d/utils/javolution/TextBuilder;->append(Ljava/lang/CharSequence;)Lorg/cocos2d/utils/javolution/TextBuilder;

    .line 653
    iget-object v3, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->children_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 654
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 659
    invoke-virtual {p0}, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->createFontChars()V

    .line 660
    return-void

    .line 655
    :cond_0
    iget-object v3, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;->children_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/nodes/CCNode;

    .line 656
    .local v0, "child":Lorg/cocos2d/nodes/CCNode;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/cocos2d/nodes/CCNode;->setVisible(Z)V

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
