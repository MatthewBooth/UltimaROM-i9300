.class public Lcom/android/server/enterprise/seandroid/SEAndroidService;
.super Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;
.source "SEAndroidService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_PERMISSIONS_FILEPATH:Ljava/io/File; = null

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAC_TEMP:Ljava/io/File; = null

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static SEAPP_CONTEXTS_FILEPATH:Ljava/io/File; = null

.field private static SEAPP_TEMP:Ljava/io/File; = null

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAndroidPolicy"


# instance fields
.field private gotSignatureMatch:Z

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_temp.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/seapp_temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_POLICY_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/enterprise/knox/seandroid/ISEAndroidPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    iput-object p1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private addNewDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const-string v5, "3"

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->createTempFile()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->addNewDomainToMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->addNewDomainToSeapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int v6, v7, v8

    return v6
.end method

.method private addNewDomainToMac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 28

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v25, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    :try_start_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    if-nez v21, :cond_0

    const/16 v26, 0x0

    :goto_0
    return v26

    :cond_0
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->normalize()V

    const-string v26, "policy"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/4 v14, 0x0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string/jumbo v26, "signer"

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v20, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_1

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/Element;

    const-string/jumbo v26, "signature"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    const-string v26, "containerAllowedPackage"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v26, "name"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "level"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v12, 0x1

    :cond_1
    if-nez v12, :cond_2

    const-string/jumbo v26, "signer"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    const-string v26, "seinfo"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    const-string v26, "level"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    const-string v26, "allowall"

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v26, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-interface {v13, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "signature"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    sget-object v26, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    const-string v26, "indent"

    const-string/jumbo v27, "yes"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "{http://xml.apache.org/xslt}indent-amount"

    const-string v27, "2"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v11, 0x1

    :goto_2
    move/from16 v26, v11

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_2
.end method

.method private addNewDomainToSeapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v16, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v2

    move-object v9, v10

    move-object v5, v6

    :goto_1
    :try_start_4
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_2
    return v11

    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    const/16 v16, 0x9

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "1"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "2"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "3"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "4"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "5"

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "6"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, "7"

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, "8"

    aput-object v17, v15, v16

    const/16 v16, 0x0

    const-string/jumbo v17, "user=_app"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "seinfo="

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object p3, v15, v16

    const/16 v16, 0x3

    const-string v17, "domain="

    aput-object v17, v15, v16

    const/16 v16, 0x4

    aput-object p2, v15, v16

    const/16 v16, 0x5

    const-string/jumbo v17, "type="

    aput-object v17, v15, v16

    const/16 v16, 0x6

    aput-object p4, v15, v16

    const/16 v16, 0x7

    const-string v17, "level="

    aput-object v17, v15, v16

    const/16 v16, 0x8

    aput-object p5, v15, v16

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x4

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x6

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x7

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x8

    aget-object v17, v15, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v16, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/io/FileWriter;

    sget-object v16, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    new-instance v13, Ljava/io/BufferedWriter;

    invoke-direct {v13, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    invoke-virtual {v13}, Ljava/io/BufferedWriter;->close()V

    const-string v16, "SEAndroidPolicy"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "New Line Added = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v11, 0x1

    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_8
    :goto_3
    move-object v7, v8

    move-object v1, v2

    move-object v9, v10

    move-object v5, v6

    goto/16 :goto_2

    :catchall_0
    move-exception v16

    :goto_4
    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_c
    :goto_5
    throw v16

    :catch_1
    move-exception v16

    goto :goto_3

    :catch_2
    move-exception v16

    goto/16 :goto_2

    :catch_3
    move-exception v17

    goto :goto_5

    :catchall_1
    move-exception v16

    move-object v5, v6

    goto :goto_4

    :catchall_2
    move-exception v16

    move-object v9, v10

    move-object v5, v6

    goto :goto_4

    :catchall_3
    move-exception v16

    move-object v1, v2

    move-object v9, v10

    move-object v5, v6

    goto :goto_4

    :catchall_4
    move-exception v16

    move-object v7, v8

    move-object v1, v2

    move-object v9, v10

    move-object v5, v6

    goto :goto_4

    :catch_4
    move-exception v3

    goto/16 :goto_1

    :catch_5
    move-exception v3

    move-object v5, v6

    goto/16 :goto_1

    :catch_6
    move-exception v3

    move-object v9, v10

    move-object v5, v6

    goto/16 :goto_1

    :catch_7
    move-exception v3

    move-object v7, v8

    move-object v1, v2

    move-object v9, v10

    move-object v5, v6

    goto/16 :goto_1
.end method

.method private declared-synchronized adminLockPolicy(ZI)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v3, "SEAndroidPolicy"

    const-string v4, "adminLockPolicy_begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Locking on Database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "SeAndroidPolicyLocked"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "SE_ANDROID_TABLE"

    invoke-virtual {v3, p2, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :cond_0
    :goto_0
    :try_start_2
    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminLockPolicy result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "SEAndroidPolicy"

    const-string v4, "Exception on Database"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized allowChanges(I)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v2, "SEAndroidPolicy"

    const-string v3, "allowChanges_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SEAndroidPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.sec.android.app.spota"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by SPOTA Agent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Requested by MDM Agent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_3
    const-string v2, "SEAndroidPolicy"

    const-string v3, "Changes Allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized broadcastStateChanged(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v1, "SEAndroidPolicy"

    const-string v2, "broadcastStateChanged_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SEAndroidPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "mdm.intent.action.seandroid.policy.state.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mdm.intent.extra.seandroid.state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .locals 8

    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFiles_begin"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    const-string v5, "SEAndroidPolicy"

    const-string v6, "File Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    :goto_2
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_3
    :try_start_5
    const-string v5, "SEAndroidPolicy"

    const-string v6, "copyFile failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_1
    :goto_5
    throw v5

    :catch_4
    move-exception v0

    const-string v6, "SEAndroidPolicy"

    const-string v7, "Error closing OutputStream"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_5
    move-exception v0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "Error closing OutputStream"

    goto :goto_2

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private createTempFile()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->duplicateFile(Ljava/io/File;Ljava/io/File;)V

    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_TEMP:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->duplicateFile(Ljava/io/File;Ljava/io/File;)V

    sget-object v0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_TEMP:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->setWritable(Z)Z

    return-void
.end method

.method private static duplicateFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v6, 0x40

    :try_start_0
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v5, 0x0

    :cond_0
    return-object v5
.end method

.method private declared-synchronized isAdminLocked()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v5, "SEAndroidPolicy"

    const-string v6, "isAdminLocked_begin = all"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "SeAndroidPolicyLocked"

    aput-object v6, v0, v5

    iget-object v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SE_ANDROID_TABLE"

    invoke-virtual {v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v5, "true"

    const-string v6, "SeAndroidPolicyLocked"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SEAndroidPolicy"

    const-string v6, "At Least one Admin is locked"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :cond_1
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized isAdminLocked(I)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked_begin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "SeAndroidPolicyLocked"

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "SE_ANDROID_TABLE"

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(ILjava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v4, "true"

    const-string v5, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    :try_start_2
    const-string v4, "SEAndroidPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdminLocked result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "SEAndroidPolicy"

    const-string v5, "isAdminLocked = exception"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeFiles()Z
    .locals 12

    const-string v9, "SEAndroidPolicy"

    const-string v10, "removeFiles_begin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v9, "SEAndroidPolicy"

    const-string v10, "Lets start the loop"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v1, v6

    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :goto_1
    const-string v9, "SEAndroidPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeFiles result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_0
    move-exception v2

    const-string v9, "SEAndroidPolicy"

    const-string v10, "Exception.removeFiles"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_1
.end method

.method private returnFilePath()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v10, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/spota/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v7

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/security/mac_permissions.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v0, v8

    const/4 v3, 0x0

    aput-object v3, v0, v9

    new-array v1, v10, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/seapp_contexts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "security/spota/seapp_contexts"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v7

    new-instance v3, Ljava/io/File;

    const-string v4, "seapp_contexts"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v8

    const/4 v3, 0x0

    aput-object v3, v1, v9

    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v2

    const-string v3, "SEAndroidPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget-object v3, v0, v2

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    aget-object v3, v1, v2

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    goto :goto_0

    :pswitch_1
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized searchAgent()I
    .locals 11

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    const-string v9, "SEAndroidPolicy"

    const-string v10, "searchAgent_begin"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "SeAndroidPolicyLocked"

    aput-object v10, v0, v9

    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "SE_ANDROID_TABLE"

    invoke-virtual {v9, v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v9, "true"

    const-string v10, "SeAndroidPolicyLocked"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "adminUid"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v9, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v8, "SEAndroidPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "com.sec.android.app.spota"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v7, "SEAndroidPolicy"

    const-string v8, "searchAgent = SPOTA_AGENT"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v6

    :cond_1
    :try_start_1
    const-string v6, "SEAndroidPolicy"

    const-string v8, "searchAgent = MDM_AGENT"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_0

    :cond_2
    const-string v6, "SEAndroidPolicy"

    const-string v7, "searchAgent = NONE"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method


# virtual methods
.method public amsGetEnforce(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4

    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsGetEnforce_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "persist.security.ams.enforce"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public amsSetEnforce(Landroid/app/enterprise/ContextInfo;Z)I
    .locals 4

    const-string v2, "SEAndroidPolicy"

    const-string v3, "amsSetEnforce_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v2, 0x1

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    const-string v1, "1"

    :goto_0
    const-string v2, "persist.security.ams.enforce"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :goto_1
    return v0

    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_1
.end method

.method public amsSetLogLevel(Landroid/app/enterprise/ContextInfo;I)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "SEAndroidPolicy"

    const-string v2, "amsSetLogLevel_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p2, :pswitch_data_0

    const-string v1, "SEAndroidPolicy"

    const-string v2, "Flag with a wrong value"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const-string v1, "persist.security.ams.verbose"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_0

    :pswitch_1
    const-string v1, "persist.security.ams.verbose"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_0

    :pswitch_2
    const-string v1, "persist.security.ams.verbose"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 26

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v23, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v6, 0x0

    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_9

    const-string v23, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v2, v18

    array-length v13, v2

    const/4 v9, 0x0

    move v11, v9

    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v17, v2, v11

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "seinfo="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_5

    aget-object v22, v3, v9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    move-object/from16 v2, v18

    array-length v13, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_2
    if-ge v10, v13, :cond_3

    aget-object v19, v2, v10

    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    array-length v14, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v14, :cond_2

    aget-object v21, v3, v9

    const-string/jumbo v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    const/16 v23, 0x1

    aget-object v6, v20, v23

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    :goto_4
    return-object v6

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    if-nez v6, :cond_8

    move-object/from16 v3, v18

    array-length v14, v3

    const/4 v9, 0x0

    move v10, v9

    :goto_5
    if-ge v10, v14, :cond_8

    aget-object v19, v3, v10

    const-string v23, "="

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    array-length v15, v4

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v15, :cond_7

    aget-object v21, v4, v9

    const-string/jumbo v23, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x1

    aget-object v6, v20, v23

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v7

    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_4
.end method

.method public getDataTypeFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getDataType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0
.end method

.method public getDomain(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 29

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    new-instance v10, Ljava/io/FileInputStream;

    sget-object v26, Lcom/android/server/enterprise/seandroid/SEAndroidService;->SEAPP_CONTEXTS_FILEPATH:Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v15, Ljava/io/DataInputStream;

    invoke-direct {v15, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v26, Ljava/io/InputStreamReader;

    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const/4 v7, 0x0

    :cond_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_10

    const-string v26, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v2, v21

    array-length v0, v2

    move/from16 v16, v0

    const/4 v11, 0x0

    move v13, v11

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget-object v20, v2, v13

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "seinfo="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    move-object/from16 v3, v21

    array-length v0, v3

    move/from16 v17, v0

    const/4 v11, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v11, v0, :cond_c

    aget-object v25, v3, v11

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "name="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    move-object/from16 v2, v21

    array-length v0, v2

    move/from16 v16, v0

    const/4 v11, 0x0

    move v12, v11

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_7

    aget-object v22, v2, v12

    const-string v26, "="

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v3, v23

    array-length v0, v3

    move/from16 v17, v0

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    aget-object v24, v3, v11

    const-string v26, "domain"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    const/16 v26, 0x1

    aget-object v7, v23, v26

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_4
    move-object v5, v6

    move-object v14, v15

    move-object v9, v10

    :cond_4
    :goto_5
    return-object v7

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_2

    :cond_7
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_a
    :goto_6
    move-object v5, v6

    move-object v14, v15

    move-object v9, v10

    goto :goto_5

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_c
    if-nez v7, :cond_f

    move-object/from16 v3, v21

    :try_start_7
    array-length v0, v3

    move/from16 v17, v0

    const/4 v11, 0x0

    move v12, v11

    :goto_7
    move/from16 v0, v17

    if-ge v12, v0, :cond_f

    aget-object v22, v3, v12

    const-string v26, "="

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v4, v23

    array-length v0, v4

    move/from16 v18, v0

    const/4 v11, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v11, v0, :cond_e

    aget-object v24, v4, v11

    const-string v26, "domain"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    const/16 v26, 0x1

    aget-object v7, v23, v26

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_7

    :cond_f
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-eqz v6, :cond_11

    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_11
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    :cond_12
    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_13
    :goto_9
    move-object v5, v6

    move-object v14, v15

    move-object v9, v10

    goto/16 :goto_5

    :catch_0
    move-exception v8

    :goto_a
    :try_start_9
    sget-object v26, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v7, 0x0

    if-eqz v5, :cond_14

    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_14
    if-eqz v14, :cond_15

    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    :cond_15
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v26

    goto/16 :goto_5

    :catchall_0
    move-exception v26

    :goto_b
    if-eqz v5, :cond_16

    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_16
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    :cond_17
    if-eqz v9, :cond_18

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_18
    :goto_c
    throw v26

    :catch_2
    move-exception v26

    goto :goto_9

    :catch_3
    move-exception v26

    goto/16 :goto_6

    :catch_4
    move-exception v26

    goto/16 :goto_4

    :catch_5
    move-exception v27

    goto :goto_c

    :catchall_1
    move-exception v26

    move-object v9, v10

    goto :goto_b

    :catchall_2
    move-exception v26

    move-object v14, v15

    move-object v9, v10

    goto :goto_b

    :catchall_3
    move-exception v26

    move-object v5, v6

    move-object v14, v15

    move-object v9, v10

    goto :goto_b

    :catch_6
    move-exception v8

    move-object v9, v10

    goto :goto_a

    :catch_7
    move-exception v8

    move-object v14, v15

    move-object v9, v10

    goto :goto_a

    :catch_8
    move-exception v8

    move-object v5, v6

    move-object v14, v15

    move-object v9, v10

    goto :goto_a
.end method

.method public getDomainFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getDomain(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0
.end method

.method public getSEAndroidAgent(Landroid/app/enterprise/ContextInfo;)I
    .locals 2

    const-string v0, "SEAndroidPolicy"

    const-string v1, "getSEAndroidAgent_begin"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v0

    return v0
.end method

.method public getSEInfoFromCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    const/4 v14, 0x0

    iput-boolean v14, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    const/4 v10, 0x0

    sget-object v13, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_PERMISSIONS_FILEPATH:Ljava/io/File;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Element;->normalize()V

    const-string v14, "policy"

    invoke-interface {v3, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v14, 0x0

    invoke-interface {v7, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string/jumbo v14, "signer"

    invoke-interface {v6, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v5, v14, :cond_0

    invoke-interface {v11, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    const-string/jumbo v14, "signature"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "seinfo"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v14, 0x0

    invoke-interface {v8, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    const-string/jumbo v14, "value"

    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    iput-boolean v14, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    move-object v14, v10

    :goto_1
    return-object v14

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    const/4 v14, 0x0

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const/4 v14, 0x0

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const/4 v14, 0x0

    goto :goto_1
.end method

.method public getSEInfoFromPackageName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->returnFilePath()V

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->getSEInfoFromCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->gotSignatureMatch:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    :cond_3
    if-eqz v2, :cond_0

    move-object v4, v2

    goto :goto_0
.end method

.method public getSELinuxMode(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3

    const-string v1, "SEAndroidPolicy"

    const-string v2, "getSELinuxMode_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->isAdminLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEAndroidPolicy"

    const-string v1, "Admin is quiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :cond_0
    return-void
.end method

.method public revokeSELinuxPolicy(Landroid/app/enterprise/ContextInfo;)I
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SEAndroidPolicy"

    const-string v2, "revokeSELinuxPolicy_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->allowChanges(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SEAndroidPolicy"

    const-string v2, "Lets remove the Files"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->removeFiles()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setFileContexts(Landroid/app/enterprise/ContextInfo;[B)I
    .locals 3

    const-string v1, "SEAndroidPolicy"

    const-string v2, "setFileContexts_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file_contexts"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Succesfull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "selinux.reload_policy"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setMacPermission(Landroid/app/enterprise/ContextInfo;[B)I
    .locals 3

    const-string v1, "SEAndroidPolicy"

    const-string/jumbo v2, "setMacPermission_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mac_permissions.xml"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/enterprise/seandroid/SEAndroidService;->MAC_POLICY_FILE:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy(Ljava/io/File;)Z

    const-string v1, "SEAndroidPolicy"

    const-string v2, "readInstallPolicy successful"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setPropertyContexts(Landroid/app/enterprise/ContextInfo;[B)I
    .locals 3

    const-string v1, "SEAndroidPolicy"

    const-string/jumbo v2, "setPropertyContexts_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "property_contexts"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Succesfull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "selinux.reload_policy"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setSEAppContexts(Landroid/app/enterprise/ContextInfo;[B)I
    .locals 3

    const-string v1, "SEAndroidPolicy"

    const-string/jumbo v2, "setSEAppContexts_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "seapp_contexts"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Succesfull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "selinux.reload_policy"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setSELinuxEnforcing(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v2, "SEAndroidPolicy"

    const-string/jumbo v3, "setSELinuxEnforcing_begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v4}, Landroid/os/SELinux;->setSELinuxEnforce(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "mdm.intent.action.seandroid.policy.enforced"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/seandroid/SEAndroidService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_SEANDROID"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method public setSELinuxPolicy(Landroid/app/enterprise/ContextInfo;[B)I
    .locals 3

    const-string v1, "SEAndroidPolicy"

    const-string/jumbo v2, "setSELinuxPolicy_begin"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->enforceOwnerOnlyAndSeAndroidPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sepolicy"

    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->copyFiles(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SEAndroidPolicy"

    const-string v2, "Files Copied Succesfull"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "selinux.reload_policy"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->searchAgent()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->broadcastStateChanged(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/seandroid/SEAndroidService;->adminLockPolicy(ZI)Z

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
