.class public Lcom/android/server/ssrm/MarvellFALImpl;
.super Ljava/lang/Object;
.source "MarvellFALImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;,
        Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;


# instance fields
.field final MSG_ACQUIRE_DVFS_LOCK_INTENT_MAX:I

.field final MSG_ACQUIRE_DVFS_LOCK_INTENT_MIN:I

.field final MSG_RELEASE_DVFS_LOCK_INTENT_MAX:I

.field final MSG_RELEASE_DVFS_LOCK_INTENT_MIN:I

.field final MSG_REL_CPUCORE_NUM_INTENT_MIN:I

.field final MSG_REL_DDR_BOOSTER_INTENT_MAX:I

.field final MSG_REL_DDR_BOOSTER_INTENT_MIN:I

.field final MSG_REL_GPU_BOOSTER_INTENT_MAX:I

.field final MSG_REL_GPU_BOOSTER_INTENT_MIN:I

.field final MSG_SET_CPUCORE_NUM_INTENT_MIN:I

.field final MSG_SET_DDR_BOOSTER_INTENT_MAX:I

.field final MSG_SET_DDR_BOOSTER_INTENT_MIN:I

.field final MSG_SET_GPU_BOOSTER_INTENT_MAX:I

.field final MSG_SET_GPU_BOOSTER_INTENT_MIN:I

.field final TAG:Ljava/lang/String;

.field mDVFSLockIntentSenderHandler:Landroid/os/Handler;

.field mDVFSLockIntentSenderThread:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

.field final mDvfsThreadSyncObject:Ljava/lang/Object;

.field volatile mInitComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/MarvellFALImpl;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/MarvellFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "SSRMv2:MarvellFALImpl"

    iput-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_GPU_BOOSTER_INTENT_MIN:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_GPU_BOOSTER_INTENT_MIN:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_GPU_BOOSTER_INTENT_MAX:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_GPU_BOOSTER_INTENT_MAX:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_DDR_BOOSTER_INTENT_MIN:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_DDR_BOOSTER_INTENT_MIN:I

    const/16 v1, 0xb

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_DDR_BOOSTER_INTENT_MAX:I

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_DDR_BOOSTER_INTENT_MAX:I

    const/16 v1, 0xd

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_SET_CPUCORE_NUM_INTENT_MIN:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_REL_CPUCORE_NUM_INTENT_MIN:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mInitComplete:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_ACQUIRE_DVFS_LOCK_INTENT_MIN:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_ACQUIRE_DVFS_LOCK_INTENT_MAX:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_RELEASE_DVFS_LOCK_INTENT_MIN:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->MSG_RELEASE_DVFS_LOCK_INTENT_MAX:I

    new-instance v1, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    invoke-direct {v1}, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/MarvellFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    new-instance v1, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

    const-string v2, "DVFSIntentSenderThread"

    const/4 v3, -0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;-><init>(Lcom/android/server/ssrm/MarvellFALImpl;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderThread:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderThread:Lcom/android/server/ssrm/MarvellFALImpl$DVFSLockIntentSender;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDvfsThreadSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseCpuCoreTable()[I
    .locals 11

    const-string v7, "SSRMv2:MarvellFALImpl"

    const-string v8, "parseCpuCoreTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v7, Lcom/android/server/ssrm/MarvellFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/MarvellFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/ssrm/MarvellFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_3

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    move-object v7, v6

    :cond_2
    :goto_1
    return-object v7

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_4
    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    add-int/lit8 v4, v7, 0x1

    packed-switch v4, :pswitch_data_0

    const/4 v6, 0x0

    :goto_2
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_3
    move-object v7, v6

    goto :goto_1

    :pswitch_0
    const/4 v7, 0x1

    :try_start_6
    new-array v6, v7, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_2

    :pswitch_1
    const/4 v7, 0x2

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    goto :goto_2

    :pswitch_2
    const/4 v7, 0x3

    new-array v6, v7, [I

    fill-array-data v6, :array_1

    goto :goto_2

    :pswitch_3
    const/4 v7, 0x4

    new-array v6, v7, [I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    fill-array-data v6, :array_2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_7
    sget-boolean v7, Lcom/android/server/ssrm/MarvellFALImpl;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "SSRMv2:MarvellFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    const/4 v6, 0x0

    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v7, "SSRMv2:MarvellFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_7

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_7
    :goto_5
    throw v7

    :catch_3
    move-exception v2

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_4
    move-exception v2

    const-string v7, "SSRMv2:MarvellFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v2

    const-string v7, "SSRMv2:MarvellFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private parseGpuFreqTable()[I
    .locals 12

    const/4 v8, 0x0

    const-string v9, "SSRMv2:MarvellFALImpl"

    const-string v10, "parseGpuFreqTable"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v9, Lcom/android/server/ssrm/MarvellFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/MarvellFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/android/server/ssrm/MarvellFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    iget-object v10, v10, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v9, "SSRMv2:MarvellFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_5

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    array-length v8, v6

    if-eq v5, v8, :cond_7

    const/4 v3, 0x0

    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_7

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v8, v3, 0x1

    array-length v9, v6

    if-ge v8, v9, :cond_6

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v6, v8

    aput-object v8, v6, v3

    add-int/lit8 v8, v3, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    new-array v7, v5, [I

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_b

    sub-int v8, v5, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: supportedFrequency = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v7, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v8, Lcom/android/server/ssrm/MarvellFALImpl;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by Exception, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    const/4 v7, 0x0

    if-eqz v0, :cond_9

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_9
    :goto_5
    move-object v8, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_a
    :goto_6
    throw v8

    :catch_2
    move-exception v2

    const-string v9, "SSRMv2:MarvellFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v2

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_4
    move-exception v2

    const-string v9, "SSRMv2:MarvellFALImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_b
    if-eqz v0, :cond_9

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7
.end method

.method private parseSystemBusTable()[I
    .locals 11

    const/4 v7, 0x0

    const-string v8, "SSRMv2:MarvellFALImpl"

    const-string v9, "parseSystemBusTable"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v8, Lcom/android/server/ssrm/MarvellFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/MarvellFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/MarvellFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/MarvellFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    new-array v6, v7, [I

    const/4 v3, 0x0

    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_7

    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3

    const-string v7, "SSRMv2:MarvellFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: supportedFrequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v7, Lcom/android/server/ssrm/MarvellFALImpl;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "SSRMv2:MarvellFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    const/4 v6, 0x0

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_3
    move-object v7, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_4
    throw v7

    :catch_2
    move-exception v2

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v2

    const-string v7, "SSRMv2:MarvellFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-exception v2

    const-string v8, "SSRMv2:MarvellFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    :catch_5
    move-exception v2

    const-string v7, "SSRMv2:MarvellFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initSupportedFrequency(I)[I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/ssrm/MarvellFALImpl;->parseGpuFreqTable()[I

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/ssrm/MarvellFALImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/ssrm/MarvellFALImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, p2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public nativeAcquireDVFSLock(II)I
    .locals 4

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nativeReleaseDVFSLock(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ssrm/MarvellFALImpl;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
