.class public Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "ScreenMirroringBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field public static final STATUS_SCREEN_MIRRORING:Ljava/lang/String; = "ScreenMirroring_enable"

.field public static final STATUS_SECURE_PLAYBACK:Ljava/lang/String; = "SecurePlayback_play"

.field private static TAG:Ljava/lang/String;

.field private static mExceptionEnabled:Z

.field private static mScreenMirroring:Z

.field private static mSecurePlayBack:Z


# instance fields
.field private mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

.field private mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

.field private mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

.field mIsSetDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "SSRMv2:ScreenMirroringBooster"

    sput-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    sput-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    return-void
.end method

.method private sendSIOPExceptionIntent(Z)V
    .locals 4

    sget-boolean v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean p1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSIOPExceptionIntent:: mExceptionEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "ScreenMirroringBooster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SSRM_STATUS_VALUE"

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mExceptionEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "PackageName"

    sget-object v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 12

    const-wide/16 v10, 0x2

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mIsSetDefault:Z

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_1_0G"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    const v6, 0xf4240

    invoke-virtual {v2, v6}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_1_2G"

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_7

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mContext:Landroid/content/Context;

    const-string v2, "SCREEN_MIRROR_BOOSTER_CORE"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v0, :cond_a

    :cond_6
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    sget-object v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStatus:: mSecurePlayBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenMirroring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_9

    :cond_8
    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_c

    :cond_9
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor10G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    aget v0, v0, v8

    const/4 v1, 0x2

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    :cond_c
    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmFreqMinHelperFor12G:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->sendSIOPExceptionIntent(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "SecurePlayback_play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean p2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mSecurePlayBack:Z

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->updateStatus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ScreenMirroring_enable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean p2, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->mScreenMirroring:Z

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;->updateStatus()V

    goto :goto_0
.end method
