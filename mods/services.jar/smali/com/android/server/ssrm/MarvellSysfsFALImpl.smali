.class public Lcom/android/server/ssrm/MarvellSysfsFALImpl;
.super Ljava/lang/Object;
.source "MarvellSysfsFALImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/MarvellSysfsFALImpl$1;,
        Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;,
        Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;,
        Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final HW_VENDOR:Ljava/lang/String; = null

.field private static SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath; = null

.field private static final TAG:Ljava/lang/String; = "SSRMv2:MarvellSysfsFALImpl"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static mApeOppPath:Z

.field public static mChipVendor:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

.field public static mDdrOppPath:Z

.field public static mPlatformType:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    sget-object v0, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->HW_VENDOR:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    sput-boolean v2, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mDdrOppPath:Z

    sput-boolean v2, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mApeOppPath:Z

    return-void
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Maple"

    sget-object v2, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mChipVendor:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    :goto_0
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mrvl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->PXA1088:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mPlatformType:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    :goto_1
    new-instance v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    sget-object v2, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mChipVendor:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    sget-object v3, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mPlatformType:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;)V

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    return-void

    :cond_0
    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mChipVendor:Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;->NONE:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->mPlatformType:Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    goto :goto_1
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

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private parseGpuFreqTable()[I
    .locals 12

    const/4 v8, 0x0

    const-string v9, "SSRMv2:MarvellSysfsFALImpl"

    const-string v10, "parseGpuFreqTable"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v9, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v10, v10, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

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

    const-string v9, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

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

    invoke-static {v8, v9}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v8, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v9, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v9, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    const-string v9, "parseSystemBusTable"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v8, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

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

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

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

    invoke-static {v7, v8}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_5
    sget-boolean v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

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

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

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

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method gpu1WriteValue(II)V
    .locals 4

    const v0, 0x98580

    if-ne p1, v0, :cond_0

    const p1, 0x65900

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const-string v0, "SSRMv2:MarvellSysfsFALImpl"

    const-string v1, "/sys/devices/platform/galcore/gpu/gpu1/gpufreq/scaling_min_freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "SSRMv2:MarvellSysfsFALImpl"

    const-string v1, "/sys/devices/platform/galcore/gpu/gpu1/gpufreq/scaling_max_freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initSupportedFrequency(I)[I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->parseGpuFreqTable()[I

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const v9, 0x82208

    const v8, 0x4c2c0

    const v7, 0x26160

    const/4 v4, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    return v5

    :pswitch_1
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_1
    :pswitch_2
    if-eqz v1, :cond_3

    const-string v6, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    const/4 v4, 0x1

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->gpu1WriteValue(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    move v5, v4

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-ne p2, v7, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    if-ne p2, v8, :cond_5

    const/4 p2, 0x2

    goto :goto_1

    :cond_5
    if-ne p2, v9, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :pswitch_6
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-ne p2, v7, :cond_6

    const/4 p2, 0x1

    goto/16 :goto_1

    :cond_6
    if-ne p2, v8, :cond_7

    const/4 p2, 0x2

    goto/16 :goto_1

    :cond_7
    if-ne p2, v9, :cond_0

    const/4 p2, 0x3

    goto/16 :goto_1

    :pswitch_7
    new-instance v1, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x28

    if-eq p2, v6, :cond_8

    const/16 v6, 0x33

    if-eq p2, v6, :cond_8

    const/16 v6, 0x32

    if-ne p2, v6, :cond_9

    :cond_8
    const/4 p2, 0x1

    goto/16 :goto_1

    :cond_9
    const/16 v6, 0x3c

    if-ne p2, v6, :cond_0

    const/4 p2, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    sget-boolean v6, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v6, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_b

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_b
    :goto_6
    throw v6

    :catch_2
    move-exception v0

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v6, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    return v6

    :pswitch_1
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    :goto_1
    :pswitch_2
    if-eqz v1, :cond_0

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", revertValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V

    const/4 v5, 0x1

    const/4 v7, 0x3

    if-eq p1, v7, :cond_1

    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->gpu1WriteValue(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    move v6, v5

    goto :goto_0

    :pswitch_3
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_4
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_5
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_6
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_1

    :pswitch_7
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->SYSFS:Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    sget-boolean v7, Lcom/android/server/ssrm/MarvellSysfsFALImpl;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_6
    throw v7

    :catch_2
    move-exception v0

    const-string v8, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v7, "SSRMv2:MarvellSysfsFALImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v3

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
