.class public Lcom/sec/knox/container/contentprovider/ContainerDatabase;
.super Ljava/lang/Object;
.source "ContainerDatabase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContainerDatabase"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppPackagesSignedWithSig(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original_signature=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packages"

    aput-object v6, v2, v5

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "ContainerDatabase"

    const-string v6, "getAppPackagesSignedWithSig call is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    const-string v5, "packages"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v5, "ContainerDatabase"

    invoke-static {v5, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    const-string v5, "ContainerDatabase"

    const-string v6, "getAppPackagesSignedWithSig is not having any package in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeSigningSignature(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getOriginalSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "NA"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, p1, v2, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getAppPackagesSignedWithSig(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orig_signature=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v6

    sget-object v7, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method private returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move-object v2, p2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v0

    move-object v1, p3

    move-object v3, p4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const-string v0, "ContainerDatabase"

    const-string v1, "Column name is null in returnCursorAsPerColumnName"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "ContainerDatabase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "projection object is null? "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "context is null? "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Z
    .locals 5

    const-string v3, "ContainerDatabase"

    const-string v4, "  ########  update to DB delete"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->removeSigningSignature(Landroid/content/Context;Ljava/lang/String;I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p4, v2, v4}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "ContainerDatabase"

    const-string v4, "exception"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v3, "ContainerDatabase"

    const-string v4, "projection object is nul"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllContainerStatus(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "containerid"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "activestatus"

    aput-object v6, v4, v5

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const-string v5, "containerid"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v5, "activestatus"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-containerid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "activestatus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getAndroidId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "containerid"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "androidid"

    aput-object v7, v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ContainerDatabase"

    const-string v7, "getAndroidId container DB is null cannot fetch the android id"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v6, "androidid"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_0

    const-string v6, "ContainerDatabase"

    const-string v7, "getAndroidId android id is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAndroidId and error happend trying to get the android id from DB. Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0
.end method

.method public getCertificateManagerSignatureCreationTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageSignatureName context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageSignatureName signature is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "new_signature_creationtime"

    aput-object v6, v3, v5

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime cursor is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime no rows found for this query"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "new_signature_creationtime"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCertificateManagerSignatureCreationTime getting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime there is no time for this certificateSingnatureId in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCertificateManagerSignatureCreationTime(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureCreationTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v4, -0x1

    if-nez p1, :cond_0

    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId packageName is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orig_signature=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId cursor is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId no rows found for this query"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v4, :cond_4

    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateManagerSignatureId getting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    const-string v4, "ContainerDatabase"

    const-string v5, "getCertificateManagerSignatureId there is no id for this package in DB"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCertificateManagerSignatureId(Landroid/content/Context;[Ljava/lang/String;)I
    .locals 3

    if-nez p2, :cond_0

    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getContainerId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v4, -0x1

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "containerid"

    aput-object v6, v2, v5

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v5, "ContainerDatabase"

    const-string v6, "getContainerIDcall is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    const-string v4, "containerid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got ContainerID from DB for package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v4, "ContainerDatabase"

    const-string v5, "Got ContainerID from DB for package----last"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContainerPackagesInfo(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "containerid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "containerid"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "packages"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "original_signature"

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const-string v11, "installation_source"

    aput-object v11, v5, v10

    const/4 v10, 0x4

    const-string v11, "app_uid"

    aput-object v11, v5, v10

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v10, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v5, v10, v9}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v10, "ContainerDatabase"

    const-string v11, "getContainerPackagesInfocall is null"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "ContainerDatabase"

    const-string v11, "package information not found..."

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    const-string v10, "containerid"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v10, "packages"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v10, "original_signature"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "installation_source"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v10, "app_uid"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v4, :cond_4

    const-string v10, "ContainerDatabase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct {v2}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    invoke-virtual {v2, v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    invoke-virtual {v2, v4}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setInstallationSource(I)V

    invoke-virtual {v2, v8}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setUid(I)V

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    const-string v10, "ContainerDatabase"

    const-string v11, "Empty package information cannot be added..."

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 8

    const/4 v6, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "admin_uid"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "email"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "name"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "securitytext"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "securityicon"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "locktype"

    aput-object v7, v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v5}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    invoke-direct {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const-string v6, "admin_uid"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setAdmin(I)V

    const-string v6, "email"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setEmail(Ljava/lang/String;)V

    const-string v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setName(Ljava/lang/String;)V

    const-string v6, "securitytext"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setSecurityText(Ljava/lang/String;)V

    const-string v6, "securityicon"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v6, v4

    if-lez v6, :cond_2

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setSecurityIcon(Landroid/graphics/Bitmap;)V

    :cond_2
    const-string v6, "locktype"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setLockType(I)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getContainerStatus(Landroid/content/Context;I)I
    .locals 6

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "containerid"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "activestatus"

    aput-object v5, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ContainerDatabase"

    const-string v5, "Container DB is null cannot fetch the status"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/16 v2, 0x385

    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    :cond_1
    const-string v4, "activestatus"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getFailedPasswordAttempts(Landroid/content/Context;I)I
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "containerid"

    aput-object v6, v3, v5

    const/4 v6, 0x1

    const-string v7, "failedpasswordattempts"

    aput-object v7, v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ContainerDatabase"

    const-string v7, "getFailedPasswordAttempts(): container DB is null cannot fetch the failedPasswordAttempts"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v5

    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v6, "failedpasswordattempts"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFailedPasswordAttempts() getting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFailedPasswordAttempts(): and error happend trying to get the value from DB. Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ContainerDatabase"

    const-string v7, "getFailedPasswordAttempts() failed, getting 0"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    goto :goto_0
.end method

.method public getOriginalSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    if-nez p1, :cond_0

    move-object v1, v5

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packages=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "original_signature"

    aput-object v7, v3, v6

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v6, "ContainerDatabase"

    const-string v7, "getOriginalCertificatecall is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    const-string v5, "original_signature"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    invoke-static {v2, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got Original Signature from DB for package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v5, "ContainerDatabase"

    const-string v6, "Got Original Signature from DB for package----last"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getPackageNames(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packages"

    aput-object v6, v2, v5

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageNamescall is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    const-string v5, "packages"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v5, "ContainerDatabase"

    invoke-static {v5, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageNames is not having any package in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;",
            ">;"
        }
    .end annotation

    const/16 v22, 0xe

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string v23, "containerid"

    aput-object v23, v20, v22

    const/16 v22, 0x1

    const-string v23, "admin_uid"

    aput-object v23, v20, v22

    const/16 v22, 0x2

    const-string v23, "activestatus"

    aput-object v23, v20, v22

    const/16 v22, 0x3

    const-string v23, "passwordstatus"

    aput-object v23, v20, v22

    const/16 v22, 0x4

    const-string v23, "email"

    aput-object v23, v20, v22

    const/16 v22, 0x5

    const-string v23, "name"

    aput-object v23, v20, v22

    const/16 v22, 0x6

    const-string v23, "securitytext"

    aput-object v23, v20, v22

    const/16 v22, 0x7

    const-string v23, "securityicon"

    aput-object v23, v20, v22

    const/16 v22, 0x8

    const-string v23, "failedpasswordattempts"

    aput-object v23, v20, v22

    const/16 v22, 0x9

    const-string v23, "locktype"

    aput-object v23, v20, v22

    const/16 v22, 0xa

    const-string v23, "containertype"

    aput-object v23, v20, v22

    const/16 v22, 0xb

    const-string v23, "containerLockOnScreenLock"

    aput-object v23, v20, v22

    const/16 v22, 0xc

    const-string v23, "containerPwdVerfyOnModeChange"

    aput-object v23, v20, v22

    const/16 v22, 0xd

    const-string v23, "deviceFirmwareVersion"

    aput-object v23, v20, v22

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    sget-object v22, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v22

    if-nez v22, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v16

    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const-string v22, "containerid"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v22, "admin_uid"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v22, "passwordstatus"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v22, "activestatus"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v22, "email"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v22, "securitytext"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "failedpasswordattempts"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v22, "locktype"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v22, "containertype"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v22, "containerLockOnScreenLock"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-nez v22, :cond_2

    const/4 v8, 0x0

    :goto_1
    const-string v22, "containerPwdVerfyOnModeChange"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-nez v22, :cond_3

    const/4 v6, 0x0

    :goto_2
    const-string v22, "deviceFirmwareVersion"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v18, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    invoke-direct/range {v18 .. v18}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;-><init>()V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStatus(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerId(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setAdmin(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setSecurityText(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFailedPasswordAttempts(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerLockOnScreenLock(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setVerifyPwdOnlyOnChangeMode(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFirmwareVersion(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v22, "ContainerDatabase"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Container read from DB : [  id:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " adminId:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " containerStatus:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " passwordStatus:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " name:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x1

    goto/16 :goto_2
.end method

.method public insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z
    .locals 5

    const-string v2, "ContainerDatabase"

    const-string v3, "  ########  update to DB Insert"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v2

    invoke-virtual {v2, p3, p2}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "ContainerDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "ContainerDatabase"

    const-string v3, "exception"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public removeContainer(Landroid/content/Context;I)Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "ContainerDatabase"

    const-string v5, "  ########  update to DB remove"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v4

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v4

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted failed for containerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v4, "ContainerDatabase"

    const-string v5, "exception"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v3, "ContainerDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted complete for containerId+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setAndroidId(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 3

    const-string v1, "ContainerDatabase"

    const-string v2, "  ########  update to DB  setAndroidId"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string v1, "ContainerDatabase"

    const-string v2, "setAndroidId androidId is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "androidid"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    return v1
.end method

.method public setCertificateManagerSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v5, "ContainerDatabase"

    const-string/jumbo v6, "setPackageSignature context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_0
    if-nez p2, :cond_1

    const-string v5, "ContainerDatabase"

    const-string/jumbo v6, "setPackageSignature signature is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string v5, "ContainerDatabase"

    const-string/jumbo v6, "setPackageSignature creationTime is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    const-string v5, "ContainerDatabase"

    const-string/jumbo v6, "setPackageSignature inserting new packageSignature"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "orig_signature"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "new_signature_creationtime"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v5

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const-string v5, "ContainerDatabase"

    const-string/jumbo v6, "setPackageSignature error when inserting into DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPackageSignature an error happend trying to store the signature in DB. Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPackageSignature error, entry already exists with id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setCertificateManagerSignature(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-nez p2, :cond_0

    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->setCertificateManagerSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setFailedPasswordAttempts(Landroid/content/Context;II)Z
    .locals 4

    const-string v1, "ContainerDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts() setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "failedpasswordattempts"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    return v1
.end method

.method public updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "ContainerDatabase"

    const-string v3, "  ########  update to DB Update"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v0, v3}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ContainerDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update failed for container status update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "activestatus"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string v2, "ContainerDatabase"

    const-string v3, "projection object is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
