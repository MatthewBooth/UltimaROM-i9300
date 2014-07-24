.class public Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
.super Ljava/lang/Object;
.source "HapticFeedbackThemeLoader.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;,
        Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;,
        Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;,
        Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;,
        Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;,
        Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectActionEntry;,
        Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;
    }
.end annotation


# static fields
.field protected static final EFFECT_NAME_DATA_COLUMN:I = 0x3

.field protected static final EFFECT_NAME_ID_COLUMN:I = 0x0

.field protected static final EFFECT_NAME_INDEX_COLUMN:I = 0x1

.field protected static final EFFECT_NAME_NAME_COLUMN:I = 0x2

.field protected static final MANIFEST_DATA_COLUMN:I = 0x2

.field protected static final MANIFEST_ID_COLUMN:I = 0x0

.field protected static final MANIFEST_VERSION_COLUMN:I = 0x1

.field protected static final sActionTagName:Ljava/lang/String; = "Action"

.field protected static final sEffectIDAttrName:Ljava/lang/String; = "id"

.field protected static final sEffectIVTFileAttrName:Ljava/lang/String; = "ivtFile"

.field protected static final sEffectIndexAttrName:Ljava/lang/String; = "effectIndex"

.field protected static final sEffectNameAttrName:Ljava/lang/String; = "effectName"

.field protected static final sEffectTagName:Ljava/lang/String; = "Effect"

.field protected static final sEventTagName:Ljava/lang/String; = "Event"

.field protected static final sEventTypeAttrName:Ljava/lang/String; = "type"

.field protected static final sMappingTagName:Ljava/lang/String; = "Mapping"

.field protected static final sModifyEffectEffectRefAttrName:Ljava/lang/String; = "startEffectRef"

.field protected static final sModifyEffectTagName:Ljava/lang/String; = "ModifyEffect"

.field protected static final sModifyEffectTypeAttrName:Ljava/lang/String; = "type"

.field protected static final sModifyEffectValueAttrName:Ljava/lang/String; = "value"

.field protected static final sStartEffectEffectRefAttrName:Ljava/lang/String; = "effectRef"

.field protected static final sStartEffectIdAttrName:Ljava/lang/String; = "id"

.field protected static final sStartEffectTagName:Ljava/lang/String; = "StartEffect"

.field protected static final sStopEffectEffectRefAttrName:Ljava/lang/String; = "startEffectRef"

.field protected static final sStopEffectTagName:Ljava/lang/String; = "StopEffect"

.field protected static final sThemeNameAttrName:Ljava/lang/String; = "name"

.field protected static final sThemeTagName:Ljava/lang/String; = "Theme"

.field protected static final sThemeVersionAttrName:Ljava/lang/String; = "version"

.field protected static final sXMLNamespace:Ljava/lang/String; = "http://www.immersion.com"


# instance fields
.field protected mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

.field protected mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

.field protected mAuthority:Ljava/lang/String;

.field protected mCr:Landroid/content/ContentResolver;

.field protected mEffects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mMappings:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mProblemLoadingTheme:Z

.field protected mStrInfo:Ljava/lang/String;

.field protected mUIEvents:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAuthority:Ljava/lang/String;

    iput-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mCr:Landroid/content/ContentResolver;

    iput-boolean v9, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    const-string v7, ""

    iput-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    iput-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    iput-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mMappings:Ljava/util/Vector;

    iput-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    iput-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    iput-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mCr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAuthority:Ljava/lang/String;

    iput-object p3, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mUIEvents:Ljava/util/Hashtable;

    iput-boolean v9, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    :try_start_0
    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mCr:Landroid/content/ContentResolver;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAuthority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "manifest"

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    invoke-interface {v6, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mMappings:Ljava/util/Vector;

    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v3, 0x0

    const-string v7, "SUCCESS"

    iput-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v1, 0x0

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v3, 0x0

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :goto_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "Mapping"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    if-nez v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Malformed Mapping element structure."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->event:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

    if-nez v0, :cond_1

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Mapping Element with no Event element found."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->actions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Mapping Element with no Action element found."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->actions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    iget-object v2, v2, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->event:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

    iget-object v2, v2, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should only have one Action Item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mMappings:Ljava/util/Vector;

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v0, "Action"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    if-nez v0, :cond_6

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Malformed Action element structure."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    if-nez v0, :cond_7

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Action element is not a child of a Mapping element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;->effectEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Action Element with no effect element found."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->actions:Ljava/util/Vector;

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public fillTheme(Lcom/immersion/android/haptics/HapticFeedbackThemeData;)Z
    .locals 39

    new-instance v34, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    invoke-direct/range {v34 .. v35}, Ljava/util/HashSet;-><init>(I)V

    const/16 v18, 0x0

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v14, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Lcom/immersion/IVTBuffer;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectDefns:[Lcom/immersion/IVTBuffer;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const/16 v23, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v23

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;

    iget-object v0, v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v35, 0x400

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v28, v0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v35, v0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "content://"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAuthority:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "effects/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    const-string v37, "r"

    invoke-virtual/range {v35 .. v37}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v30

    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual/range {v30 .. v30}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v20

    :goto_3
    if-lez v20, :cond_1

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v20

    const/16 v35, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v20

    goto :goto_3

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectDefns:[Lcom/immersion/IVTBuffer;

    move-object/from16 v35, v0

    new-instance v36, Lcom/immersion/IVTBuffer;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lcom/immersion/IVTBuffer;-><init>([B)V

    aput-object v36, v35, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    move-object/from16 v35, v0

    iget-object v0, v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v35, v18

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    invoke-virtual/range {v30 .. v30}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v9

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ": "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    move/from16 v35, v0

    if-nez v35, :cond_3

    const/16 v35, 0x1

    :goto_4
    return v35

    :cond_3
    const/16 v35, 0x0

    goto :goto_4

    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    :cond_5
    sget v35, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    move/from16 v0, v35

    new-array v0, v0, [[[I

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->mapping:[[[I

    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    sget v35, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mUIEvents:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/Integer;

    const/4 v14, 0x0

    :goto_5
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v14, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mUIEvents:Ljava/util/Hashtable;

    move-object/from16 v35, v0

    aget-object v36, v25, v14

    invoke-virtual/range {v35 .. v36}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v35, v0

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_6
    sget v35, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v21, v0

    sget v35, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v14, v0, :cond_7

    const/16 v35, 0x0

    aput v35, v21, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mMappings:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v14, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mMappings:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->event:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    if-nez v16, :cond_8

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\nMapping event \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mMappings:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->event:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\' is not supported"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v35

    aget v36, v21, v35

    add-int/lit8 v36, v36, 0x1

    aput v36, v21, v35

    goto :goto_8

    :cond_9
    const/4 v14, 0x0

    :goto_9
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v14, v0, :cond_c

    const/16 v35, 0x0

    aput v35, v19, v14

    aget v35, v21, v14

    if-eqz v35, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->mapping:[[[I

    move-object/from16 v35, v0

    aget v36, v21, v14

    move/from16 v0, v36

    new-array v0, v0, [[I

    move-object/from16 v36, v0

    aput-object v36, v35, v14

    const/16 v23, 0x0

    :goto_a
    aget v35, v21, v14

    move/from16 v0, v23

    move/from16 v1, v35

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->mapping:[[[I

    move-object/from16 v35, v0

    aget-object v35, v35, v14

    const/16 v36, 0x4

    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v36, v0

    aput-object v36, v35, v23

    add-int/lit8 v23, v23, 0x1

    goto :goto_a

    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->mapping:[[[I

    move-object/from16 v36, v0

    const/16 v35, 0x0

    check-cast v35, [[I

    aput-object v35, v36, v14

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_c
    const/4 v14, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mMappings:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v14, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mMappings:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    iget-object v0, v3, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->event:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    if-nez v16, :cond_d

    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->mapping:[[[I

    move-object/from16 v35, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v36

    aget-object v35, v35, v36

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v36

    aget v36, v19, v36

    aget-object v27, v35, v36

    const/16 v23, 0x0

    :goto_d
    iget-object v0, v3, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->actions:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v23

    move/from16 v1, v35

    if-ge v0, v1, :cond_1b

    iget-object v0, v3, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->actions:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    const/16 v24, 0x0

    :goto_e
    iget-object v0, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;->effectEntries:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v24

    move/from16 v1, v35

    if-ge v0, v1, :cond_1a

    iget-object v0, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;->effectEntries:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectActionEntry;

    instance-of v0, v5, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;

    move/from16 v35, v0

    if-eqz v35, :cond_19

    move-object/from16 v32, v5

    check-cast v32, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;

    const/16 v17, -0x1

    const/4 v15, -0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    aput v36, v27, v35

    const/4 v7, 0x0

    const/16 v26, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/Vector;->size()I

    move-result v35

    move/from16 v0, v26

    move/from16 v1, v35

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;

    iget-object v0, v10, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_13

    const/4 v7, 0x1

    const/16 v29, 0x0

    :goto_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v29

    move/from16 v1, v35

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    move-object/from16 v35, v0

    aget-object v35, v35, v29

    iget-object v0, v10, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_11

    move/from16 v17, v29

    :cond_e
    if-ltz v17, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_f

    iget-object v0, v10, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_12

    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectDefns:[Lcom/immersion/IVTBuffer;

    move-object/from16 v35, v0

    aget-object v35, v35, v17

    iget-object v0, v10, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/immersion/IVTBuffer;->getEffectIndexFromName(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    :cond_f
    :goto_11
    if-eqz v7, :cond_10

    if-ltz v17, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v17

    move/from16 v1, v35

    if-lt v0, v1, :cond_15

    :cond_10
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Could not find Effect definition whose id is \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\' for StartEffect element \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mId:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\'."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    move/from16 v35, v0

    if-nez v35, :cond_14

    const/16 v35, 0x1

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_10

    :catch_1
    move-exception v31

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\nWARNING: provided effectName does not map to an actual effect. effectIndex will be used instead."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    iget v15, v10, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectIndex:I

    goto/16 :goto_11

    :cond_12
    iget v15, v10, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectIndex:I

    goto/16 :goto_11

    :cond_13
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_f

    :cond_14
    const/16 v35, 0x0

    goto/16 :goto_4

    :cond_15
    if-ltz v15, :cond_16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectDefns:[Lcom/immersion/IVTBuffer;

    move-object/from16 v35, v0

    aget-object v35, v35, v17

    invoke-virtual/range {v35 .. v35}, Lcom/immersion/IVTBuffer;->getEffectCount()I

    move-result v35

    move/from16 v0, v35

    if-lt v15, v0, :cond_18

    :cond_16
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "EffectIndex \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\' is out of bound (or effectName is incorrect) for ivtFile \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    move-object/from16 v36, v0

    aget-object v36, v36, v17

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\' as specified for Effect \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\'."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    move/from16 v35, v0

    if-nez v35, :cond_17

    const/16 v35, 0x1

    goto/16 :goto_4

    :cond_17
    const/16 v35, 0x0

    goto/16 :goto_4

    :cond_18
    const/16 v35, 0x1

    aput v17, v27, v35

    const/16 v35, 0x2

    aput v15, v27, v35

    :cond_19
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_e

    :cond_1a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_d

    :cond_1b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v35

    aget v36, v19, v35

    add-int/lit8 v36, v36, 0x1

    aput v36, v19, v35

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    move/from16 v35, v0

    if-nez v35, :cond_1d

    const/16 v35, 0x1

    goto/16 :goto_4

    :cond_1d
    const/16 v35, 0x0

    goto/16 :goto_4
.end method

.method public getThemeLoadedSuccessfully()Z
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mProblemLoadingTheme:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeLoadingLogOutput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mStrInfo:Ljava/lang/String;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v8, 0x0

    const-string v6, "Effect"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;

    invoke-direct {v0, p0, v8}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V

    const-string v6, "http://www.immersion.com"

    const-string v7, "id"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    iget-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v6, ""

    const-string v7, "id"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    iget-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    if-nez v6, :cond_0

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Could not retrieve attribute \'id\' from Effect element."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const-string v6, "http://www.immersion.com"

    const-string v7, "ivtFile"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    iget-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, ""

    const-string v7, "ivtFile"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    iget-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mIvtFile:Ljava/lang/String;

    if-nez v6, :cond_1

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not retrieve attribute \'ivtFile\' from Effect \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-string v6, "http://www.immersion.com"

    const-string v7, "effectIndex"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v6, ""

    const-string v7, "effectIndex"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "-1"

    :cond_2
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectIndex:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "http://www.immersion.com"

    const-string v7, "effectName"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    iget-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v6, ""

    const-string v7, "effectName"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    iget-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    if-nez v6, :cond_3

    iput-object v8, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    :cond_3
    iget-object v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mRealEffectName:Ljava/lang/String;

    if-nez v6, :cond_4

    iget v6, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectIndex:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Effect \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' must specify at least one of these two attributes: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "effectIndex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' and \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "effectName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v3

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Effect \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EffectEntry;->mEffectName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' attribute \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "effectIndex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not an integer."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mEffects:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string v6, "Mapping"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    invoke-direct {v6, p0, v8}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V

    iput-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    goto :goto_0

    :cond_7
    const-string v6, "Action"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    invoke-direct {v6, p0, v8}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V

    iput-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    goto :goto_0

    :cond_8
    const-string v6, "Event"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

    invoke-direct {v1, p0, v8}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    if-nez v6, :cond_9

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Event element is not a child of a Mapping element."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    const-string v6, "http://www.immersion.com"

    const-string/jumbo v7, "type"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    iget-object v6, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    if-nez v6, :cond_a

    const-string v6, ""

    const-string/jumbo v7, "type"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    iget-object v6, v1, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;->strEvent:Ljava/lang/String;

    if-nez v6, :cond_a

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Could not retrieve attribute \'type\' from Event element."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAMapping:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;

    iput-object v1, v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$MappingEntry;->event:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$EventEntry;

    goto :goto_0

    :cond_b
    const-string v6, "StartEffect"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;

    invoke-direct {v4, p0, v8}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;-><init>(Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$1;)V

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    if-nez v6, :cond_c

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "StartEffect element is not a child of an Action element."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    iget-object v6, v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;->effectEntries:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_e

    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    iget-object v6, v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;->effectEntries:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;

    if-eqz v6, :cond_d

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Found multiple StartEffect elements inside an Action element where only one is allowed."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_e
    const-string v6, "http://www.immersion.com"

    const-string v7, "id"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mId:Ljava/lang/String;

    iget-object v6, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mId:Ljava/lang/String;

    if-nez v6, :cond_f

    const-string v6, ""

    const-string v7, "id"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mId:Ljava/lang/String;

    iget-object v6, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mId:Ljava/lang/String;

    if-nez v6, :cond_f

    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not retrieve attribute \'id\' from StartEffect \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_f
    const-string v6, "http://www.immersion.com"

    const-string v7, "effectRef"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    iget-object v6, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    if-nez v6, :cond_10

    const-string v6, ""

    const-string v7, "effectRef"

    invoke-interface {p4, v6, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    iget-object v6, v4, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$StartEffectEntry;->mEffectName:Ljava/lang/String;

    if-nez v6, :cond_10

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Could not retrieve attribute \'effectRef\' from StartEffect element."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_10
    iget-object v6, p0, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->mAnAction:Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;

    iget-object v6, v6, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader$ActionEntry;->effectEntries:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
