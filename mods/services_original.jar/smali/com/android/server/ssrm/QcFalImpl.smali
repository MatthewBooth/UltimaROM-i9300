.class public Lcom/android/server/ssrm/QcFalImpl;
.super Ljava/lang/Object;
.source "QcFalImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/QcFalImpl$1;,
        Lcom/android/server/ssrm/QcFalImpl$SysfsPath;,
        Lcom/android/server/ssrm/QcFalImpl$PlatformType;
    }
.end annotation


# static fields
.field private static final DUALCORE_TABLE:[I = null

.field private static final MSM8974PRO_BUS_TABLE:[I = null

.field static final TAG:Ljava/lang/String; = "SSRMv2:QcFalImpl"


# instance fields
.field final DEBUG:Z

.field final UTF8:Ljava/lang/String;

.field mGpuFreqTable:[I

.field mPerfCoreMaxLock:Lorg/codeaurora/Performance;

.field mPerfCoreMinLock:Lorg/codeaurora/Performance;

.field mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl;->MSM8974PRO_BUS_TABLE:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl;->DUALCORE_TABLE:[I

    return-void

    :array_0
    .array-data 0x4
        0xa3t 0x3t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x66t 0x2t 0x0t 0x0t
        0xcct 0x1t 0x0t 0x0t
        0x33t 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/QcFalImpl;->DEBUG:Z

    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->UTF8:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msm8960"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    :goto_0
    new-instance v1, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/QcFalImpl$PlatformType;)V

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    return-void

    :cond_0
    const-string v1, "msm8226"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    :cond_1
    const-string v1, "msm8974"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    :cond_2
    const-string v1, "msm8610"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

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
    .locals 7

    const/4 v3, 0x0

    const-string v4, "SSRMv2:QcFalImpl"

    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    const/16 v4, 0x20

    if-gt v2, v4, :cond_0

    new-array v3, v2, [I

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    sub-int v4, v2, v1

    aput v4, v3, v1

    const-string v4, "SSRMv2:QcFalImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseCpuCoreTable:: table["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseGpuFreqTable()[I
    .locals 8

    const/4 v3, 0x0

    const-string v5, "SSRMv2:QcFalImpl"

    iget-object v6, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v4, v0

    new-array v3, v4, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v1

    const-string v5, "SSRMv2:QcFalImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseGpuFreqTable:: table["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iput v4, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0
.end method


# virtual methods
.method acquirePerfCoreMaxLock(I)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v0, 0x7fe

    const/16 v1, 0x7fd

    const/16 v2, 0x7fc

    const/16 v3, 0x7fb

    const/16 v4, 0x7fb

    if-lt p1, v7, :cond_0

    const/4 v5, 0x4

    if-le p1, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v5, :cond_2

    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: create new Performance instance"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v5}, Lorg/codeaurora/Performance;->perfLockRelease()I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_1)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fe

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    :pswitch_1
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_3)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fc

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    :pswitch_2
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_2)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fd

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method acquirePerfCoreMinLock(I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_2

    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    :pswitch_1
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_MAX)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    :pswitch_2
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 0x4
        0x2t 0x7t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x7t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x3t 0x7t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method adjustFreqToIndexValue(II)I
    .locals 2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    if-nez v1, :cond_3

    const/4 p2, 0x0

    :cond_1
    :goto_0
    move v0, p2

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    aget v1, v1, v0

    if-eq p2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    :cond_6
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 p2, 0x23c

    goto :goto_0

    :sswitch_1
    const/16 p2, 0x1bbe

    goto :goto_0

    :sswitch_2
    const/16 p2, 0x17d7

    goto :goto_0

    :sswitch_3
    const/16 p2, 0x124c

    goto :goto_0

    :sswitch_4
    const/16 p2, 0xdb5

    goto :goto_0

    :sswitch_5
    const/16 p2, 0x926

    goto :goto_0

    :sswitch_6
    const/16 p2, 0x5f5

    goto :goto_0

    :sswitch_7
    const/16 p2, 0x478

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4b -> :sswitch_0
        0x96 -> :sswitch_7
        0xc8 -> :sswitch_6
        0x133 -> :sswitch_5
        0x1cc -> :sswitch_4
        0x266 -> :sswitch_3
        0x320 -> :sswitch_2
        0x3a3 -> :sswitch_1
    .end sparse-switch
.end method

.method public checkNodeExistence(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/ssrm/QcFalImpl;->parseGpuFreqTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/server/ssrm/QcFalImpl;->DUALCORE_TABLE:[I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/QcFalImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/QcFalImpl;->MSM8974PRO_BUS_TABLE:[I

    goto :goto_0

    nop

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

    const/4 v1, 0x1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/QcFalImpl;->acquirePerfCoreMinLock(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/QcFalImpl;->acquirePerfCoreMaxLock(I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/QcFalImpl;->adjustFreqToIndexValue(II)I

    move-result p2

    const-string v2, "SSRMv2:QcFalImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyToValues:: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:QcFalImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v0, ""

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v3}, Lorg/codeaurora/Performance;->perfLockRelease()I

    iput-object v4, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v3}, Lorg/codeaurora/Performance;->perfLockRelease()I

    iput-object v4, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    :cond_0
    :goto_1
    const-string v3, "SSRMv2:QcFalImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertToDefault:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SSRMv2:QcFalImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_6
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
