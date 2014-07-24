.class public Lcom/android/server/ssrm/Limiter;
.super Ljava/lang/Object;
.source "Limiter.java"


# static fields
.field private static final SYSFS_CHARGING_CURRENT:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_level"

.field private static TAG:Ljava/lang/String;

.field public static mArmFreqTable:[I

.field public static mCurLimitCPUFreq:I

.field public static mCurLimitGPUFreq:I

.field private static mCurrentChargingPercent:I

.field private static mCurrentDynamicFpsLevel:I

.field public static mGpuFreqTable:[I


# instance fields
.field private final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String;

.field private final SYSFS_IPA_CONTROL_TEMP:Ljava/lang/String;

.field private final SYSFS_IPA_HOTPULUG_OUT_TH:Ljava/lang/String;

.field private final mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

.field private final mArmCoreNumTable:[I

.field private final mArmFreqMaxHelper:Landroid/os/DVFSHelper;

.field mContext:Landroid/content/Context;

.field private mCurrentIpaHotPlugOutThreshold:I

.field private mCurrentIpaTemperature:I

.field mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

.field mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

.field final mIntentSendSIOPLevel:Landroid/content/Intent;

.field private mLastCameraFlash:Z

.field private mLastCameraRecording:Z

.field private mLastCameraRecordingFps:Z

.field private mLastCameraStart:Z

.field private mLastSmartBonding:Z

.field private mLimitCameraFlash:Z

.field private mLimitCameraRecording:Z

.field private mLimitCameraRecordingFps:Z

.field private mLimitCameraStart:Z

.field private mLimitSmartBonding:Z

.field mPreviousSiopLevel:I

.field private final mSiopLevelChangedIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "SSRMv2:SIOP:Limiter"

    sput-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    const/16 v0, 0x63

    sput v0, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    sput v1, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    sput v1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x11

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    const-string v0, "/sys/power/ipa/control_temp"

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->SYSFS_IPA_CONTROL_TEMP:Ljava/lang/String;

    const/16 v0, 0x34

    iput v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaTemperature:I

    const-string v0, "/sys/power/ipa/hotplug_out_threshold"

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->SYSFS_IPA_HOTPULUG_OUT_TH:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaHotPlugOutThreshold:I

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraStart:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecordingFps:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    const-string v0, "android.intent.action.SIOP_LEVEL_CHANGED"

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/Limiter;->mPreviousSiopLevel:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_ARM_MAX"

    const/16 v3, 0xd

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_CORE_NUM_MAX"

    const/16 v3, 0xf

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GPU_FREQ_MAX"

    move v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GPU_FREQ_MAX"

    move v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    return-void
.end method

.method public static limitChargingCurrent(I)V
    .locals 4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitChargingCurrent:: percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    :cond_0
    const/16 p0, 0x64

    :cond_1
    sget v0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    if-ne p0, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    sput p0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/siop_level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDynamicFpsLevel(I)V
    .locals 6

    sget v3, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    if-ne v3, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDynamicFpsLevel:: level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-eq p0, v3, :cond_2

    const/16 v3, 0x63

    if-le p0, v3, :cond_4

    :cond_2
    const/16 p0, 0x63

    :cond_3
    :goto_1
    sput p0, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3fe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v4, "setDynamicFpsLevel:: failed: SurfaceFlinger is dead!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-gez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public ControlIPATemperature(I)V
    .locals 4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlIPATemperature:: controlTemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaTemperature:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaTemperature:I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/power/ipa/control_temp"

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

.method public broadcastSiopChangedIntent()V
    .locals 8

    const-string v3, "flash_led_disable"

    const-string v2, "camera_start_disable"

    const-string v0, "camera_recording_disable"

    const-string v1, "camera_recording_low_fps_enable"

    const-string/jumbo v4, "smart_bonding_disable"

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraStart:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecordingFps:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    if-ne v5, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraStart:Z

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecordingFps:Z

    sget-object v5, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastSiopChangedIntent:: FLASH = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CAMERA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RECORDING = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RECORDING_FPS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SMARTBONDING = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v6, "flash_led_disable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v6, "camera_start_disable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v6, "camera_recording_disable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v6, "camera_recording_low_fps_enable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string/jumbo v6, "smart_bonding_disable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public broadcastSiopLevelIntent(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/ssrm/Limiter;->mPreviousSiopLevel:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    const-string/jumbo v1, "siop_level_broadcast"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public isAvailableGpuFreq(I)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    if-eq v1, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final limitArmCoreNum(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0
.end method

.method public limitArmMaxFreq(I)V
    .locals 4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :goto_1
    sput p1, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2, p1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1
.end method

.method public limitCameraRecordingFps(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCameraFps:: limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    return-void
.end method

.method public limitCameraStart(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCameraStart:: limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    return-void
.end method

.method public limitFlashLed(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitFlashLed:: bLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    return-void
.end method

.method public limitGPUFreq(I)V
    .locals 4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Limiter;->isAvailableGpuFreq(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitGPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :goto_1
    sput p1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1
.end method

.method public limitGPUFreqForGame(I)V
    .locals 4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Limiter;->isAvailableGpuFreq(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitGPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0
.end method

.method public limitRecording(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitRecording:: recordingStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    return-void
.end method

.method public limitSmartBonding(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitSmartBonding:: limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingModeLimitPerformance()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    goto :goto_0
.end method

.method public rewriteChargingCurrent()V
    .locals 4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/siop_level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIPAHotPlugOutThreshold(I)V
    .locals 4

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIPAHotPlugOutThreshold:: threshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaHotPlugOutThreshold:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaHotPlugOutThreshold:I

    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/power/ipa/hotplug_out_threshold"

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

.method public setResetBatteryCharging(Z)V
    .locals 6

    const-string v0, "/sys/class/power_supply/battery/batt_slate_mode"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/power_supply/battery/batt_slate_mode"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_2

    :try_start_1
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Going to disable battery charging"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_1
    move-object v2, v3

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_3
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Going to enable battery charging"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_3
    :try_start_4
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Exception in opening the file /sys/class/power_supply/battery/batt_slate_mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_5
    :try_start_6
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Exception in creating the FileOutputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v4

    :goto_6
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_3
    :goto_7
    throw v4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_3
.end method
