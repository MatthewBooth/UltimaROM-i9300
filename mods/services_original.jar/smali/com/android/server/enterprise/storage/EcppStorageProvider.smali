.class public Lcom/android/server/enterprise/storage/EcppStorageProvider;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/storage/EcppStorageProvider$EcppDbErrorHandler;
    }
.end annotation


# static fields
.field static final PW_ENCODED_LENTH:I = 0x9

.field protected static final TAG:Ljava/lang/String; = "EcppStorageProvider"


# instance fields
.field protected mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/enterprise/storage/EcppStorageProvider$EcppDbErrorHandler;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/storage/EcppStorageProvider$EcppDbErrorHandler;-><init>(Lcom/android/server/enterprise/storage/EcppStorageProvider;)V

    invoke-static {p1, v2}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/android/server/enterprise/storage/EcppStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. getWritableDatabase SQLiteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. enableWriteAheadLogging IllegalStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public findContainerAdmin(ILandroid/content/ComponentName;)Z
    .locals 5

    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findContainerAdmin(): containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " admin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passwordContainerID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND componentName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    const-string v3, "PASSWORD_POLICY"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->dbExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .locals 7

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBluetoothMode"

    const-wide/16 v5, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBrowser"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowCamera"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowDesktopSync"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowInternetSharing"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowIrDA"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowPOPIMAPEmail"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowStorageCard"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowTextMessaging"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowWifi"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method protected getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string v1, "0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v1

    :cond_1
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available on this policy set yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "EcppStorageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getColumnValueForBoolean(): tableName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " columnToSelect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " containerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " admin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " defaultValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND componentName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    new-array v7, v5, [Ljava/lang/String;

    aput-object p2, v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v3, v8}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    move v2, v4

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getColumnValueForBoolean(): tableName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " columnToSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RETURNING = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not available on this policy set yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p5

    goto :goto_1
.end method

.method protected getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;J)J
    .locals 9

    const/4 v8, 0x0

    const-string v5, "EcppStorageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLongColumnValue(): tableName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " columnToSelect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " containerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " admin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " defaultValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "passwordContainerID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND componentName=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EcppStorageProvider;->mEcppDbHelper:Lcom/android/server/enterprise/storage/EcppStorageHelper;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p2, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v6, v4, v7}, Lcom/android/server/enterprise/storage/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    const-string v5, "EcppStorageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLongColumnValue(): tableName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " columnToSelect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RETURNING = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_2
    const-string v5, "EcppStorageProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The setting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not available on this policy set yet"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, p5

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .locals 2

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumFailedPasswordsForDisable"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .locals 2

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumFailedPasswordsForWipe"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .locals 2

    if-nez p2, :cond_0

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToLockPassword"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToLockPassword"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPasswordExpirationDate(ILandroid/content/ComponentName;)J
    .locals 5

    const-string v2, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationDate"

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPasswordExpirationDate: getting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .locals 2

    if-nez p2, :cond_0

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordExpirationTimeout"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordExpirationTimeout"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .locals 2

    if-nez p2, :cond_0

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordHistory"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordHistory"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .locals 3

    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - getPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordMinimumLength"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .locals 2

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordMinimumLetters"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .locals 2

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordMinimumLowerCase"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .locals 2

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordMinimumNonLetter"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .locals 2

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordMinimumNumeric"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .locals 2

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordMinimumSymbols"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .locals 2

    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordMinimumUpperCase"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .locals 3

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordQuality"

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v1

    long-to-int v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .locals 6

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowSimplePassword"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .locals 4

    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordVisible"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getLongColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)J

    move-result-wide v1

    long-to-int v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
