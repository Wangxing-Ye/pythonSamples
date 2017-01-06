.class public Lorg/cocos2d/utils/ZwoptexParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ZwoptexParser.java"


# instance fields
.field private dict_depth:Ljava/lang/Integer;

.field private f_filename:Ljava/lang/String;

.field private f_format:Ljava/lang/Integer;

.field private f_frame:Lorg/cocos2d/types/CGRect;

.field private f_key:Ljava/lang/String;

.field private f_offset:Lorg/cocos2d/types/CGPoint;

.field private f_rotated:Ljava/lang/Boolean;

.field private f_source_size:Lorg/cocos2d/types/CGSize;

.field private f_spriteOffset:Lorg/cocos2d/types/CGPoint;

.field private f_spriteSize:Lorg/cocos2d/types/CGSize;

.field private f_spriteSourceSize:Lorg/cocos2d/types/CGSize;

.field private f_textureRect:Lorg/cocos2d/types/CGRect;

.field private f_textureRotated:Ljava/lang/Boolean;

.field private frames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private metadata_key:Ljava/lang/String;

.field private mode_set_integer:Ljava/lang/Boolean;

.field private mode_set_key:Ljava/lang/Boolean;

.field private mode_set_real:Ljava/lang/Boolean;

.field private mode_set_string:Ljava/lang/Boolean;

.field private section:Ljava/lang/String;

.field tmpHeight:I

.field tmpOffsetX:F

.field tmpOffsetY:F

.field tmpWidth:I

.field tmpX:I

.field tmpY:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 47
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_format:Ljava/lang/Integer;

    .line 165
    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpX:I

    .line 166
    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpY:I

    .line 167
    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpWidth:I

    .line 168
    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpHeight:I

    .line 169
    iput v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpOffsetX:F

    .line 170
    iput v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpOffsetY:F

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->frames:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->metadata:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method private parseCoords(Ljava/lang/String;)Lorg/cocos2d/types/CGPoint;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v2, "[{|}]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "coords":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "c":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v2

    return-object v2
.end method

.method private parseCoordsRect(Ljava/lang/String;)Lorg/cocos2d/types/CGRect;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v1, "[{|}]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "c":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 316
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 317
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 318
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 315
    invoke-static {v1, v2, v3, v4}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    return-object v1
.end method

.method private parseCoordsSize(Ljava/lang/String;)Lorg/cocos2d/types/CGSize;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v2, "[{|}]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "coords":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "c":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v2, v3}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v2

    return-object v2
.end method

.method public static parseZwoptex(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const-string v5, "org.xml.sax.driver"

    const-string v6, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v5, v6}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 56
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    new-instance v1, Lorg/cocos2d/utils/ZwoptexParser;

    invoke-direct {v1}, Lorg/cocos2d/utils/ZwoptexParser;-><init>()V

    .line 57
    .local v1, "handler":Lorg/cocos2d/utils/ZwoptexParser;
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 58
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 61
    :try_start_0
    sget-object v5, Lorg/cocos2d/nodes/CCDirector;->theApp:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 63
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 64
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 65
    invoke-virtual {v1}, Lorg/cocos2d/utils/ZwoptexParser;->getResults()Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 69
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ZwoptexParser"

    const-string v6, "Unable to parse plist file."

    invoke-static {v5, v6}, Lorg/cocos2d/config/ccMacros;->CCLOGERROR(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 173
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 176
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_key:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 178
    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    .line 190
    :cond_0
    const-string v1, "texture"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_key:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 193
    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->metadata_key:Ljava/lang/String;

    .line 197
    :cond_1
    const-string v1, "texture"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_integer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 200
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->metadata:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->metadata_key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_2
    const-string v1, "metadata"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_integer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_3

    const-string v1, "format"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_format:Ljava/lang/Integer;

    .line 209
    :cond_3
    const-string v1, "metadata"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_key:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 211
    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    .line 215
    :cond_4
    const-string v1, "frames"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_key:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 217
    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_filename:Ljava/lang/String;

    .line 221
    :cond_5
    const-string v1, "frames"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_key:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 223
    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    .line 227
    :cond_6
    const-string v1, "frames"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 228
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_string:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 231
    const-string v1, "frame"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 232
    invoke-direct {p0, v0}, Lorg/cocos2d/utils/ZwoptexParser;->parseCoordsRect(Ljava/lang/String;)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_frame:Lorg/cocos2d/types/CGRect;

    .line 244
    :cond_7
    :goto_0
    const-string v1, "textureRect"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 245
    invoke-direct {p0, v0}, Lorg/cocos2d/utils/ZwoptexParser;->parseCoordsRect(Ljava/lang/String;)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_textureRect:Lorg/cocos2d/types/CGRect;

    .line 255
    :cond_8
    :goto_1
    const-string v1, "frames"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->section:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 256
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_integer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_real:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 258
    const-string v1, "x"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpX:I

    .line 296
    :cond_a
    :goto_2
    return-void

    .line 233
    :cond_b
    const-string v1, "offset"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 234
    invoke-direct {p0, v0}, Lorg/cocos2d/utils/ZwoptexParser;->parseCoords(Ljava/lang/String;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_offset:Lorg/cocos2d/types/CGPoint;

    goto :goto_0

    .line 235
    :cond_c
    const-string v1, "rotated"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_rotated:Ljava/lang/Boolean;

    goto :goto_0

    .line 239
    :cond_d
    const-string v1, "sourceSize"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 240
    invoke-direct {p0, v0}, Lorg/cocos2d/utils/ZwoptexParser;->parseCoordsSize(Ljava/lang/String;)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_source_size:Lorg/cocos2d/types/CGSize;

    goto :goto_0

    .line 246
    :cond_e
    const-string v1, "spriteOffset"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 247
    invoke-direct {p0, v0}, Lorg/cocos2d/utils/ZwoptexParser;->parseCoords(Ljava/lang/String;)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_spriteOffset:Lorg/cocos2d/types/CGPoint;

    goto :goto_1

    .line 248
    :cond_f
    const-string v1, "spriteSourceSize"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 249
    invoke-direct {p0, v0}, Lorg/cocos2d/utils/ZwoptexParser;->parseCoordsSize(Ljava/lang/String;)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_spriteSourceSize:Lorg/cocos2d/types/CGSize;

    goto/16 :goto_1

    .line 250
    :cond_10
    const-string v1, "spriteSize"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    invoke-direct {p0, v0}, Lorg/cocos2d/utils/ZwoptexParser;->parseCoordsSize(Ljava/lang/String;)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_spriteSize:Lorg/cocos2d/types/CGSize;

    goto/16 :goto_1

    .line 261
    :cond_11
    const-string v1, "y"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpY:I

    goto :goto_2

    .line 265
    :cond_12
    const-string v1, "width"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 267
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpWidth:I

    goto/16 :goto_2

    .line 269
    :cond_13
    const-string v1, "height"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 271
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpHeight:I

    .line 272
    iget v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpX:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpY:I

    int-to-float v2, v2

    iget v3, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpWidth:I

    int-to-float v3, v3

    iget v4, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpHeight:I

    int-to-float v4, v4

    invoke-static {v1, v2, v3, v4}, Lorg/cocos2d/types/CGRect;->make(FFFF)Lorg/cocos2d/types/CGRect;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_frame:Lorg/cocos2d/types/CGRect;

    goto/16 :goto_2

    .line 274
    :cond_14
    const-string v1, "offsetX"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 276
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpOffsetX:F

    goto/16 :goto_2

    .line 278
    :cond_15
    const-string v1, "offsetY"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 280
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpOffsetY:F

    .line 281
    iget v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpOffsetX:F

    iget v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpOffsetY:F

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_offset:Lorg/cocos2d/types/CGPoint;

    goto/16 :goto_2

    .line 283
    :cond_16
    const-string v1, "originalWidth"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpWidth:I

    goto/16 :goto_2

    .line 287
    :cond_17
    const-string v1, "originalHeight"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpHeight:I

    .line 290
    iget v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpWidth:I

    int-to-float v1, v1

    iget v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->tmpHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_source_size:Lorg/cocos2d/types/CGSize;

    goto/16 :goto_2
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 139
    const-string v1, "dict"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v0, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "frame"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_frame:Lorg/cocos2d/types/CGRect;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "offset"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_offset:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "rotated"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_rotated:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "sourceSize"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_source_size:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "spriteSize"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_spriteSize:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "spriteOffset"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_spriteOffset:Lorg/cocos2d/types/CGPoint;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "spriteSourceSize"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_spriteSourceSize:Lorg/cocos2d/types/CGSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "textureRect"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_textureRect:Lorg/cocos2d/types/CGRect;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "textureRotated"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_textureRotated:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->frames:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_filename:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Lorg/cocos2d/utils/ZwoptexParser;->frameReset()V

    .line 157
    .end local v0    # "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    .line 159
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_key:Ljava/lang/Boolean;

    .line 160
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_string:Ljava/lang/Boolean;

    .line 161
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_integer:Ljava/lang/Boolean;

    .line 162
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_real:Ljava/lang/Boolean;

    .line 163
    return-void
.end method

.method public frameReset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_filename:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_frame:Lorg/cocos2d/types/CGRect;

    .line 101
    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_offset:Lorg/cocos2d/types/CGPoint;

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_rotated:Ljava/lang/Boolean;

    .line 103
    iput-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_source_size:Lorg/cocos2d/types/CGSize;

    .line 104
    return-void
.end method

.method public getResults()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "frames"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->frames:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->metadata:Ljava/util/HashMap;

    const-string v2, "format"

    iget-object v3, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_format:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "metadata"

    iget-object v2, p0, Lorg/cocos2d/utils/ZwoptexParser;->metadata:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method public startDocument()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_key:Ljava/lang/Boolean;

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_string:Ljava/lang/Boolean;

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_integer:Ljava/lang/Boolean;

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_real:Ljava/lang/Boolean;

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    .line 94
    invoke-virtual {p0}, Lorg/cocos2d/utils/ZwoptexParser;->frameReset()V

    .line 95
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v2, 0x1

    .line 115
    const-string v0, "plist"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const-string v0, "dict"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->dict_depth:Ljava/lang/Integer;

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v0, "key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_key:Ljava/lang/Boolean;

    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "string"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_string:Ljava/lang/Boolean;

    goto :goto_0

    .line 123
    :cond_3
    const-string v0, "integer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_integer:Ljava/lang/Boolean;

    goto :goto_0

    .line 125
    :cond_4
    const-string v0, "real"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->mode_set_real:Ljava/lang/Boolean;

    goto :goto_0

    .line 127
    :cond_5
    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    const-string v0, "textureRotated"

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_textureRotated:Ljava/lang/Boolean;

    goto :goto_0

    .line 130
    :cond_6
    const-string v0, "false"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "textureRotated"

    iget-object v1, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/utils/ZwoptexParser;->f_textureRotated:Ljava/lang/Boolean;

    goto :goto_0
.end method
