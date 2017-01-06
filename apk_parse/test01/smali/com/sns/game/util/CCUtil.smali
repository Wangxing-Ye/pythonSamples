.class public Lcom/sns/game/util/CCUtil;
.super Ljava/lang/Object;
.source "CCUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sns/game/util/CCUtil$CanvasSettingListener;,
        Lcom/sns/game/util/CCUtil$OwnCompartaor;
    }
.end annotation


# static fields
.field private static final DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static util:Lcom/sns/game/util/CCUtil;


# instance fields
.field private canvasSettingListener_:Lcom/sns/game/util/CCUtil$CanvasSettingListener;

.field private ownCompartaor_:Lcom/sns/game/util/CCUtil$OwnCompartaor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static varargs addChilds(ILorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p0, "z"    # I
    .param p1, "parent"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "childs"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 761
    if-eqz p1, :cond_0

    .line 762
    :try_start_0
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 771
    :cond_0
    :goto_1
    return-void

    .line 762
    :cond_1
    aget-object v1, p2, v2

    .line 763
    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v1, :cond_2

    .line 764
    invoke-virtual {p1, v1, p0}, Lorg/cocos2d/nodes/CCNode;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    .end local v1    # "node":Lorg/cocos2d/nodes/CCNode;
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private addSpaces(I)Ljava/lang/String;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1005
    :cond_0
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static asMaskOffSprite(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;
    .locals 4
    .param p0, "anchor"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;
    .param p3, "color3b"    # Lorg/cocos2d/types/ccColor3B;
    .param p4, "opacityScale"    # F

    .prologue
    .line 716
    const/4 v1, 0x0

    .line 719
    .local v1, "maskOffSprite":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    const-string v2, "white_point.png"

    invoke-static {v2}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 720
    invoke-virtual {v1, p0}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 721
    invoke-virtual {v1, p1}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 722
    invoke-virtual {v1, p3}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 723
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 724
    iget v2, p2, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setScaleX(F)V

    .line 725
    iget v2, p2, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setScaleY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 731
    :goto_0
    return-object v2

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 729
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static ccCreateMenuItmSp(Ljava/lang/String;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;Lorg/cocos2d/types/CGPoint;I)Lorg/cocos2d/menus/CCMenuItemSprite;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "targetObj"    # Lorg/cocos2d/nodes/CCNode;
    .param p2, "callBack"    # Ljava/lang/String;
    .param p3, "pnt"    # Lorg/cocos2d/types/CGPoint;
    .param p4, "tag"    # I

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 662
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    .line 663
    .local v0, "cache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    invoke-virtual {v0, p0}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v1

    .line 664
    .local v1, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .line 666
    .local v2, "normalSp":Lorg/cocos2d/nodes/CCSprite;
    :goto_0
    invoke-static {v2, p1, p2}, Lorg/cocos2d/menus/CCMenuItemSprite;->item(Lorg/cocos2d/nodes/CCNode;Lorg/cocos2d/nodes/CCNode;Ljava/lang/String;)Lorg/cocos2d/menus/CCMenuItemSprite;

    move-result-object v3

    .line 667
    .local v3, "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    const/4 v4, -0x1

    if-eq p4, v4, :cond_0

    invoke-virtual {v3, p4}, Lorg/cocos2d/menus/CCMenuItemSprite;->setTag(I)V

    .line 668
    :cond_0
    invoke-virtual {v3, v5, v5}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnchorPoint(FF)V

    .line 669
    invoke-virtual {v3, p3}, Lorg/cocos2d/menus/CCMenuItemSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V

    .line 670
    invoke-virtual {v3, v7}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafePressMode(Z)V

    .line 671
    invoke-virtual {v3, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setSafeResponseTime(F)V

    .line 672
    invoke-virtual {v3, v7, v6}, Lorg/cocos2d/menus/CCMenuItemSprite;->setAnimPressMode(ZF)V

    .line 673
    return-object v3

    .line 665
    .end local v2    # "normalSp":Lorg/cocos2d/nodes/CCSprite;
    .end local v3    # "target":Lorg/cocos2d/menus/CCMenuItemSprite;
    :cond_1
    invoke-static {p0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v2

    .restart local v2    # "normalSp":Lorg/cocos2d/nodes/CCSprite;
    goto :goto_0
.end method

.method public static ccuCalcMoveEquivalentTime(FFF)F
    .locals 2
    .param p0, "ccpDis"    # F
    .param p1, "fixableDis"    # F
    .param p2, "fixableTime"    # F

    .prologue
    .line 836
    div-float v0, p0, p1

    .line 837
    .local v0, "scale":F
    mul-float v1, p2, v0

    return v1
.end method

.method public static ccuCalcMoveEquivalentTime(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;FF)F
    .locals 1
    .param p0, "start"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "end"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "fixableDis"    # F
    .param p3, "fixableTime"    # F

    .prologue
    .line 824
    invoke-static {p0, p1}, Lorg/cocos2d/types/CGPoint;->ccpDistance(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;)F

    move-result v0

    .line 823
    invoke-static {v0, p2, p3}, Lcom/sns/game/util/CCUtil;->ccuCalcMoveEquivalentTime(FFF)F

    move-result v0

    return v0
.end method

.method public static ccuMult(FFF)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "s"    # F

    .prologue
    .line 1098
    mul-float v0, p0, p2

    .line 1099
    .local v0, "x":F
    mul-float v1, p1, p2

    .line 1100
    .local v1, "y":F
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    return-object v2
.end method

.method public static ccuMult(Lorg/cocos2d/types/CGSize;F)Lorg/cocos2d/types/CGPoint;
    .locals 3
    .param p0, "size"    # Lorg/cocos2d/types/CGSize;
    .param p1, "s"    # F

    .prologue
    .line 1092
    iget v2, p0, Lorg/cocos2d/types/CGSize;->width:F

    mul-float v0, v2, p1

    .line 1093
    .local v0, "x":F
    iget v2, p0, Lorg/cocos2d/types/CGSize;->height:F

    mul-float v1, v2, p1

    .line 1094
    .local v1, "y":F
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    return-object v2
.end method

.method public static daysBetween(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "smdate"    # Ljava/lang/String;
    .param p1, "bdate"    # Ljava/lang/String;

    .prologue
    .line 946
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd"

    invoke-direct {v4, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 947
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 948
    .local v2, "cal":Ljava/util/Calendar;
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 949
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 950
    .local v5, "time1":J
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 951
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 952
    .local v7, "time2":J
    sub-long v9, v7, v5

    const-wide/32 v11, 0x5265c00

    div-long v0, v9, v11

    .line 953
    .local v0, "between_days":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 956
    .end local v0    # "between_days":J
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v5    # "time1":J
    .end local v7    # "time2":J
    :goto_0
    return v9

    .line 954
    :catch_0
    move-exception v3

    .line 955
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 956
    const/4 v9, -0x1

    goto :goto_0
.end method

.method public static debugToast(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Debug\u8c03\u8bd5:\u3010"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sns/game/util/CCUtil;->notifyToast(Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method private defaultCanvasSettingListener(II)Lcom/sns/game/util/CCUtil$CanvasSettingListener;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sns/game/util/CCUtil;->canvasSettingListener_:Lcom/sns/game/util/CCUtil$CanvasSettingListener;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/sns/game/util/CCUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sns/game/util/CCUtil$1;-><init>(Lcom/sns/game/util/CCUtil;II)V

    iput-object v0, p0, Lcom/sns/game/util/CCUtil;->canvasSettingListener_:Lcom/sns/game/util/CCUtil$CanvasSettingListener;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sns/game/util/CCUtil;->canvasSettingListener_:Lcom/sns/game/util/CCUtil$CanvasSettingListener;

    return-object v0
.end method

.method public static formatDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 919
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 920
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "dateTime":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 922
    return-object v0

    .line 921
    .end local v0    # "dateTime":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatDateTime(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 932
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 933
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "dateTime":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 935
    return-object v0

    .line 934
    .end local v0    # "dateTime":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatHtmlNewLine(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1067
    const-string v0, "<br>"

    .line 1068
    .local v0, "brTag":Ljava/lang/String;
    const-string v2, "#104E8B"

    .line 1069
    .local v2, "color":Ljava/lang/String;
    const-string v7, "\n"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1070
    .local v6, "split":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1071
    .local v1, "buffer":Ljava/lang/StringBuffer;
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 1073
    array-length v5, v6

    .line 1074
    .local v5, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 1082
    .end local v4    # "i":I
    .end local v5    # "length":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    return-void

    .line 1076
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<font color=\'#104E8B\'><B>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</B></font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, "fontTag":Ljava/lang/String;
    add-int/lit8 v7, v5, -0x1

    if-ge v4, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "<br>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "fontTag":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1080
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<font color=\'#104E8B\'><B>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</B></font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getNineSprite(III)Lorg/cocos2d/nodes/CCSprite;
    .locals 7
    .param p0, "drawableId"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 364
    :try_start_0
    invoke-static {}, Lorg/cocos2d/nodes/CCTextureCache;->sharedTextureCache()Lorg/cocos2d/nodes/CCTextureCache;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lorg/cocos2d/nodes/CCTextureCache;->addImageNinePng(III)Lorg/cocos2d/opengl/CCTexture2D;

    move-result-object v4

    .line 366
    .local v4, "texture":Lorg/cocos2d/opengl/CCTexture2D;
    int-to-float v5, p1

    invoke-virtual {v4}, Lorg/cocos2d/opengl/CCTexture2D;->getWidth()F

    move-result v6

    div-float v2, v5, v6

    .line 367
    .local v2, "sx":F
    int-to-float v5, p2

    invoke-virtual {v4}, Lorg/cocos2d/opengl/CCTexture2D;->getHeight()F

    move-result v6

    div-float v3, v5, v6

    .line 369
    .local v3, "sy":F
    invoke-static {v4}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/opengl/CCTexture2D;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 370
    .local v1, "nineSprite":Lorg/cocos2d/nodes/CCSprite;
    invoke-virtual {v1, v2}, Lorg/cocos2d/nodes/CCSprite;->setScaleX(F)V

    .line 371
    invoke-virtual {v1, v3}, Lorg/cocos2d/nodes/CCSprite;->setScaleY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v1    # "nineSprite":Lorg/cocos2d/nodes/CCSprite;
    .end local v2    # "sx":F
    .end local v3    # "sy":F
    .end local v4    # "texture":Lorg/cocos2d/opengl/CCTexture2D;
    :goto_0
    return-object v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 377
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs invokeCallBack(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p0, "rec"    # Ljava/lang/Object;
    .param p1, "cb"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 789
    const/4 v2, 0x0

    .line 790
    .local v2, "invocation":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 791
    .local v5, "targetCallback":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 792
    .local v4, "selector":Ljava/lang/String;
    const/4 v3, 0x0

    .line 794
    .local v3, "passObj":Ljava/lang/Object;
    move-object v5, p0

    .line 795
    move-object v4, p1

    .line 796
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 797
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 798
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 800
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz v5, :cond_3

    move v8, v6

    .line 801
    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    and-int/2addr v6, v8

    if-eqz v6, :cond_2

    .line 802
    if-eqz p2, :cond_1

    .line 803
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 806
    .end local v3    # "passObj":Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :cond_2
    :goto_2
    return-void

    .restart local v3    # "passObj":Ljava/lang/Object;
    :cond_3
    move v8, v7

    .line 800
    goto :goto_0

    :cond_4
    move v6, v7

    .line 801
    goto :goto_1

    .line 808
    .end local v3    # "passObj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public static makeBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/types/CGRect;
    .locals 8
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "argFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    .line 86
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 87
    .local v2, "position":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 88
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    iget v4, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 89
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget v6, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v7, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, v3, Lorg/cocos2d/types/CGSize;->height:F

    .line 88
    invoke-static {v4, v5, v6, v7}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 92
    .end local v0    # "anchor":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "position":Lorg/cocos2d/types/CGPoint;
    .end local v3    # "size":Lorg/cocos2d/types/CGSize;
    :goto_0
    return-object v4

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static makeBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;F)Lorg/cocos2d/types/CGRect;
    .locals 9
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "argFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "scale"    # F

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    .line 133
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 134
    .local v2, "position":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 135
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    iget v4, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    .line 136
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget v6, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v7, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    .line 137
    iget v6, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v7, p2

    sub-float/2addr v6, v7

    iget v7, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v8, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v8, p2

    sub-float/2addr v7, v8

    .line 135
    invoke-static {v4, v5, v6, v7}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 140
    .end local v0    # "anchor":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "position":Lorg/cocos2d/types/CGPoint;
    .end local v3    # "size":Lorg/cocos2d/types/CGSize;
    :goto_0
    return-object v4

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static makeBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;
    .locals 9
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "argFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "indent"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    .line 109
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 110
    .local v2, "position":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 111
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    iget v4, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p2, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v4, v5

    .line 112
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget v6, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v7, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p2, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v5, v6

    .line 113
    iget v6, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, p2, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v6, v7

    iget v7, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v8, p2, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v7, v8

    .line 111
    invoke-static {v4, v5, v6, v7}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 116
    .end local v0    # "anchor":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "position":Lorg/cocos2d/types/CGPoint;
    .end local v3    # "size":Lorg/cocos2d/types/CGSize;
    :goto_0
    return-object v4

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static makeBoundingBox(Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;)Lorg/cocos2d/types/CGRect;
    .locals 4
    .param p0, "pos"    # Lorg/cocos2d/types/CGPoint;
    .param p1, "anchor"    # Lorg/cocos2d/types/CGPoint;
    .param p2, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 70
    iget v0, p0, Lorg/cocos2d/types/CGPoint;->x:F

    iget v1, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget v2, p1, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 71
    iget v1, p0, Lorg/cocos2d/types/CGPoint;->y:F

    iget v2, p2, Lorg/cocos2d/types/CGSize;->height:F

    iget v3, p1, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p2, Lorg/cocos2d/types/CGSize;->width:F

    iget v3, p2, Lorg/cocos2d/types/CGSize;->height:F

    .line 70
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v0

    return-object v0
.end method

.method public static makeOriginX(Lorg/cocos2d/nodes/CCSprite;F)F
    .locals 2
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "anchorX"    # F

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefX()F

    move-result v0

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static makeOriginY(Lorg/cocos2d/nodes/CCSprite;F)F
    .locals 2
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "anchorY"    # F

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRefY()F

    move-result v0

    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static notifyToast(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1032
    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    check-cast v1, Lcom/sns/game/activity/GameActivityss;

    .line 1033
    const/4 v2, -0x1

    invoke-virtual {v1, v2, p0}, Lcom/sns/game/activity/GameActivityss;->notifyHandler(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :goto_0
    return-void

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "designatedDateTime"    # Ljava/lang/String;

    .prologue
    .line 882
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 883
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 888
    .local v0, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .line 890
    :goto_0
    return-object v0

    .line 884
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    .restart local v0    # "date":Ljava/util/Date;
    const/4 v2, 0x0

    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 887
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v3

    .line 888
    const/4 v2, 0x0

    .line 889
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    throw v3
.end method

.method public static parseDateTime(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "designatedDateTime"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 902
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 903
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 908
    .local v0, "date":Ljava/util/Date;
    const/4 v2, 0x0

    .line 910
    :goto_0
    return-object v0

    .line 904
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 905
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    .restart local v0    # "date":Ljava/util/Date;
    const/4 v2, 0x0

    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 907
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v3

    .line 908
    const/4 v2, 0x0

    .line 909
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    throw v3
.end method

.method public static varargs removeChilds(Lorg/cocos2d/nodes/CCNode;[Lorg/cocos2d/nodes/CCNode;)V
    .locals 4
    .param p0, "parent"    # Lorg/cocos2d/nodes/CCNode;
    .param p1, "childs"    # [Lorg/cocos2d/nodes/CCNode;

    .prologue
    .line 776
    if-eqz p0, :cond_0

    .line 777
    :try_start_0
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 786
    :cond_0
    :goto_1
    return-void

    .line 777
    :cond_1
    aget-object v1, p1, v2

    .line 778
    .local v1, "node":Lorg/cocos2d/nodes/CCNode;
    if-eqz v1, :cond_2

    .line 779
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    .end local v1    # "node":Lorg/cocos2d/nodes/CCNode;
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private removeSelf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1012
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "if "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1013
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1014
    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "removeSelf()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1015
    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clear()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1016
    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1017
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1018
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static setBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;Lorg/cocos2d/types/CGRect;)V
    .locals 8
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "argFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "argRect"    # Lorg/cocos2d/types/CGRect;

    .prologue
    .line 155
    :try_start_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    .line 156
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 157
    .local v2, "position":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 158
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    iget v4, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 159
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget v6, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v7, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, v3, Lorg/cocos2d/types/CGSize;->height:F

    .line 158
    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/cocos2d/types/CGRect;->set(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "anchor":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "position":Lorg/cocos2d/types/CGPoint;
    .end local v3    # "size":Lorg/cocos2d/types/CGSize;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;Lorg/cocos2d/types/CGRect;F)V
    .locals 9
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "argFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "argRect"    # Lorg/cocos2d/types/CGRect;
    .param p3, "scale"    # F

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    .line 201
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 202
    .local v2, "position":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 203
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    iget v4, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    .line 204
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget v6, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v7, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v6, p3

    add-float/2addr v5, v6

    .line 205
    iget v6, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, v3, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v7, p3

    sub-float/2addr v6, v7

    iget v7, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v8, v3, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v8, p3

    sub-float/2addr v7, v8

    .line 203
    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/cocos2d/types/CGRect;->set(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "anchor":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "position":Lorg/cocos2d/types/CGPoint;
    .end local v3    # "size":Lorg/cocos2d/types/CGSize;
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setBoundingBox(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/nodes/CCSpriteFrame;Lorg/cocos2d/types/CGRect;Lorg/cocos2d/types/CGSize;)V
    .locals 9
    .param p0, "argSprite"    # Lorg/cocos2d/nodes/CCSprite;
    .param p1, "argFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;
    .param p2, "argRect"    # Lorg/cocos2d/types/CGRect;
    .param p3, "indent"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v3

    .line 178
    .local v3, "size":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getPositionRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    .line 179
    .local v2, "position":Lorg/cocos2d/types/CGPoint;
    invoke-virtual {p0}, Lorg/cocos2d/nodes/CCSprite;->getAnchorPointRef()Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    .line 180
    .local v0, "anchor":Lorg/cocos2d/types/CGPoint;
    iget v4, v2, Lorg/cocos2d/types/CGPoint;->x:F

    iget v5, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v6, v0, Lorg/cocos2d/types/CGPoint;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p3, Lorg/cocos2d/types/CGSize;->width:F

    add-float/2addr v4, v5

    .line 181
    iget v5, v2, Lorg/cocos2d/types/CGPoint;->y:F

    iget v6, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v7, v0, Lorg/cocos2d/types/CGPoint;->y:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p3, Lorg/cocos2d/types/CGSize;->height:F

    add-float/2addr v5, v6

    .line 182
    iget v6, v3, Lorg/cocos2d/types/CGSize;->width:F

    iget v7, p3, Lorg/cocos2d/types/CGSize;->width:F

    sub-float/2addr v6, v7

    iget v7, v3, Lorg/cocos2d/types/CGSize;->height:F

    iget v8, p3, Lorg/cocos2d/types/CGSize;->height:F

    sub-float/2addr v7, v8

    .line 180
    invoke-virtual {p2, v4, v5, v6, v7}, Lorg/cocos2d/types/CGRect;->set(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0    # "anchor":Lorg/cocos2d/types/CGPoint;
    .end local v2    # "position":Lorg/cocos2d/types/CGPoint;
    .end local v3    # "size":Lorg/cocos2d/types/CGSize;
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sharedUtil()Lcom/sns/game/util/CCUtil;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sns/game/util/CCUtil;->util:Lcom/sns/game/util/CCUtil;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/sns/game/util/CCUtil;

    invoke-direct {v0}, Lcom/sns/game/util/CCUtil;-><init>()V

    sput-object v0, Lcom/sns/game/util/CCUtil;->util:Lcom/sns/game/util/CCUtil;

    .line 66
    :cond_0
    sget-object v0, Lcom/sns/game/util/CCUtil;->util:Lcom/sns/game/util/CCUtil;

    return-object v0
.end method

.method public static showSytemToast(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1086
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1087
    .local v0, "t":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1088
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1089
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 1045
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1046
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f020165

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1047
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1048
    invoke-static {v1, p1}, Lcom/sns/game/util/CCUtil;->formatHtmlNewLine(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1049
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1050
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1051
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1052
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1053
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 1056
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1057
    .local v1, "textView":Landroid/widget/TextView;
    const v2, 0x7f020165

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1058
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1059
    invoke-static {v1, p1}, Lcom/sns/game/util/CCUtil;->formatHtmlNewLine(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1060
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1061
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1062
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1063
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1064
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1041
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCDirector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sns/game/util/CCUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1042
    return-void
.end method


# virtual methods
.method public asArrayInAssetsFileName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "rootPath"    # Ljava/lang/String;

    .prologue
    .line 620
    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 623
    :goto_0
    return-object v1

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public asListInAssetsFileName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "rootPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    :try_start_0
    sget-object v1, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 608
    :goto_0
    return-object v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public asListInAssetsFilePathBySuffix(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p2, "rootPath"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(.*?)"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "regex":Ljava/lang/String;
    const/4 v2, 0x0

    .line 638
    .local v2, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 639
    .end local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v2, v3

    .line 648
    .end local v3    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 639
    .end local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 640
    .local v1, "fileName":Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {p0, v4, v1, v6}, Lcom/sns/game/util/CCUtil;->matcherFind(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 644
    .end local v1    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 645
    .end local v3    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 644
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public asMaskOffSprite(Lorg/cocos2d/types/ccColor3B;F)Lorg/cocos2d/nodes/CCSprite;
    .locals 8
    .param p1, "color3b"    # Lorg/cocos2d/types/ccColor3B;
    .param p2, "opacityScale"    # F

    .prologue
    .line 693
    const/4 v1, 0x0

    .line 695
    .local v1, "sprite_":Lorg/cocos2d/nodes/CCSprite;
    :try_start_0
    const-string v0, "white_point.png"

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v1

    .line 696
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    sget-object v3, Lcom/sns/game/util/DeviceManager;->posZero_:Lorg/cocos2d/types/CGPoint;

    sget-object v4, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sns/game/util/CCUtil;->maskOff(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/ccColor3B;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 702
    :goto_0
    return-object v0

    .line 698
    :catch_0
    move-exception v7

    .line 699
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 700
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createBitmapFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 249
    :try_start_0
    invoke-static {}, Lorg/cocos2d/utils/ContentHelper;->sharedHelper()Lorg/cocos2d/utils/ContentHelper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/cocos2d/utils/ContentHelper;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 250
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 251
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 252
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v0, v4

    .line 257
    goto :goto_0
.end method

.method public createCanvasBitmap(IILcom/sns/game/util/CCUtil$CanvasSettingListener;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "listener"    # Lcom/sns/game/util/CCUtil$CanvasSettingListener;

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 236
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 237
    .local v3, "paint":Landroid/graphics/Paint;
    if-eqz p3, :cond_0

    .line 238
    invoke-interface {p3, v1, v3}, Lcom/sns/game/util/CCUtil$CanvasSettingListener;->setCanvas(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v4, v0

    .line 243
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-object v4

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public createCanvasBitmap(Lorg/cocos2d/nodes/CCSpriteFrame;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "spriteFrame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 226
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v1, v2

    .line 227
    .local v1, "width":I
    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSpriteFrame;->getOriginalSize_()Lorg/cocos2d/types/CGSize;

    move-result-object v2

    iget v2, v2, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v0, v2

    .line 228
    .local v0, "height":I
    invoke-direct {p0, v1, v0}, Lcom/sns/game/util/CCUtil;->defaultCanvasSettingListener(II)Lcom/sns/game/util/CCUtil$CanvasSettingListener;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sns/game/util/CCUtil;->createCanvasBitmap(IILcom/sns/game/util/CCUtil$CanvasSettingListener;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public createCanvasBitmap(Lorg/cocos2d/types/CGSize;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "size"    # Lorg/cocos2d/types/CGSize;

    .prologue
    .line 220
    iget v2, p1, Lorg/cocos2d/types/CGSize;->width:F

    float-to-int v1, v2

    .line 221
    .local v1, "width":I
    iget v2, p1, Lorg/cocos2d/types/CGSize;->height:F

    float-to-int v0, v2

    .line 222
    .local v0, "height":I
    invoke-direct {p0, v1, v0}, Lcom/sns/game/util/CCUtil;->defaultCanvasSettingListener(II)Lcom/sns/game/util/CCUtil$CanvasSettingListener;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/sns/game/util/CCUtil;->createCanvasBitmap(IILcom/sns/game/util/CCUtil$CanvasSettingListener;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public findRuningLayer()Lorg/cocos2d/layers/CCLayer;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1108
    :try_start_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    .line 1109
    .local v1, "director":Lorg/cocos2d/nodes/CCDirector;
    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->getRunningScene()Lorg/cocos2d/layers/CCScene;

    move-result-object v4

    .line 1110
    .local v4, "runingScene":Lorg/cocos2d/layers/CCScene;
    if-nez v4, :cond_0

    move-object v3, v5

    .line 1120
    .end local v1    # "director":Lorg/cocos2d/nodes/CCDirector;
    .end local v4    # "runingScene":Lorg/cocos2d/layers/CCScene;
    :goto_0
    return-object v3

    .line 1111
    .restart local v1    # "director":Lorg/cocos2d/nodes/CCDirector;
    .restart local v4    # "runingScene":Lorg/cocos2d/layers/CCScene;
    :cond_0
    invoke-virtual {v4}, Lorg/cocos2d/layers/CCScene;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 1112
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    if-nez v0, :cond_1

    move-object v3, v5

    goto :goto_0

    .line 1113
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    move-object v3, v5

    goto :goto_0

    .line 1114
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/cocos2d/nodes/CCNode;

    .line 1115
    .local v3, "node":Lorg/cocos2d/nodes/CCNode;
    instance-of v6, v3, Lorg/cocos2d/layers/CCLayer;

    if-nez v6, :cond_3

    move-object v3, v5

    goto :goto_0

    .line 1116
    :cond_3
    check-cast v3, Lorg/cocos2d/layers/CCLayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1118
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/cocos2d/nodes/CCNode;>;"
    .end local v1    # "director":Lorg/cocos2d/nodes/CCDirector;
    .end local v3    # "node":Lorg/cocos2d/nodes/CCNode;
    .end local v4    # "runingScene":Lorg/cocos2d/layers/CCScene;
    :catch_0
    move-exception v2

    .line 1119
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    move-object v3, v5

    .line 1120
    goto :goto_0
.end method

.method public findRunningGameLayer()Lcom/sns/game/ui/CCGameLayer;
    .locals 2

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/sns/game/util/CCUtil;->findRuningLayer()Lorg/cocos2d/layers/CCLayer;

    move-result-object v0

    .line 1126
    .local v0, "targetLayer":Lorg/cocos2d/layers/CCLayer;
    instance-of v1, v0, Lcom/sns/game/ui/CCGameLayer;

    if-eqz v1, :cond_0

    .line 1127
    check-cast v0, Lcom/sns/game/ui/CCGameLayer;

    .line 1129
    .end local v0    # "targetLayer":Lorg/cocos2d/layers/CCLayer;
    :goto_0
    return-object v0

    .restart local v0    # "targetLayer":Lorg/cocos2d/layers/CCLayer;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findRunningGameLayerUserDoPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/sns/game/util/CCUtil;->findRunningGameLayer()Lcom/sns/game/ui/CCGameLayer;

    move-result-object v0

    .line 1134
    .local v0, "targetLayer":Lcom/sns/game/ui/CCGameLayer;
    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {v0}, Lcom/sns/game/ui/CCGameLayer;->getUserDoPathName()Ljava/lang/String;

    move-result-object v1

    .line 1137
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMergeBackground(Ljava/lang/String;)[Lorg/cocos2d/nodes/CCSprite;
    .locals 3
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 388
    .line 389
    sget-object v0, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v0, v2

    .line 390
    sget-object v1, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v1, v2

    .line 388
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sns/game/util/CCUtil;->getMergeBackground(Ljava/lang/String;Lorg/cocos2d/types/CGPoint;)[Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    return-object v0
.end method

.method public getMergeBackground(Ljava/lang/String;Lorg/cocos2d/types/CGPoint;)[Lorg/cocos2d/nodes/CCSprite;
    .locals 8
    .param p1, "plist"    # Ljava/lang/String;
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x4

    .line 413
    const/4 v3, 0x4

    .local v3, "splitCount":I
    move-object v4, v5

    .line 414
    check-cast v4, [Lorg/cocos2d/nodes/CCSprite;

    .line 417
    .local v4, "splitParts":[Lorg/cocos2d/nodes/CCSprite;
    const/4 v6, 0x4

    :try_start_0
    new-array v4, v6, [Lorg/cocos2d/nodes/CCSprite;

    .line 418
    invoke-virtual {p0, p1}, Lcom/sns/game/util/CCUtil;->getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 419
    .local v1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v7, :cond_0

    .line 432
    .end local v1    # "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :goto_0
    return-object v5

    .line 422
    .restart local v1    # "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v7, :cond_1

    .end local v1    # "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v2    # "i":I
    :goto_2
    move-object v5, v4

    .line 432
    goto :goto_0

    .line 423
    .restart local v1    # "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v5}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v5

    aput-object v5, v4, v2

    .line 424
    aget-object v5, v4, v2

    invoke-static {v2}, Lcom/sns/game/util/GameConstant;->asSplitPartPoint(I)Lorg/cocos2d/types/CGPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 425
    aget-object v5, v4, v2

    invoke-virtual {v5, p2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 428
    .end local v1    # "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public getMergeBackground(Ljava/util/ArrayList;)[Lorg/cocos2d/nodes/CCSprite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;)[",
            "Lorg/cocos2d/nodes/CCSprite;"
        }
    .end annotation

    .prologue
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const/high16 v2, 0x3f000000    # 0.5f

    .line 400
    .line 401
    sget-object v0, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v0, v0, Lorg/cocos2d/types/CGSize;->width:F

    mul-float/2addr v0, v2

    .line 402
    sget-object v1, Lcom/sns/game/util/DeviceManager;->defaultSize_:Lorg/cocos2d/types/CGSize;

    iget v1, v1, Lorg/cocos2d/types/CGSize;->height:F

    mul-float/2addr v1, v2

    .line 400
    invoke-static {v0, v1}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sns/game/util/CCUtil;->getMergeBackground(Ljava/util/ArrayList;Lorg/cocos2d/types/CGPoint;)[Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    return-object v0
.end method

.method public getMergeBackground(Ljava/util/ArrayList;Lorg/cocos2d/types/CGPoint;)[Lorg/cocos2d/nodes/CCSprite;
    .locals 7
    .param p2, "pos"    # Lorg/cocos2d/types/CGPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;",
            "Lorg/cocos2d/types/CGPoint;",
            ")[",
            "Lorg/cocos2d/nodes/CCSprite;"
        }
    .end annotation

    .prologue
    .local p1, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 443
    const/4 v2, 0x4

    .local v2, "splitCount":I
    move-object v3, v4

    .line 444
    check-cast v3, [Lorg/cocos2d/nodes/CCSprite;

    .line 447
    .local v3, "splitParts":[Lorg/cocos2d/nodes/CCSprite;
    const/4 v5, 0x4

    :try_start_0
    new-array v3, v5, [Lorg/cocos2d/nodes/CCSprite;

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 461
    :goto_0
    return-object v4

    .line 451
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_1

    .end local v1    # "i":I
    :goto_2
    move-object v4, v3

    .line 461
    goto :goto_0

    .line 452
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-static {v4}, Lorg/cocos2d/nodes/CCSprite;->sprite(Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v4

    aput-object v4, v3, v1

    .line 453
    aget-object v4, v3, v1

    invoke-static {v1}, Lcom/sns/game/util/GameConstant;->asSplitPartPoint(I)Lorg/cocos2d/types/CGPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 454
    aget-object v4, v3, v1

    invoke-virtual {v4, p2}, Lorg/cocos2d/nodes/CCSprite;->setPosition(Lorg/cocos2d/types/CGPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 457
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public getOwnCompartaor_()Lcom/sns/game/util/CCUtil$OwnCompartaor;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sns/game/util/CCUtil;->ownCompartaor_:Lcom/sns/game/util/CCUtil$OwnCompartaor;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Lcom/sns/game/util/CCUtil$OwnCompartaor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sns/game/util/CCUtil$OwnCompartaor;-><init>(Lcom/sns/game/util/CCUtil;Lcom/sns/game/util/CCUtil$OwnCompartaor;)V

    iput-object v0, p0, Lcom/sns/game/util/CCUtil;->ownCompartaor_:Lcom/sns/game/util/CCUtil$OwnCompartaor;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/sns/game/util/CCUtil;->ownCompartaor_:Lcom/sns/game/util/CCUtil$OwnCompartaor;

    return-object v0
.end method

.method public getSpriteFrameNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;

    .prologue
    .line 571
    .line 572
    invoke-virtual {p0}, Lcom/sns/game/util/CCUtil;->getOwnCompartaor_()Lcom/sns/game/util/CCUtil$OwnCompartaor;

    move-result-object v0

    .line 571
    invoke-virtual {p0, p1, v0}, Lcom/sns/game/util/CCUtil;->getSpriteFrameNames(Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteFrameNames(Ljava/lang/String;Ljava/lang/String;II)[Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "startFrameIdx"    # I
    .param p4, "endFrameIdx"    # I

    .prologue
    .line 513
    const/4 v3, 0x0

    .line 515
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v0, "builder":Ljava/lang/StringBuilder;
    move v2, p3

    .local v2, "i":I
    :goto_0
    if-le v2, p4, :cond_0

    .line 523
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v3, v4

    .line 526
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    .line 519
    .end local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    .restart local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 520
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v1}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    .line 526
    const/4 v5, 0x0

    goto :goto_1

    .line 524
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public getSpriteFrameNames(Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;
    .locals 7
    .param p1, "plist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 583
    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 584
    .local v3, "spriteFrameNameArray":[Ljava/lang/String;
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v1

    .line 586
    .local v1, "cache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->addSpriteFrames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 587
    if-eqz p2, :cond_0

    .line 588
    invoke-static {v3, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v4, v3

    .line 593
    :goto_0
    return-object v4

    .line 591
    :catch_0
    move-exception v2

    .line 592
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSpriteFrameNames(Ljava/util/Set;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 538
    .line 539
    .local p1, "argSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sns/game/util/CCUtil;->getOwnCompartaor_()Lcom/sns/game/util/CCUtil$OwnCompartaor;

    move-result-object v0

    .line 538
    invoke-virtual {p0, p1, v0}, Lcom/sns/game/util/CCUtil;->getSpriteFrameNames(Ljava/util/Set;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteFrameNames(Ljava/util/Set;Ljava/util/Comparator;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "argSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 550
    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 552
    .local v2, "spriteFrameNameArray":[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 553
    if-eqz p2, :cond_0

    .line 554
    invoke-static {v2, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v2

    .line 559
    :goto_0
    return-object v3

    .line 557
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSpriteFrames(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "plist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/sns/game/util/CCUtil;->getSpriteFrameNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/util/CCUtil;->getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteFrames(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "argSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/sns/game/util/CCUtil;->getSpriteFrameNames(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sns/game/util/CCUtil;->getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSpriteFrames([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    const/4 v5, 0x1

    .line 326
    .local v5, "isLoad":Z
    const/4 v6, 0x0

    .line 327
    .local v6, "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    invoke-static {}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->sharedSpriteFrameCache()Lorg/cocos2d/nodes/CCSpriteFrameCache;

    move-result-object v0

    .line 329
    .local v0, "cache":Lorg/cocos2d/nodes/CCSpriteFrameCache;
    :try_start_0
    array-length v1, p1

    .line 330
    .local v1, "count":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .local v7, "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 344
    :goto_1
    if-nez v5, :cond_4

    .line 345
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 346
    const/4 v6, 0x0

    .end local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :goto_2
    move-object v8, v6

    .line 349
    .end local v1    # "count":I
    .end local v4    # "i":I
    :goto_3
    return-object v8

    .line 332
    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    .restart local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_0
    :try_start_1
    aget-object v8, p1, v4

    invoke-virtual {v0, v8}, Lorg/cocos2d/nodes/CCSpriteFrameCache;->getSpriteFrame(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSpriteFrame;

    move-result-object v3

    .line 333
    .local v3, "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    if-nez v3, :cond_2

    .line 335
    const/4 v5, 0x0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Frame not found "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, p1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sns/game/util/CCGameLog;->CCLOGERROR(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 340
    .end local v3    # "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    :catch_0
    move-exception v2

    move-object v6, v7

    .line 341
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    if-nez v5, :cond_1

    .line 345
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 346
    const/4 v6, 0x0

    .line 342
    :cond_1
    const/4 v8, 0x0

    goto :goto_3

    .line 331
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v1    # "count":I
    .restart local v3    # "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    .restart local v4    # "i":I
    .restart local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "count":I
    .end local v3    # "frame":Lorg/cocos2d/nodes/CCSpriteFrame;
    .end local v4    # "i":I
    .end local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catchall_0
    move-exception v8

    .line 344
    :goto_5
    if-nez v5, :cond_3

    .line 345
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 346
    const/4 v6, 0x0

    .line 348
    :cond_3
    throw v8

    .line 343
    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    .restart local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_5

    .line 340
    .end local v1    # "count":I
    .end local v4    # "i":I
    :catch_1
    move-exception v2

    goto :goto_4

    .end local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    .restart local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :cond_4
    move-object v6, v7

    .end local v7    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    .restart local v6    # "spriteFrames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    goto :goto_2
.end method

.method public label(Ljava/lang/String;II)Lorg/cocos2d/nodes/CCLabelAtlas;
    .locals 2
    .param p1, "charmapfile"    # Ljava/lang/String;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 683
    const-string v0, "1:"

    const/16 v1, 0x30

    invoke-static {v0, p1, p2, p3, v1}, Lorg/cocos2d/nodes/CCLabelAtlas;->label(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/nodes/CCLabelAtlas;

    move-result-object v0

    return-object v0
.end method

.method public maskOff(Lorg/cocos2d/nodes/CCSprite;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGPoint;Lorg/cocos2d/types/CGSize;Lorg/cocos2d/types/ccColor3B;F)V
    .locals 3
    .param p1, "mask"    # Lorg/cocos2d/nodes/CCSprite;
    .param p2, "anchor"    # Lorg/cocos2d/types/CGPoint;
    .param p3, "uiPos"    # Lorg/cocos2d/types/CGPoint;
    .param p4, "size"    # Lorg/cocos2d/types/CGSize;
    .param p5, "color3b"    # Lorg/cocos2d/types/ccColor3B;
    .param p6, "opacityScale"    # F

    .prologue
    .line 746
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/cocos2d/nodes/CCSprite;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 747
    invoke-virtual {p1, p3}, Lorg/cocos2d/nodes/CCSprite;->setPositionToUI(Lorg/cocos2d/types/CGPoint;)V

    .line 748
    invoke-virtual {p1, p5}, Lorg/cocos2d/nodes/CCSprite;->setColor(Lorg/cocos2d/types/ccColor3B;)V

    .line 749
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lorg/cocos2d/nodes/CCSprite;->setOpacity(I)V

    .line 750
    iget v1, p4, Lorg/cocos2d/types/CGSize;->width:F

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeWidth()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/cocos2d/nodes/CCSprite;->setScaleX(F)V

    .line 751
    iget v1, p4, Lorg/cocos2d/types/CGSize;->height:F

    invoke-virtual {p1}, Lorg/cocos2d/nodes/CCSprite;->getContentSizeHeight()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/cocos2d/nodes/CCSprite;->setScaleY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public matcher(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/Matcher;
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .prologue
    .line 849
    invoke-static {p1, p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public matcherFind(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .prologue
    .line 862
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 863
    invoke-static {p1, p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 865
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method public reflectObject(Ljava/lang/Object;)V
    .locals 21
    .param p1, "classObj"    # Ljava/lang/Object;

    .prologue
    .line 964
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/reflect/Field;

    .line 965
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    .line 966
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v13, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v8, "lengthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 970
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 971
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    array-length v0, v4

    move/from16 v19, v0

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 982
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    .line 983
    .local v6, "lenArray":[Ljava/lang/Integer;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 984
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-object v17, v6, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 986
    .local v11, "maxLength":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 987
    .local v14, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v14, :cond_3

    move-object v9, v10

    .line 1000
    .end local v5    # "i":I
    .end local v6    # "lenArray":[Ljava/lang/Integer;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "maxLength":I
    .end local v14    # "size":I
    .restart local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 971
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    aget-object v3, v4, v18

    .line 972
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 973
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    .line 974
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 975
    .local v16, "value":Ljava/lang/Object;
    const-string v17, "Reflect"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/sns/game/util/CCUtil;->removeSelf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " = "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 971
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto/16 :goto_0

    .line 972
    .end local v12    # "name":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Object;
    :cond_1
    const/16 v17, 0x1

    goto :goto_3

    .line 979
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/Object;
    :cond_2
    const/16 v17, 0x1

    goto :goto_4

    .line 988
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "name":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Object;
    .restart local v5    # "i":I
    .restart local v6    # "lenArray":[Ljava/lang/Integer;
    .restart local v11    # "maxLength":I
    .restart local v14    # "size":I
    :cond_3
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 989
    .local v15, "string":Ljava/lang/String;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v7

    .line 990
    .local v7, "len_":I
    if-ge v7, v11, :cond_4

    .line 991
    const-string v17, "Reflect"

    const-string v18, " = "

    new-instance v19, Ljava/lang/StringBuilder;

    sub-int v20, v11, v7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sns/game/util/CCUtil;->addSpaces(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 993
    :cond_4
    const-string v17, "Reflect"

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 997
    .end local v5    # "i":I
    .end local v6    # "lenArray":[Ljava/lang/Integer;
    .end local v7    # "len_":I
    .end local v11    # "maxLength":I
    .end local v14    # "size":I
    .end local v15    # "string":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v9, v10

    .line 998
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "e":Ljava/lang/Exception;
    .restart local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 997
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_6
.end method

.method public spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 2
    .param p1, "delay"    # F
    .param p2, "frame"    # Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 287
    const-string v0, ""

    invoke-static {v0, p1, p2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    return-object v0
.end method

.method public spriteAnimates(FLjava/util/ArrayList;)Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 2
    .param p1, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;)",
            "Lorg/cocos2d/actions/interval/CCAnimate;"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "frames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    const-string v0, ""

    invoke-static {v0, p1, p2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    return-object v0
.end method

.method public spriteAnimates(F[Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 2
    .param p1, "delay"    # F
    .param p2, "frames"    # [Lorg/cocos2d/nodes/CCSpriteFrame;

    .prologue
    .line 295
    const-string v0, ""

    invoke-static {v0, p1, p2}, Lorg/cocos2d/nodes/CCAnimation;->animation(Ljava/lang/String;F[Lorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/nodes/CCAnimation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/cocos2d/actions/interval/CCAnimate;->action(Lorg/cocos2d/nodes/CCAnimation;Z)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v0

    return-object v0
.end method

.method public varargs spriteAnimates(Ljava/util/ArrayList;[[F)[Lorg/cocos2d/actions/interval/CCAnimate;
    .locals 8
    .param p2, "args"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2d/nodes/CCSpriteFrame;",
            ">;[[F)[",
            "Lorg/cocos2d/actions/interval/CCAnimate;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "frameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/cocos2d/nodes/CCSpriteFrame;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 303
    .local v0, "count":I
    new-array v5, v0, [Lorg/cocos2d/actions/interval/CCAnimate;

    .line 304
    .local v5, "spriteAnimateArray":[Lorg/cocos2d/actions/interval/CCAnimate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 313
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "spriteAnimateArray":[Lorg/cocos2d/actions/interval/CCAnimate;
    :goto_1
    return-object v5

    .line 305
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "spriteAnimateArray":[Lorg/cocos2d/actions/interval/CCAnimate;
    :cond_0
    aget-object v6, p2, v4

    const/4 v7, 0x1

    aget v1, v6, v7

    .line 306
    .local v1, "delay":F
    aget-object v6, p2, v4

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v3, v6

    .line 307
    .local v3, "frameListIndex":I
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2d/nodes/CCSpriteFrame;

    invoke-virtual {p0, v1, v6}, Lcom/sns/game/util/CCUtil;->spriteAnimate(FLorg/cocos2d/nodes/CCSpriteFrame;)Lorg/cocos2d/actions/interval/CCAnimate;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "count":I
    .end local v1    # "delay":F
    .end local v3    # "frameListIndex":I
    .end local v4    # "i":I
    .end local v5    # "spriteAnimateArray":[Lorg/cocos2d/actions/interval/CCAnimate;
    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    const/4 v5, 0x0

    goto :goto_1
.end method
