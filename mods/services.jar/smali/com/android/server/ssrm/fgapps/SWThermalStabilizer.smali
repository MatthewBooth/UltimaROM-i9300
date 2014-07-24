.class public Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SWThermalStabilizer.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field MINIMUM_CPU_MAXLIMIT:I

.field MINIMUM_GPU_MAXLIMIT:I

.field final PST_CHECK_PERIOD:I

.field PST_START_TEMPERATURE:I

.field PST_STOP_TEMPERATURE:I

.field SS_PREODIC_PERIOD:I

.field SS_START_DELAY:I

.field mCPUControl:Z

.field mCPULevel:I

.field mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

.field mCurrentCPUMaxLimtLevel:I

.field mCurrentGPUMaxLimtLevel:I

.field mGPULevel:I

.field mGpuMaxHelper:Landroid/os/DVFSHelper;

.field mHandler:Landroid/os/Handler;

.field mIsFirstControl:Z

.field mPST:I

.field mPSTControlModeEnable:Z

.field mPSTControlStarted:Z

.field mPSTPackageName:Ljava/lang/String;

.field mPeriod:I

.field mSSCpuMaxFreq:I

.field mSSGpuMaxFreq:I

.field mSTSRunnable:Ljava/lang/Runnable;

.field private mScreenMirroring:Z

.field private mSecurePlayBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SSRMv2:SWThermalStabilizer"

    sput-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const v0, 0xea60

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_CHECK_PERIOD:I

    const/16 v0, 0x1ea

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    const v0, 0xdbba0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_GPU_MAXLIMIT:I

    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    iput-object v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPULevel:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGPULevel:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPST:I

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlStarted:Z

    new-instance v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer$1;-><init>(Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    const-string v1, "SWThermalStabilizer"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_v2.sts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeStsInitalValues()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method SSCPUControl(I)V
    .locals 7

    const/4 v6, -0x1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    const-string v2, "SS_CPU_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    :cond_2
    if-ne p1, v6, :cond_3

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iput v6, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iput p1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSCpuMaxFreq:I

    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSCPUControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0
.end method

.method SSGPUControl(I)V
    .locals 6

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    const-string v2, "SS_GPU_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    :cond_1
    iput p1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSSGpuMaxFreq:I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSGPUControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0
.end method

.method SSHeatControl(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->getInitialValues()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    :goto_1
    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSHeatControl :: MAXCPULevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , MAXGPULevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeGPUStep(Z)V

    :cond_5
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    :goto_2
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    if-ne v0, v2, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeGPUStep(Z)V

    :cond_7
    :goto_3
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    if-ne v0, v2, :cond_8

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    :cond_8
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    :cond_9
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCPUControl:Z

    goto :goto_1

    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    goto :goto_3
.end method

.method changeCPUStep(Z)V
    .locals 2

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    goto :goto_0
.end method

.method changeGPUStep(Z)V
    .locals 4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    sget-object v2, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v2, v2

    iget v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_GPU_MAXLIMIT:I

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    sget-object v1, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->changeCPUStep(Z)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    iget v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    goto :goto_0
.end method

.method changeStsInitalValues()V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/ssrm_v2.sts"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v3, "start_delay"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INIT Value change :: SS_START_DELAY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_START_DELAY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , SS_PREODIC_PERIOD = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , PST_START_TEMPERATURE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , PST_STOP_TEMPERATURE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , MINIMUM_CPU_MAXLIMIT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_3
    const-string v3, "periodic_period"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SS_PREODIC_PERIOD:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    throw v3

    :cond_4
    :try_start_5
    const-string/jumbo v3, "start_temperature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_START_TEMPERATURE:I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "stop_temperature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->PST_STOP_TEMPERATURE:I

    goto/16 :goto_0

    :cond_6
    const-string v3, "min_cpu_maxlimit"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->MINIMUM_CPU_MAXLIMIT:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_5
    move-object v0, v1

    goto/16 :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_2

    :catch_2
    move-exception v4

    goto :goto_4

    :catch_3
    move-exception v3

    goto :goto_5

    :catchall_1
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v3

    goto/16 :goto_1
.end method

.method disableSts()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSHeatControl(Z)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method enableSts()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPeriod:I

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSTSRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method getInitialValues()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    sget v0, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    sget v1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    const-string v4, "There is no supported table."

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-ne v0, v5, :cond_4

    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    :cond_2
    if-ne v1, v5, :cond_6

    iput v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    :cond_3
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mIsFirstControl:Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_5

    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    aget v3, v3, v2

    if-ne v1, v3, :cond_7

    iput v2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public onFgAppChanged()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFgAppChanged : RELEASE STS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentCPUMaxLimtLevel:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSCPUControl(I)V

    iput v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mCurrentGPUMaxLimtLevel:I

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->SSGPUControl(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const-string v1, "SecurePlayback_play"

    const-string v0, "ScreenMirroring_enable"

    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStatusNotiReceived:: statusName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statusValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SecurePlayback_play"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS_SECURE_PLAYBACK:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSecurePlayBack:Z

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mSecurePlayBack:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mScreenMirroring:Z

    if-eqz v3, :cond_4

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mPSTControlModeEnable:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    const-string v4, "Sts is disabled by screen mirroring."

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->disableSts()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v3, "ScreenMirroring_enable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS_SCREEN_MIRRORING:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mScreenMirroring:Z

    goto :goto_0

    :cond_4
    const-string v3, "FullScreen"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->enableSts()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;->disableSts()V

    goto :goto_1
.end method
