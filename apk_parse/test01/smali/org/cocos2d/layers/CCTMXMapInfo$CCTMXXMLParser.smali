.class Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "CCTMXMapInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/layers/CCTMXMapInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCTMXXMLParser"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/cocos2d/layers/CCTMXMapInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const-class v0, Lorg/cocos2d/layers/CCTMXMapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/cocos2d/layers/CCTMXMapInfo;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iget-boolean v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->storingCharacters:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->currentString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 461
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 387
    const-string v5, "data"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iget v5, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->layerAttribs:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 388
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iput-boolean v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->storingCharacters:Z

    .line 390
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iget-object v5, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->layers:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iget-object v6, v6, Lorg/cocos2d/layers/CCTMXMapInfo;->layers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/layers/CCTMXLayerInfo;

    .line 392
    .local v4, "layer":Lorg/cocos2d/layers/CCTMXLayerInfo;
    const/4 v1, 0x0

    check-cast v1, [B

    .line 394
    .local v1, "buffer":[B
    :try_start_0
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iget-object v5, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->currentString:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/utils/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 399
    :goto_0
    if-nez v1, :cond_1

    .line 400
    sget-object v5, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    const-string v6, "cocos2d: TiledMap: decode data error"

    invoke-static {v5, v6}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .end local v1    # "buffer":[B
    .end local v4    # "layer":Lorg/cocos2d/layers/CCTMXLayerInfo;
    :cond_0
    :goto_1
    return-void

    .line 395
    .restart local v1    # "buffer":[B
    .restart local v4    # "layer":Lorg/cocos2d/layers/CCTMXLayerInfo;
    :catch_0
    move-exception v3

    .line 397
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 429
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    iput-object v5, v4, Lorg/cocos2d/layers/CCTMXLayerInfo;->tiles:Ljava/nio/IntBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 434
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    :goto_2
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->currentString:Ljava/lang/StringBuilder;

    goto :goto_1

    .line 430
    :catch_1
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    const-string v6, "cocos2d: TiledMap: inflate data error"

    invoke-static {v5, v6}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 435
    .end local v1    # "buffer":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "layer":Lorg/cocos2d/layers/CCTMXLayerInfo;
    :cond_2
    const-string v5, "map"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 437
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iput v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    goto :goto_1

    .line 439
    :cond_3
    const-string v5, "layer"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 441
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iput v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    goto :goto_1

    .line 443
    :cond_4
    const-string v5, "objectgroup"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 445
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iput v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    goto :goto_1

    .line 447
    :cond_5
    const-string v5, "object"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 449
    iget-object v5, p0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    iput v6, v5, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    goto :goto_1
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 466
    sget-object v0, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;

    .prologue
    .line 472
    sget-object v0, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 29
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v25, "map"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 170
    const-string v25, "version"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 171
    .local v21, "version":Ljava/lang/String;
    const-string v25, "1.0"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 172
    sget-object v25, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "cocos2d: TMXFormat: Unsupported TMX version: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    const-string v25, "orientation"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 176
    .local v15, "orientationStr":Ljava/lang/String;
    const-string v25, "orthogonal"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->orientation:I

    .line 186
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const-string v26, "width"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    .line 187
    const-string v27, "height"

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 186
    invoke-static/range {v26 .. v27}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->mapSize:Lorg/cocos2d/types/CGSize;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const-string v26, "tilewidth"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    .line 189
    const-string v27, "tileheight"

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 188
    invoke-static/range {v26 .. v27}, Lorg/cocos2d/types/CGSize;->make(FF)Lorg/cocos2d/types/CGSize;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    .line 380
    .end local v15    # "orientationStr":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 178
    .restart local v15    # "orientationStr":Ljava/lang/String;
    .restart local v21    # "version":Ljava/lang/String;
    :cond_2
    const-string v25, "isometric"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->orientation:I

    goto/16 :goto_0

    .line 180
    :cond_3
    const-string v25, "hexagonal"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->orientation:I

    goto/16 :goto_0

    .line 183
    :cond_4
    sget-object v25, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "cocos2d: TMXFomat: Unsupported orientation: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->orientation:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    .end local v15    # "orientationStr":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    :cond_5
    const-string v25, "tileset"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 196
    const-string v25, "source"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "externalTilesetFilename":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->filename:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->filename:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "dir":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    # invokes: Lorg/cocos2d/layers/CCTMXMapInfo;->parseXMLFile(Ljava/lang/String;)V
    invoke-static {v0, v7}, Lorg/cocos2d/layers/CCTMXMapInfo;->access$0(Lorg/cocos2d/layers/CCTMXMapInfo;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 204
    .end local v4    # "dir":Ljava/lang/String;
    :cond_6
    new-instance v19, Lorg/cocos2d/layers/CCTMXTilesetInfo;

    invoke-direct/range {v19 .. v19}, Lorg/cocos2d/layers/CCTMXTilesetInfo;-><init>()V

    .line 205
    .local v19, "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    const-string v25, "name"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/cocos2d/layers/CCTMXTilesetInfo;->name:Ljava/lang/String;

    .line 206
    const-string v25, "firstgid"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lorg/cocos2d/layers/CCTMXTilesetInfo;->firstGid:I

    .line 207
    const-string v25, "spacing"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 208
    .local v20, "value":Ljava/lang/String;
    if-nez v20, :cond_7

    const/16 v25, 0x0

    :goto_2
    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lorg/cocos2d/layers/CCTMXTilesetInfo;->spacing:I

    .line 209
    const-string v25, "margin"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 210
    if-nez v20, :cond_8

    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lorg/cocos2d/layers/CCTMXTilesetInfo;->margin:I

    .line 211
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v18

    .line 212
    .local v18, "s":Lorg/cocos2d/types/CGSize;
    const-string v25, "tilewidth"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lorg/cocos2d/types/CGSize;->width:F

    .line 213
    const-string v25, "tileheight"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lorg/cocos2d/types/CGSize;->height:F

    .line 214
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/cocos2d/layers/CCTMXTilesetInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 208
    .end local v18    # "s":Lorg/cocos2d/types/CGSize;
    :cond_7
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto :goto_2

    .line 210
    :cond_8
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto :goto_3

    .line 219
    .end local v7    # "externalTilesetFilename":Ljava/lang/String;
    .end local v19    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    .end local v20    # "value":Ljava/lang/String;
    :cond_9
    const-string v25, "tile"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/cocos2d/layers/CCTMXTilesetInfo;

    .line 221
    .local v11, "info":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v3, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    iget v0, v11, Lorg/cocos2d/layers/CCTMXTilesetInfo;->firstGid:I

    move/from16 v26, v0

    const-string v27, "id"

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->parentGID:I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->tileProperties:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentGID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    goto/16 :goto_1

    .line 226
    .end local v3    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "info":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    :cond_a
    const-string v25, "layer"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 227
    new-instance v12, Lorg/cocos2d/layers/CCTMXLayerInfo;

    invoke-direct {v12}, Lorg/cocos2d/layers/CCTMXLayerInfo;-><init>()V

    .line 228
    .local v12, "layer":Lorg/cocos2d/layers/CCTMXLayerInfo;
    const-string v25, "name"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v12, Lorg/cocos2d/layers/CCTMXLayerInfo;->name:Ljava/lang/String;

    .line 230
    invoke-static {}, Lorg/cocos2d/types/CGSize;->zero()Lorg/cocos2d/types/CGSize;

    move-result-object v18

    .line 231
    .restart local v18    # "s":Lorg/cocos2d/types/CGSize;
    const-string v25, "width"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lorg/cocos2d/types/CGSize;->width:F

    .line 232
    const-string v25, "height"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lorg/cocos2d/types/CGSize;->height:F

    .line 233
    move-object/from16 v0, v18

    iput-object v0, v12, Lorg/cocos2d/layers/CCTMXLayerInfo;->layerSize:Lorg/cocos2d/types/CGSize;

    .line 235
    const-string v25, "visible"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 236
    .local v22, "visible":Ljava/lang/String;
    if-eqz v22, :cond_b

    const-string v25, "0"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    iput-boolean v0, v12, Lorg/cocos2d/layers/CCTMXLayerInfo;->visible:Z

    .line 238
    const-string v25, "opacity"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_c

    .line 239
    const/high16 v25, 0x437f0000    # 255.0f

    const-string v26, "opacity"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v12, Lorg/cocos2d/layers/CCTMXLayerInfo;->opacity:I

    .line 245
    :goto_5
    :try_start_0
    const-string v25, "x"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 246
    .local v23, "x":I
    const-string v25, "y"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 248
    .local v24, "y":I
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v12, Lorg/cocos2d/layers/CCTMXLayerInfo;->offset:Lorg/cocos2d/types/CGPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v23    # "x":I
    .end local v24    # "y":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->layers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    goto/16 :goto_1

    .line 236
    :cond_b
    const/16 v25, 0x1

    goto :goto_4

    .line 241
    :cond_c
    const/16 v25, 0xff

    move/from16 v0, v25

    iput v0, v12, Lorg/cocos2d/layers/CCTMXLayerInfo;->opacity:I

    goto :goto_5

    .line 249
    :catch_0
    move-exception v5

    .line 250
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v12, Lorg/cocos2d/layers/CCTMXLayerInfo;->offset:Lorg/cocos2d/types/CGPoint;

    goto :goto_6

    .line 258
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v12    # "layer":Lorg/cocos2d/layers/CCTMXLayerInfo;
    .end local v18    # "s":Lorg/cocos2d/types/CGSize;
    .end local v22    # "visible":Ljava/lang/String;
    :cond_d
    const-string v25, "objectgroup"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 260
    new-instance v14, Lorg/cocos2d/layers/CCTMXObjectGroup;

    invoke-direct {v14}, Lorg/cocos2d/layers/CCTMXObjectGroup;-><init>()V

    .line 261
    .local v14, "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    const-string v25, "name"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->groupName:Ljava/lang/String;

    .line 262
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v17

    .line 267
    .local v17, "positionOffset":Lorg/cocos2d/types/CGPoint;
    :try_start_1
    const-string v25, "x"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 268
    .restart local v23    # "x":I
    const-string v25, "y"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 270
    .restart local v24    # "y":I
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/cocos2d/types/CGPoint;->ccp(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->positionOffset:Lorg/cocos2d/types/CGPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    .end local v23    # "x":I
    .end local v24    # "y":I
    :goto_7
    move-object/from16 v0, v17

    iput-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->positionOffset:Lorg/cocos2d/types/CGPoint;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    goto/16 :goto_1

    .line 271
    :catch_1
    move-exception v5

    .line 272
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/cocos2d/types/CGPoint;->zero()Lorg/cocos2d/types/CGPoint;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->positionOffset:Lorg/cocos2d/types/CGPoint;

    goto :goto_7

    .line 281
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v14    # "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    .end local v17    # "positionOffset":Lorg/cocos2d/types/CGPoint;
    :cond_e
    const-string v25, "image"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->tilesets:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/cocos2d/layers/CCTMXTilesetInfo;

    .line 285
    .restart local v19    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    const-string v25, "source"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, "imagename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->filename:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 287
    .local v9, "idx":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v9, v0, :cond_f

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->filename:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 289
    .local v16, "path":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/cocos2d/layers/CCTMXTilesetInfo;->sourceImage:Ljava/lang/String;

    goto/16 :goto_1

    .line 291
    .end local v16    # "path":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v19

    iput-object v10, v0, Lorg/cocos2d/layers/CCTMXTilesetInfo;->sourceImage:Ljava/lang/String;

    goto/16 :goto_1

    .line 294
    .end local v9    # "idx":I
    .end local v10    # "imagename":Ljava/lang/String;
    .end local v19    # "tileset":Lorg/cocos2d/layers/CCTMXTilesetInfo;
    :cond_10
    const-string v25, "data"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 295
    const-string v25, "encoding"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, "encoding":Ljava/lang/String;
    const-string v25, "compression"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "compression":Ljava/lang/String;
    const-string v25, "base64"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->layerAttribs:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->layerAttribs:I

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->storingCharacters:Z

    .line 302
    sget-boolean v25, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->$assertionsDisabled:Z

    if-nez v25, :cond_11

    if-eqz v2, :cond_11

    const-string v25, "gzip"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11

    new-instance v25, Ljava/lang/AssertionError;

    const-string v26, "TMX: unsupported compression method"

    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    .line 304
    :cond_11
    const-string v25, "gzip"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->layerAttribs:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->layerAttribs:I

    .line 309
    :cond_12
    sget-boolean v25, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->$assertionsDisabled:Z

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->layerAttribs:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    new-instance v25, Ljava/lang/AssertionError;

    const-string v26, "TMX tile map: Only base64 and/or gzip maps are supported"

    invoke-direct/range {v25 .. v26}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v25

    .line 311
    .end local v2    # "compression":Ljava/lang/String;
    .end local v6    # "encoding":Ljava/lang/String;
    :cond_13
    const-string v25, "object"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/cocos2d/layers/CCTMXObjectGroup;

    .line 317
    .restart local v14    # "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 320
    .restart local v3    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v25, "name"

    const-string v26, "name"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v25, "type"

    const-string v26, "type"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v25, "x"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->positionOffset:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->x:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 326
    .restart local v23    # "x":I
    const-string v25, "x"

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v25, "y"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    iget-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->positionOffset:Lorg/cocos2d/types/CGPoint;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/cocos2d/types/CGPoint;->y:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 330
    .restart local v24    # "y":I
    const-string v25, "height"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_14

    const/4 v8, 0x0

    .line 331
    .local v8, "height":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->mapSize:Lorg/cocos2d/types/CGSize;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->tileSize:Lorg/cocos2d/types/CGSize;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/cocos2d/types/CGSize;->height:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    int-to-float v0, v8

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 332
    const-string v25, "y"

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v25, "width"

    const-string v26, "width"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v25, "height"

    const-string v26, "height"

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->objects:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    goto/16 :goto_1

    .line 330
    .end local v8    # "height":I
    :cond_14
    const-string v25, "height"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_8

    .line 343
    .end local v3    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_15
    const-string v25, "property"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 344
    const-string v25, "name"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 345
    .local v13, "name":Ljava/lang/String;
    const-string v25, "value"

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 346
    .restart local v20    # "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    move/from16 v25, v0

    if-nez v25, :cond_16

    .line 348
    sget-object v25, Lorg/cocos2d/layers/CCTMXMapInfo;->LOG_TAG:Ljava/lang/String;

    .line 349
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "TMX tile map: Parent element is unsupported. Cannot add property named \'"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\' with value \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 348
    invoke-static/range {v25 .. v26}, Lorg/cocos2d/config/ccMacros;->CCLOG(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 350
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->properties:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 355
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->layers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->layers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/cocos2d/layers/CCTMXLayerInfo;

    .line 360
    .restart local v12    # "layer":Lorg/cocos2d/layers/CCTMXLayerInfo;
    iget-object v0, v12, Lorg/cocos2d/layers/CCTMXLayerInfo;->properties:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 362
    .end local v12    # "layer":Lorg/cocos2d/layers/CCTMXLayerInfo;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/cocos2d/layers/CCTMXObjectGroup;

    .line 366
    .restart local v14    # "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    iget-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->properties:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 368
    .end local v14    # "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->objectGroups:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/cocos2d/layers/CCTMXObjectGroup;

    .line 372
    .restart local v14    # "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    iget-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->objects:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    iget-object v0, v14, Lorg/cocos2d/layers/CCTMXObjectGroup;->objects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 373
    .restart local v3    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-virtual {v3, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 374
    .end local v3    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "objectGroup":Lorg/cocos2d/layers/CCTMXObjectGroup;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentElement:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->tileProperties:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo$CCTMXXMLParser;->this$0:Lorg/cocos2d/layers/CCTMXMapInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/cocos2d/layers/CCTMXMapInfo;->parentGID:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 377
    .restart local v3    # "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-virtual {v3, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method
