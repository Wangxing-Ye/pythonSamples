.class Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;
.super Ljava/lang/Object;
.source "CCBitmapFontAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/CCBitmapFontAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCBitmapFontConfiguration"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public atlasName:Ljava/lang/String;

.field public bitmapFontArray:Lorg/cocos2d/utils/collections/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/IntMap",
            "<",
            "Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;",
            ">;"
        }
    .end annotation
.end field

.field public commonHeight:I

.field public kerningDictionary:Lorg/cocos2d/utils/collections/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/IntMap",
            "<",
            "Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;",
            ">;"
        }
    .end annotation
.end field

.field public padding:Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-class v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "FNTfile"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lorg/cocos2d/utils/collections/IntMap;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/IntMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->bitmapFontArray:Lorg/cocos2d/utils/collections/IntMap;

    .line 126
    new-instance v0, Lorg/cocos2d/utils/collections/IntMap;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/IntMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->kerningDictionary:Lorg/cocos2d/utils/collections/IntMap;

    .line 127
    invoke-virtual {p0, p1}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->parseConfigFile(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static configuration(Ljava/lang/String;)Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;
    .locals 1
    .param p0, "FNTfile"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;

    invoke-direct {v0, p0}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public parseCharacterDefinition(Ljava/lang/String;Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "characterDefinition"    # Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;

    .prologue
    const/4 v5, 0x0

    .line 350
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, "values":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 352
    .local v0, "nse":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 355
    .local v1, "propertyValue":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 358
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 360
    .restart local v1    # "propertyValue":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p2, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->charID:I

    .line 365
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 366
    .restart local v1    # "propertyValue":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 367
    iget-object v3, p2, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->rect:Lorg/cocos2d/types/CGRect;

    iget-object v3, v3, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lorg/cocos2d/types/CGPoint;->x:F

    .line 369
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 370
    .restart local v1    # "propertyValue":Ljava/lang/String;
    iget-object v3, p2, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->rect:Lorg/cocos2d/types/CGRect;

    iget-object v3, v3, Lorg/cocos2d/types/CGRect;->origin:Lorg/cocos2d/types/CGPoint;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lorg/cocos2d/types/CGPoint;->y:F

    .line 372
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 373
    .restart local v1    # "propertyValue":Ljava/lang/String;
    iget-object v3, p2, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->rect:Lorg/cocos2d/types/CGRect;

    iget-object v3, v3, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lorg/cocos2d/types/CGSize;->width:F

    .line 375
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 376
    .restart local v1    # "propertyValue":Ljava/lang/String;
    iget-object v3, p2, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->rect:Lorg/cocos2d/types/CGRect;

    iget-object v3, v3, Lorg/cocos2d/types/CGRect;->size:Lorg/cocos2d/types/CGSize;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lorg/cocos2d/types/CGSize;->height:F

    .line 378
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 379
    .restart local v1    # "propertyValue":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p2, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->xOffset:I

    .line 381
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 382
    .restart local v1    # "propertyValue":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p2, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->yOffset:I

    .line 384
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 385
    .restart local v1    # "propertyValue":Ljava/lang/String;
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p2, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->xAdvance:I

    .line 386
    return-void
.end method

.method public parseCommonArguments(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "values":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 319
    .local v0, "nse":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 322
    .local v1, "propertyValue":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 325
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 326
    .restart local v1    # "propertyValue":Ljava/lang/String;
    const-string v3, " "

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->commonHeight:I

    .line 330
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 334
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 338
    .restart local v1    # "propertyValue":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 342
    .restart local v1    # "propertyValue":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "propertyValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 346
    .restart local v1    # "propertyValue":Ljava/lang/String;
    return-void
.end method

.method public parseConfigFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "fntFile"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/cocos2d/utils/ContentHelper;->sharedHelper()Lorg/cocos2d/utils/ContentHelper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/cocos2d/utils/ContentHelper;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 162
    :goto_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 169
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 208
    .end local v3    # "line":Ljava/lang/String;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 213
    :goto_3
    return-void

    .line 158
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    const-string v5, "info face"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 177
    const-string v5, "common lineHeight"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-virtual {p0, v3}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->parseCommonArguments(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 202
    .end local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 204
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 180
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v5, "page id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 181
    invoke-virtual {p0, v3, p1}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->parseImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_3
    const-string v5, "chars c"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    const-string v5, "char"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 188
    new-instance v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;

    invoke-direct {v0}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;-><init>()V

    .line 189
    .local v0, "characterDefinition":Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;
    invoke-virtual {p0, v3, v0}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->parseCharacterDefinition(Ljava/lang/String;Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;)V

    .line 193
    iget-object v5, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->bitmapFontArray:Lorg/cocos2d/utils/collections/IntMap;

    iget v6, v0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;->charID:I

    invoke-virtual {v5, v6, v0}, Lorg/cocos2d/utils/collections/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 195
    .end local v0    # "characterDefinition":Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontDef;
    :cond_4
    const-string v5, "kernings count"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 196
    invoke-virtual {p0, v3}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->parseKerningCapacity(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_5
    const-string v5, "kerning first"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    invoke-virtual {p0, v3}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->parseKerningEntry(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 209
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 211
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public parseImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "fntFile"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v3, 0x0

    .line 219
    .local v3, "propertyValue":Ljava/lang/String;
    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "values":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "lvalues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 224
    .local v2, "nse":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 227
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyValue":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 228
    .restart local v3    # "propertyValue":Ljava/lang/String;
    sget-boolean v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    .line 229
    const-string v6, "XXX: BitmapFontAtlas only supports 1 page"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 232
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyValue":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 233
    .restart local v3    # "propertyValue":Ljava/lang/String;
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "array":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v3, v0, v5

    .line 235
    sget-boolean v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "BitmapFontAtlas file could not be found"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 240
    :cond_1
    iput-object v3, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->atlasName:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public parseInfoArguments(Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "values":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 252
    .local v0, "nse":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 255
    .local v3, "propertyValue":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 258
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 261
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 264
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 267
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 270
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 273
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 276
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 279
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 282
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 285
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyValue":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 287
    .restart local v3    # "propertyValue":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "paddingValues":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 290
    .local v1, "paddingEnum":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyValue":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 291
    .restart local v3    # "propertyValue":Ljava/lang/String;
    iget-object v5, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->padding:Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;->top:I

    .line 294
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyValue":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 295
    .restart local v3    # "propertyValue":Ljava/lang/String;
    iget-object v5, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->padding:Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;->right:I

    .line 298
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyValue":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 299
    .restart local v3    # "propertyValue":Ljava/lang/String;
    iget-object v5, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->padding:Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;->bottom:I

    .line 302
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyValue":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 303
    .restart local v3    # "propertyValue":Ljava/lang/String;
    iget-object v5, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->padding:Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lorg/cocos2d/opengl/CCBitmapFontAtlas$ccBitmapFontPadding;->left:I

    .line 309
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 310
    return-void
.end method

.method public parseKerningCapacity(Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 407
    return-void
.end method

.method public parseKerningEntry(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 410
    const-string v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "values":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 413
    .local v3, "nse":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 416
    .local v4, "propertyValue":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 419
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "propertyValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 420
    .restart local v4    # "propertyValue":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 423
    .local v2, "first":I
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "propertyValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 424
    .restart local v4    # "propertyValue":Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 427
    .local v5, "second":I
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "propertyValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 428
    .restart local v4    # "propertyValue":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 430
    .local v0, "amount":I
    new-instance v1, Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;

    invoke-direct {v1}, Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;-><init>()V

    .line 431
    .local v1, "element":Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;
    iput v0, v1, Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;->amount:I

    .line 432
    and-int/lit16 v7, v2, 0xff

    shl-int/lit8 v7, v7, 0x10

    and-int/lit16 v8, v5, 0xff

    or-int/2addr v7, v8

    iput v7, v1, Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;->key:I

    .line 433
    iget-object v7, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->kerningDictionary:Lorg/cocos2d/utils/collections/IntMap;

    iget v8, v1, Lorg/cocos2d/opengl/CCBitmapFontAtlas$tKerningHashElement;->key:I

    invoke-virtual {v7, v8, v1}, Lorg/cocos2d/utils/collections/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-void
.end method

.method public purgeKerningDictionary()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->kerningDictionary:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v0}, Lorg/cocos2d/utils/collections/IntMap;->clear()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/opengl/CCBitmapFontAtlas$CCBitmapFontConfiguration;->kerningDictionary:Lorg/cocos2d/utils/collections/IntMap;

    .line 152
    return-void
.end method
