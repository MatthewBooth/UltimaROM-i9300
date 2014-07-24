.class public final Lcom/android/server/ssrm/fgapps/LowBatteryMode;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "LowBatteryMode.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field mBatteryLevel:I

.field mCpuMaxFrequency:I

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mFisrtLowBatteryStepCpuMaxLimit:I

.field mFisrtLowBatteryStepLevel:I

.field mIsCameraPackage:Z

.field mSecondLowBatteryStepCpuMaxLimit:I

.field mSecondLowBatteryStepLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SSRMv2:LowBatteryMode"

    sput-object v0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I

    const v0, 0x19f0a0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    const v0, 0x16e360

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mIsCameraPackage:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->initLowBatteryModeParameters()V

    return-void
.end method


# virtual methods
.method changeLowBatteryModeParameters()V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/ssrm_v2.low_battery_mode"

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

    if-eqz v2, :cond_6

    const-string v3, "1st_low_batt_step"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I
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
    return-void

    :cond_2
    :try_start_3
    const-string v3, "2nd_low_batt_step"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I
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
    const-string v3, "1st_low_batt_cpu_max"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    goto :goto_0

    :cond_5
    const-string v3, "2nd_low_batt_cpu_max"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_5
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

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

    goto :goto_1
.end method

.method getBatteryLevel()I
    .locals 3

    const-string v1, "dev.ssrm.bat_level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const/16 v1, -0x3e7

    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method initLowBatteryModeParameters()V
    .locals 2

    const v1, 0x155cc0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/ssrm_v2.low_battery_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->changeLowBatteryModeParameters()V

    :cond_2
    return-void
.end method

.method public onBatteryChange(Landroid/content/Intent;)V
    .locals 5

    const/4 v3, -0x1

    const-string v2, "level"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->getBatteryLevel()I

    move-result v0

    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_0

    move v1, v0

    :cond_0
    sget-boolean v2, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryTemperature()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    if-eq v2, v3, :cond_1

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    iput v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBatteryChange:: mCurrentBatteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mBatteryLevel:I

    invoke-virtual {p0, v2}, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->updateLowBatteryMode(I)V

    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 6

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mContext:Landroid/content/Context;

    const-string v2, "BATT_CPU_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    return-void
.end method

.method public onFgAppChanged()V
    .locals 0

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method updateLowBatteryMode(I)V
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepLevel:I

    if-gt p1, v1, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mSecondLowBatteryStepCpuMaxLimit:I

    :goto_0
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    sget-object v1, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLowBatteryMode:: curFreq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v2, "CPU"

    iget v3, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxFrequency:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepLevel:I

    if-gt p1, v1, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mFisrtLowBatteryStepCpuMaxLimit:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method
