.class public final Lcom/android/server/pm/PolicyVerification;
.super Ljava/lang/Object;
.source "PolicyVerification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PolicyVerification$PolicyVerify;
    }
.end annotation


# static fields
.field private static final FILE_CONTEXTS:Ljava/lang/String; = "/file_contexts"

.field private static final FILE_CONTEXTS_PREFIX:Ljava/lang/String; = "HF="

.field private static final MAC_PERMISSIONS:Ljava/lang/String; = "/mac_permissions.xml"

.field private static final MAC_PERMISSIONS_PREFIX:Ljava/lang/String; = "HM="

.field private static final POLICY_FILE_PREFIX:Ljava/lang/String; = "SEPF"

.field private static final PROPERTY_CONTEXTS:Ljava/lang/String; = "/property_contexts"

.field private static final PROPERTY_CONTEXTS_PREFIX:Ljava/lang/String; = "HP="

.field private static PolicyFileList:[Ljava/lang/String; = null

.field private static final SEAPP_CONTEXTS:Ljava/lang/String; = "/seapp_contexts"

.field private static final SEAPP_CONTEXTS_PREFIX:Ljava/lang/String; = "HA="

.field private static final SECURITY_DIR_PATH:Ljava/lang/String; = "data/security"

.field private static final SEPOLICY:Ljava/lang/String; = "/sepolicy"

.field private static final SEPOLICY_PREFIX:Ljava/lang/String; = "HS="

.field private static final SEPOLICY_VERSION:Ljava/lang/String; = "/sepolicy_version"

.field private static final SEPOLICY_VERSION_SIGN:Ljava/lang/String; = "/sepolicy_version_sign"

.field private static final SPOTA_DIR_PATH:Ljava/lang/String; = "data/security/spota"

.field private static final TAG:Ljava/lang/String; = "PolicyVerification"

.field private static final VERSION_FILE:Ljava/lang/String; = "VE="


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sepolicy"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/seapp_contexts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/property_contexts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/file_contexts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/mac_permissions.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/sepolicy_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArray2Hex([B)Ljava/lang/String;
    .locals 9

    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    move-object v0, p0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static calculateHash(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, -0x1

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    invoke-static {v5}, Lcom/android/server/pm/PolicyVerification;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_0
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static compareHashValue()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    array-length v5, v5

    new-array v1, v5, [Ljava/lang/String;

    sget-object v5, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    sget-object v5, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    const-string v5, "data/security/spota"

    sget-object v6, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Lcom/android/server/pm/PolicyVerification;->fileGetHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->getSPotaFileHash()[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    :goto_1
    sget-object v5, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    aget-object v5, v1, v3

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "PolicyVerification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "policy file hash not equal. idx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static fileGetHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/server/pm/PolicyVerification;->calculateHash(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static fileRead(Ljava/lang/String;)[B
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v5, :cond_0

    const-string v7, "PolicyVerification"

    const-string v8, "Read Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v3, v4

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_3
    const-string v7, "PolicyVerification"

    const-string v8, "Read Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v7, "PolicyVerification"

    const-string v8, "File Close Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v7

    :catch_2
    move-exception v2

    const-string v8, "PolicyVerification"

    const-string v9, "File Close Error"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v2

    const-string v7, "PolicyVerification"

    const-string v8, "File Close Error"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private static getSPotaFileHash()[Ljava/lang/String;
    .locals 19

    const/4 v7, 0x0

    sget-object v17, Lcom/android/server/pm/PolicyVerification;->PolicyFileList:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const-string v16, ""

    const-string v15, ""

    const-string v12, ""

    const-string v6, ""

    const-string v10, ""

    const/4 v11, 0x0

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v17, "data/security/spota/sepolicy_version"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    new-instance v13, Ljava/io/BufferedReader;

    invoke-direct {v13, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    const-string v17, "HS="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v16, v9

    const-string v17, "HS="

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v14, v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v7, v8

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_2
    return-object v14

    :cond_2
    :try_start_4
    const-string v17, "HA="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object v15, v9

    const-string v17, "HA="

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v7, v8

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v7, :cond_1

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_7
    const-string v17, "HP="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object v12, v9

    const-string v17, "HP="

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x2

    aput-object v12, v14, v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v17

    move-object v7, v8

    :goto_5
    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_4
    :goto_6
    throw v17

    :cond_5
    :try_start_9
    const-string v17, "HF="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object v6, v9

    const-string v17, "HF="

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x3

    aput-object v6, v14, v17

    goto/16 :goto_0

    :cond_6
    const-string v17, "HM="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object v10, v9

    const-string v17, "HM="

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x4

    aput-object v10, v14, v17

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v8, :cond_8

    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_8
    :goto_7
    move-object v7, v8

    goto/16 :goto_2

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v4

    goto :goto_4

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v17

    goto :goto_5

    :catch_6
    move-exception v2

    goto/16 :goto_3

    :catch_7
    move-exception v3

    goto/16 :goto_1
.end method

.method public static verifySEAndroidPolicy()Z
    .locals 6

    const/4 v4, 0x0

    const-string v5, "data/security/spota/sepolicy_version"

    invoke-static {v5}, Lcom/android/server/pm/PolicyVerification;->fileRead(Ljava/lang/String;)[B

    move-result-object v2

    const-string v5, "data/security/spota/sepolicy_version_sign"

    invoke-static {v5}, Lcom/android/server/pm/PolicyVerification;->fileRead(Ljava/lang/String;)[B

    move-result-object v3

    const-string v5, "/publiccert.pem"

    invoke-static {v5}, Lcom/android/server/pm/PolicyVerification;->fileRead(Ljava/lang/String;)[B

    move-result-object v1

    :try_start_0
    invoke-static {v3, v2, v1}, Lcom/android/server/pm/PolicyVerification;->verifySignature([B[B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/pm/PolicyVerification;->compareHashValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static verifySignature([B[B[B)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/os/SELinux;->verifySignature([B[B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "PolicyVerification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verify Signature Fail - retVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PolicyVerification"

    const-string v3, "Exception in XSecureKeyLoader.verifySignature"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
