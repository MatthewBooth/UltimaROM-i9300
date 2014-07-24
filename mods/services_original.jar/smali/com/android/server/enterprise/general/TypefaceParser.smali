.class public Lcom/android/server/enterprise/general/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "displayname"

.field private static final NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field private static final NODE_FILE:Ljava/lang/String; = "file"

.field private static final NODE_FILENAME:Ljava/lang/String; = "filename"

.field private static final NODE_FONT:Ljava/lang/String; = "font"

.field private static final NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field private static final NODE_SANS:Ljava/lang/String; = "sans"

.field private static final NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/server/enterprise/general/Typeface;

.field private mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    iput-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iput-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFile;->setFileName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_0
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    goto :goto_0

    :cond_2
    const-string v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    goto :goto_0

    :cond_3
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    goto :goto_0

    :cond_4
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    goto :goto_0

    :cond_8
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method

.method public getParsedData()Lcom/android/server/enterprise/general/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    const-string v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/general/Typeface;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    goto :goto_0

    :cond_2
    const-string v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    goto :goto_0

    :cond_3
    const-string v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    goto :goto_0

    :cond_4
    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    new-instance v1, Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-direct {v1}, Lcom/android/server/enterprise/general/TypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    goto :goto_0

    :cond_5
    const-string v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    goto :goto_0

    :cond_6
    const-string v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method
