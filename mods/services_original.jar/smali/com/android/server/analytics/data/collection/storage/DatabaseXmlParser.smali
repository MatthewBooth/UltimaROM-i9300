.class public Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;
.super Ljava/lang/Object;
.source "DatabaseXmlParser.java"


# static fields
.field private static final ATTR_DEFAULT:Ljava/lang/String; = "default"

.field private static final ATTR_FOREIGN_KEY_NAME:Ljava/lang/String; = "foreignkeyname"

.field private static final ATTR_FOREIGN_REFER_KEY:Ljava/lang/String; = "foreignreferkey"

.field private static final ATTR_FOREIGN_REFER_TABLE:Ljava/lang/String; = "foreignrefertable"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PRIMARY_KEY:Ljava/lang/String; = "primarykey"

.field private static final ATTR_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "DatabaseXmlParser"


# instance fields
.field private final mCallback:Lcom/android/server/analytics/data/collection/storage/TableCallback;

.field private final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/analytics/data/collection/storage/TableCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    iput-object p2, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mCallback:Lcom/android/server/analytics/data/collection/storage/TableCallback;

    return-void
.end method

.method private getType(Ljava/lang/String;)Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_0

    :cond_2
    const-string v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_0

    :cond_3
    const-string v0, "real"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    goto :goto_0
.end method

.method private isPrimaryKey(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseXML()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eq v7, v0, :cond_2

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "table"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v8, Lcom/android/server/analytics/data/collection/storage/Table;

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v2, 0x0

    const-string v3, "foreignrefertable"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v3, 0x0

    const-string v4, "foreignreferkey"

    invoke-interface {v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v4, 0x0

    const-string v5, "foreignkeyname"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/analytics/data/collection/storage/Table;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "column"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/analytics/data/collection/storage/Column;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    invoke-interface {v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->getType(Ljava/lang/String;)Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v4, 0x0

    const-string v5, "primarykey"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->isPrimaryKey(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v5, 0x0

    const-string v10, "properties"

    invoke-interface {v4, v5, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const/4 v10, 0x0

    const-string v11, "default"

    invoke-interface {v5, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/analytics/data/collection/storage/Column;-><init>(Ljava/lang/String;Lcom/android/server/analytics/data/collection/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/server/analytics/data/collection/storage/Table;->addColumn(Lcom/android/server/analytics/data/collection/storage/Column;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v0, "DatabaseXmlParser"

    const-string v1, "parseXML EX:"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "table"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/storage/DatabaseXmlParser;->mCallback:Lcom/android/server/analytics/data/collection/storage/TableCallback;

    invoke-interface {v0, v8}, Lcom/android/server/analytics/data/collection/storage/TableCallback;->onTableFound(Lcom/android/server/analytics/data/collection/storage/Table;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
