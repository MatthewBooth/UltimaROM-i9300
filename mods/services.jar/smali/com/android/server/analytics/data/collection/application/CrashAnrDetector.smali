.class public Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;
.super Ljava/lang/Object;
.source "CrashAnrDetector.java"


# static fields
.field public static final ANR_DATA_TAG:Ljava/lang/String; = "data_app_anr"

.field public static final ANR_SYSTEM_TAG:Ljava/lang/String; = "system_app_anr"

.field private static final BYTES_FROM_DROPBOX:I = 0xbb8

.field public static final JAVA_DATA_CRASH_TAG:Ljava/lang/String; = "data_app_crash"

.field public static final JAVA_SYSTEM_CRASH_TAG:Ljava/lang/String; = "system_app_crash"

.field public static final NATIVE_CRASH_TAG:Ljava/lang/String; = "SYSTEM_TOMBSTONE"

.field private static final TAG:Ljava/lang/String; = "CrashAnrDetector"

.field private static final mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDatabaseStorage:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

.field private mDropboxManager:Landroid/os/DropBoxManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageMonitor:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string/jumbo v1, "system_app_crash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string v1, "data_app_crash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string/jumbo v1, "system_app_anr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string v1, "data_app_anr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    const-string v1, "SYSTEM_TOMBSTONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;-><init>(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;-><init>(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mPackageMonitor:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;->getInstance(Landroid/content/Context;)Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDatabaseStorage:Lcom/android/server/analytics/data/collection/storage/DatabaseStorage;

    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mPackageMonitor:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;

    iget-object v2, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;->register(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->processDropBoxEntry(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V

    return-void
.end method

.method private broadcastEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "CrashAnrDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;

    invoke-direct {v0, p1}, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->getColumnForTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "javaCrash"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v6}, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->setJavaCrash(I)V

    :cond_0
    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.analytics.intent.action.APP_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.analytics.intent.extra.APP_ERROR_INFO"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_ANALYTICS"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string v3, "nativeCrash"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v6}, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->setNativeCrash(I)V

    goto :goto_0

    :cond_2
    const-string v3, "anr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v6}, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->setAnr(I)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v3

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method private getColumnForTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "system_app_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data_app_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "javaCrash"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "SYSTEM_TOMBSTONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "nativeCrash"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "system_app_anr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "data_app_anr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "anr"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDropBoxManager()Landroid/os/DropBoxManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    return-object v0
.end method

.method private final declared-synchronized getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private processDropBoxEntry(Ljava/lang/String;J)V
    .locals 15

    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->getDropBoxManager()Landroid/os/DropBoxManager;

    move-result-object v12

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v12, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mDropboxManager:Landroid/os/DropBoxManager;

    const-wide/16 v13, 0x1

    sub-long v13, p2, v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13, v14}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v12, "CrashAnrDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NO DROPBOX ENTRY for :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v12, "SYSTEM_TOMBSTONE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "data_app_anr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "system_app_anr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "---"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gez v5, :cond_4

    move-object v11, v10

    :goto_1
    const-string v12, "CrashAnrDetector"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V

    const-string v7, "badProcess"

    if-eqz v11, :cond_3

    const/4 v12, 0x0

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v12, "Process"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x8

    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v12, "CrashAnrDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {p0, v12, v0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->broadcastEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v10, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    goto :goto_1

    :catch_0
    move-exception v3

    const/16 v12, 0xbb8

    invoke-virtual {v2, v12}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_5
    const/16 v12, 0xbb8

    invoke-virtual {v2, v12}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_6
    const-string v12, ">>>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v12, "<<<"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-le v8, v4, :cond_7

    if-lez v4, :cond_7

    add-int/lit8 v12, v4, 0x4

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v12, "CrashAnrDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-string v12, "CrashAnrDetector"

    const-string v13, "failed to find process name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "Not Available"

    goto :goto_3
.end method

.method private final declared-synchronized updateAppInfoList()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mAppInfoList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
