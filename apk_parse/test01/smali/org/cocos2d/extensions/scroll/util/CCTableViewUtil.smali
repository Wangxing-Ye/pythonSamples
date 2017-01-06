.class public final Lorg/cocos2d/extensions/scroll/util/CCTableViewUtil;
.super Ljava/lang/Object;
.source "CCTableViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDataSourceCountByCell(III)I
    .locals 3
    .param p0, "dataSourceSize"    # I
    .param p1, "idx"    # I
    .param p2, "count"    # I

    .prologue
    .line 24
    add-int/lit8 v1, p1, 0x1

    .line 25
    .local v1, "num":I
    mul-int v2, v1, p2

    if-le v2, p0, :cond_0

    .line 26
    mul-int v2, v1, p2

    sub-int/2addr v2, p0

    sub-int v0, p2, v2

    .line 27
    .local v0, "dsCount":I
    :goto_0
    return v0

    .end local v0    # "dsCount":I
    :cond_0
    move v0, p2

    .line 26
    goto :goto_0
.end method

.method public static asDataSourceStartIndexByCell(III)I
    .locals 2
    .param p0, "dataSourceSize"    # I
    .param p1, "idx"    # I
    .param p2, "count"    # I

    .prologue
    .line 18
    mul-int v1, p1, p2

    .line 19
    if-le v1, p0, :cond_0

    add-int/lit8 v1, p1, -0x1

    mul-int v0, v1, p2

    .line 20
    .local v0, "startIndex":I
    :goto_0
    return v0

    .line 19
    .end local v0    # "startIndex":I
    :cond_0
    mul-int v0, p1, p2

    goto :goto_0
.end method

.method public static converToCellFullCount(II)I
    .locals 2
    .param p0, "dataSourceSize"    # I
    .param p1, "count"    # I

    .prologue
    .line 31
    rem-int v0, p0, p1

    .line 32
    .local v0, "surplus":I
    if-eqz v0, :cond_0

    sub-int v1, p1, v0

    add-int/2addr p0, v1

    .end local p0    # "dataSourceSize":I
    :cond_0
    return p0
.end method

.method public static getTableColCount(II)I
    .locals 2
    .param p0, "dataSourceSize"    # I
    .param p1, "row"    # I

    .prologue
    .line 12
    rem-int v1, p0, p1

    if-nez v1, :cond_0

    .line 13
    div-int v0, p0, p1

    .line 14
    .local v0, "colCount":I
    :goto_0
    return v0

    .line 13
    .end local v0    # "colCount":I
    :cond_0
    div-int v1, p0, p1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public static getTableRowCount(II)I
    .locals 2
    .param p0, "dataSourceSize"    # I
    .param p1, "col"    # I

    .prologue
    .line 6
    rem-int v1, p0, p1

    if-nez v1, :cond_0

    .line 7
    div-int v0, p0, p1

    .line 8
    .local v0, "rowCount":I
    :goto_0
    return v0

    .line 7
    .end local v0    # "rowCount":I
    :cond_0
    div-int v1, p0, p1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method
