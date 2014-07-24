.class public Lcom/android/server/ssrm/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    }
.end annotation


# static fields
.field private static final BOARD_PLATFORM:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_TYPE_MRVL:Z = false

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object; = null

.field private static final SYSBUS_LOCK:Ljava/lang/Object; = null

.field static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static countOfSysBusLock:I

.field public static mContext:Landroid/content/Context;

.field static mContextStatic:Landroid/content/Context;

.field private static final mDebugDVFSLock:Z

.field private static final mSpew:Z


# instance fields
.field private final MMC_BURST_PATH:Ljava/lang/String;

.field private final MMC_CBURST_MODE_VALUE:I

.field private final MMC_NORMAL_MODE_VALUE:I

.field final PATH_CPU_MAX_LIMIT:Ljava/lang/String;

.field final PATH_CPU_MIN_LIMIT:Ljava/lang/String;

.field final UTF8:Ljava/lang/String;

.field private filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

.field mActivityManager:Landroid/app/IActivityManager;

.field mBootComplete:Z

.field mCpuCorePath:Z

.field private mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private final mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

.field mDisableBusBoost:Z

.field mDisableCpuBoost:Z

.field mDisableGpuBoost:Z

.field private final mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

.field mGpuPath:Z

.field private final mMapPersistentDVFSLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

.field mMonitor:Lcom/android/server/ssrm/Monitor;

.field private volatile mPersistentDVFSLocksInfo:I

.field mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

.field mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

.field mRemainingUsageTimeCalculator:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

.field mScreenOn:Z

.field private mSupportedCPUCore:[I

.field private mSupportedFrequency:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedLCDFrequency:[I

.field private mSupportedSysBusFrequency:[I

.field mSysBusPath:Z

.field mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

.field mUserPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    sput-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    sput-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContextStatic:Landroid/content/Context;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->countOfSysBusLock:I

    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    const-string v1, "mrvl"

    const-string v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    const-string v0, "android_ssrm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->UTF8:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-direct {v4, p0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-direct {v4, p0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    iput v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v4, "/sys/block/mmcblk0/bkops_en"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_BURST_PATH:Ljava/lang/String;

    const/16 v4, 0x80

    iput v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_CBURST_MODE_VALUE:I

    iput v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_NORMAL_MODE_VALUE:I

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "/sys/power/cpufreq_max_limit"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_MAX_LIMIT:Ljava/lang/String;

    const-string v4, "/sys/power/cpufreq_min_limit"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_MIN_LIMIT:Ljava/lang/String;

    sput-object p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    sput-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContextStatic:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initFal()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysfsNode()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->verifyDefaultCondition()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedCPUCore()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedFrequency()V

    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedLCDFreq()V

    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registerIntentReceiver()V

    const-string v2, "/data/system/ssrm_v2.disable_cpu_boost"

    const-string v3, "/data/system/ssrm_v2.disable_gpu_boost"

    const-string v1, "/data/system/ssrm_v2.disable_bus_boost"

    const-string v0, "/data/system/ssrm_v2.disable_all_boost"

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_cpu_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_gpu_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_bus_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_all_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    :cond_3
    new-instance v4, Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {v4}, Lcom/android/server/ssrm/PreMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v4, p1}, Lcom/android/server/ssrm/PreMonitor;->initialize(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v4}, Lcom/android/server/ssrm/PreMonitor;->run()V

    new-instance v4, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-direct {v4}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    new-instance v4, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    invoke-direct {v4, p1}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingUsageTimeCalculator:Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;

    return-void
.end method

.method private static DVFSLockType(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "???"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DVFS_MIN_LIMIT"

    goto :goto_0

    :pswitch_1
    const-string v0, "DVFS_MAX_LIMIT"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method private checkSysfsNode()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    return-void
.end method

.method private initFal()V
    .locals 2

    const-string v0, "Combination"

    sget-object v1, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/ssrm/QcFalImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/QcFalImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/MarvellFALImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/GenericFalImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_0
.end method

.method private initSupportedCPUCore()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    goto :goto_0
.end method

.method private initSupportedFrequency()V
    .locals 20

    const-string v17, "CustomFrequencyManagerService"

    const-string v18, "initSupportedFrequency::"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const-string v2, "/sys/power/cpufreq_table"

    const-string v3, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    new-instance v5, Ljava/io/File;

    const-string v17, "/sys/power/cpufreq_table"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v17, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v17, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    if-eqz v12, :cond_5

    :try_start_0
    sget-boolean v17, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-nez v17, :cond_5

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/power/cpufreq_table"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v8

    :cond_0
    :goto_3
    if-nez v7, :cond_7

    if-eqz v7, :cond_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_4
    return-void

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    if-eqz v13, :cond_6

    :try_start_2
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v8

    goto :goto_3

    :cond_6
    if-eqz v14, :cond_0

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v8

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    if-nez v15, :cond_8

    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v10

    :goto_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_8
    :try_start_4
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_b

    sget-boolean v17, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v17, v11

    :goto_7
    const-string v17, "CustomFrequencyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "initSupportedFrequency:: mSupportedFrequency = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v19, v0

    aget v19, v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    aget-object v18, v16, v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v17, v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v10

    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_1

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v10

    goto/16 :goto_5

    :catchall_0
    move-exception v17

    if-eqz v7, :cond_a

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_a
    :goto_8
    throw v17

    :catch_3
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_4
    move-exception v10

    goto/16 :goto_5

    :cond_b
    if-eqz v7, :cond_1

    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v10

    goto/16 :goto_5
.end method

.method private initSupportedGPUFrequency()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    goto :goto_0
.end method

.method private initSupportedLCDFreq()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x0

    const/16 v2, 0x28

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x2

    const/16 v2, 0x33

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x3

    const/16 v2, 0x3c

    aput v2, v0, v1

    goto :goto_0
.end method

.method private initSupportedSysBusFrequency()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    goto :goto_0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private modifyGPUToValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    goto :goto_0
.end method

.method private static native nativeAcquireDVFSLock(II)I
.end method

.method private static native nativeReleaseDVFSLock(I)I
.end method

.method private static native nativecheckForString(Ljava/lang/String;I[B)I
.end method

.method private static onListScrollBoostEvent(Z)V
    .locals 6

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListScrollBoostEvent:: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-class v3, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    invoke-virtual {v2, p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->onListScrollBoost(Z)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V
    .locals 7

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v3, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getAllCPUCoreLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherCPUCoreLocks : tempLockList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private releaseAllLauncherDVFSLocks(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v4, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getAllDVFSLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherDVFSLocks : tempLockList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget-object v4, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v5

    :goto_1
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherDVFSLocks:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private revertGPUToDefault()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    goto :goto_0
.end method

.method static stringCheckFromPms(Ljava/lang/String;I)I
    .locals 3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/ssrm/Unzipper;->unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativecheckForString(Ljava/lang/String;I[B)I

    move-result v2

    return v2
.end method

.method private verifyDefaultCondition()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyDefaultCondition : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyDefaultCondition : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method acquireCpuDvfsLock(II)I
    .locals 4

    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ssrm/MarvellFALImpl;->nativeAcquireDVFSLock(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_max_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_min_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v0, :cond_1

    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "Boost will be skipped until boot complete."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    if-eqz p4, :cond_2

    const-string v0, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-ne p1, v1, :cond_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    if-nez v0, :cond_0

    const-string v0, "POWER_SAVING_MODE@1"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eq p1, v1, :cond_0

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 9

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, p3, p6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_4

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "Before Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->addLock(Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "After Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Creating new Lock type & adding to List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    if-ge v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    invoke-static {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    if-le v1, v2, :cond_3

    :cond_6
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callingId : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : this callingId already acquired PersistentDVFSLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public checkCPUBoostRange(I)Z
    .locals 4

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkCPUCoreRange(I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkFrameRateRange(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public checkGPUFrequencyRange(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public checkSysBusFrequencyRange(I)Z
    .locals 4

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump CustomFrequencyManagerService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " without permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-eqz v4, :cond_0

    const-string v4, "SSRM Service (dumpsys CustomFrequencyManagerService)\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/ssrm/Monitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/UsageTimeDatabase;->readLog()Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "SSRM RUT ENGINE"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getDVFSLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemainUsageTime(I)I
    .locals 1

    invoke-static {p1}, Lcom/android/server/ssrm/fgapps/RemainingUsageTimeCalculator;->getRemainUsageTime(I)I

    move-result v0

    return v0
.end method

.method public getStandbyTimeInPowerSavingMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->getStandbyTimeInPowerSavingMode()I

    move-result v0

    return v0
.end method

.method public getStandbyTimeInUltraPowerSavingMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v0

    return v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedLCDFrequency()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public mpdUpdate(I)V
    .locals 11

    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    const-string v8, "enable_mpd"

    :goto_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v5, v6

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v8, "disable_mpd"

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_5

    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    if-eqz v5, :cond_2

    :try_start_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_4

    :catchall_0
    move-exception v9

    :goto_6
    if-eqz v7, :cond_6

    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_7
    :goto_7
    throw v9

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_6
    move-exception v4

    goto :goto_4

    :catch_7
    move-exception v4

    goto :goto_4

    :catchall_1
    move-exception v9

    move-object v5, v6

    goto :goto_6

    :catch_8
    move-exception v2

    move-object v5, v6

    goto :goto_5

    :catch_9
    move-exception v3

    move-object v5, v6

    goto :goto_3
.end method

.method public notifyWmAniationState(JZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method registerIntentReceiver()V
    .locals 3

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "CPU Core before removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "CPU Core after removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_1
    if-nez v1, :cond_5

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, request not found, returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :cond_4
    return-void

    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_b

    :try_start_1
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    :cond_9
    :try_start_2
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: FileNotFoundException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    :cond_b
    :try_start_4
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_e

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: IOException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_4

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    :cond_e
    :try_start_6
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_11

    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_10

    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_10
    const/4 v1, 0x0

    :cond_11
    throw v4
.end method

.method releaseCpuDvfsLock(I)I
    .locals 3

    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/MarvellFALImpl;->nativeReleaseDVFSLock(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_max_limit"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_min_limit"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4

    const-string v2, "jf"

    sget-object v3, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "exynos4"

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherDVFSLocks(Ljava/lang/String;)V

    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "Before Removing ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->removeLock(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "After Removing ----------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    :cond_1
    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  frequency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMinOfMaxLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v7, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    :cond_4
    :goto_1
    iget-object v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    :cond_5
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCpuDvfsLock(I)I

    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1

    :cond_7
    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMaxOfMinLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v6, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1

    :cond_9
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCpuDvfsLock(I)I

    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1
.end method

.method public releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "GPU before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "GPU after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_1
    if-nez v1, :cond_5

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    if-eqz v1, :cond_4

    :try_start_1
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_3
    const/4 v1, 0x0

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_5
    const/16 v4, 0x9

    if-ne p1, v4, :cond_d

    :try_start_2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU Max request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_b

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU_MAX, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    :try_start_3
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_9
    :goto_2
    const/4 v1, 0x0

    :cond_a
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :cond_b
    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: FileNotFoundException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_a

    :try_start_6
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_d
    const/4 v4, 0x1

    if-ne p1, v4, :cond_8

    :try_start_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_10

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_a

    :try_start_9
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :cond_10
    :try_start_a
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    if-eqz v1, :cond_13

    :try_start_b
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_12

    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    const/4 v1, 0x0

    :cond_13
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public releasePersistentDVFSLock(ILjava/lang/String;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_0

    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callingId : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    const-string v3, "CustomFrequencyManagerService"

    const-string v5, "releasePersistentDVFSLock : there is no persistentDVFSLock to release"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock under-locked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :try_start_4
    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : this callingId already released PersistentDVFSLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "System Bus before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "System Bus after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_1
    if-nez v1, :cond_5

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    if-eqz v1, :cond_4

    :try_start_1
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_3
    const/4 v1, 0x0

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_5
    const/16 v4, 0xa

    if-ne p1, v4, :cond_d

    :try_start_2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_b

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    :try_start_3
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_9
    :goto_2
    const/4 v1, 0x0

    :cond_a
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :cond_b
    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Min to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_a

    :try_start_6
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_d
    :try_start_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Current Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    if-eqz v2, :cond_10

    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_a

    :try_start_9
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :cond_10
    :try_start_a
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Max to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    if-eqz v1, :cond_13

    :try_start_b
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_12

    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    const/4 v1, 0x0

    :cond_13
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11

    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v1, :cond_1

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "Boost will be skipped until boot complete."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/SSRMUtil;->isStabilityTestCondition()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Core # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkCPUCoreRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_e

    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-gez v9, :cond_a

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "CPU Core before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "CPU Core after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_5
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_9

    :cond_7
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_2
    :try_start_2
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_a
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_b
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_9

    :cond_c
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x9

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CPUCore value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public requestCPUUpdate(II)V
    .locals 12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "core "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CustomFrequencyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestCPUUpdate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    move-object v5, v6

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v3

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_4

    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    if-eqz v5, :cond_2

    :try_start_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_3

    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v7, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    :cond_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_6
    :goto_6
    throw v9

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v4

    goto :goto_3

    :catch_7
    move-exception v4

    goto :goto_3

    :catchall_1
    move-exception v9

    move-object v5, v6

    goto :goto_5

    :catch_8
    move-exception v2

    move-object v5, v6

    goto :goto_4

    :catch_9
    move-exception v3

    move-object v5, v6

    goto :goto_2
.end method

.method public requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    if-nez v1, :cond_2

    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_d

    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-gez v9, :cond_9

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "GPU before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "GPU after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_6
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_b

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_2
    :try_start_2
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: FileNotFoundException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_a
    :try_start_5
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    :try_start_7
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    goto :goto_2

    :cond_c
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :cond_d
    :try_start_8
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: GPU Frequency value is not in the permitted range. frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate:: fpsLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x3

    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v8

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    if-gez v8, :cond_8

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "Dynamic FPS before adding----------"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "Dynamic FPS after adding----------"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_3
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, index not found, new req added in list"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v3, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v3, :cond_7

    :cond_5
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, Going to change max FPS."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v1}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    :cond_7
    monitor-exit v9

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, request already in list"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 3

    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/block/mmcblk0/bkops_en"

    const-string v2, "128"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .locals 9

    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update the Nw paramter in the MPDecision command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    move-object v5, p1

    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "/dev/socket/mpdecision"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_4

    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_4
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in requestMpParameterUpdate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v6

    if-eqz v4, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_2
    throw v6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Frequency # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/16 v1, 0xb

    if-eq p1, v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    if-nez v1, :cond_2

    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_f

    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-gez v9, :cond_b

    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "System Bus before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "System Bus after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_6
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_c

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_a

    :cond_8
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Min value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_2
    :try_start_2
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_b
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_c
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_a

    :cond_d
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Max value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x6

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "requestSysBus value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreLCDFrameRate:: package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x3

    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "Dynamic FPS before removing----------"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_1
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6, p1, v4, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v0

    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "Dynamic FPS after removing----------"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    :cond_2
    if-nez v0, :cond_4

    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, request not found, returning null"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v7

    :goto_0
    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v0, v6, :cond_7

    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, Current Sys Bus request has asked for release"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxFpsRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    if-eqz v1, :cond_9

    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreLCDFrameRate, there is a pending request in list, modifying with value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v6}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-eqz v3, :cond_8

    const/4 v6, 0x0

    invoke-interface {v3, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_8
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_9
    const/16 v6, 0x63

    :try_start_1
    invoke-static {v6}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, No Pending requests, reverting System Bus Max to default"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public restoreMMCBurstRate(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/block/mmcblk0/bkops_en"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;

    invoke-direct {v1, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
