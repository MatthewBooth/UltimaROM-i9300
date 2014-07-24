.class public Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
.super Ljava/lang/Object;
.source "EdmIntegrityStorageProvider.java"


# static fields
.field private static final mTAG:Ljava/lang/String; = "EdmIntegrityStorageProvider"


# instance fields
.field private mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    return-void
.end method


# virtual methods
.method public clearFingerPrint(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->clearFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public commitFingerPrint(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->commitFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getAdminISAMapFromDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->getAdminISAMapFromDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPackageListfromDB(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->getPackageListfromDB(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public rollbackFingerPrint(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->rollbackFingerPrint(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;->mIntegrityDbHelper:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
