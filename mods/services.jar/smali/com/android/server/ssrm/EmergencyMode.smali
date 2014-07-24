.class Lcom/android/server/ssrm/EmergencyMode;
.super Ljava/lang/Object;
.source "EmergencyMode.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field EmergencyMode:Z

.field final MSG_TYPE_CHECK_EMERGENCY_MODE:I

.field mContext:Landroid/content/Context;

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mEmergencyCheckRunnable:Ljava/lang/Runnable;

.field mFpsMaxHelper:Landroid/os/DVFSHelper;

.field mHandler:Landroid/os/Handler;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SSRMv2:EmergencyMode"

    sput-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14

    const-wide/16 v4, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v10, p0, Lcom/android/server/ssrm/EmergencyMode;->EmergencyMode:Z

    iput v12, p0, Lcom/android/server/ssrm/EmergencyMode;->MSG_TYPE_CHECK_EMERGENCY_MODE:I

    new-instance v0, Lcom/android/server/ssrm/EmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/EmergencyMode$1;-><init>(Lcom/android/server/ssrm/EmergencyMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mEmergencyCheckRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/ssrm/EmergencyMode$2;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/EmergencyMode$2;-><init>(Lcom/android/server/ssrm/EmergencyMode;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    const-string v2, "SSRM_EMERGENCY_MODE"

    const/16 v3, 0xd

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const-wide/32 v10, 0x16da00

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    const-string v2, "PSM_FPS_MAX"

    const/16 v3, 0x15

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "FPS"

    const-wide/16 v4, 0x21

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v4, v13

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    iput v12, v9, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode;->mEmergencyCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const-wide/32 v10, 0x16e360

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v8

    const/4 v6, -0x1

    if-eqz v8, :cond_0

    array-length v0, v8

    if-lez v0, :cond_0

    array-length v0, v8

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_4

    aget v0, v8, v10

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0xa

    aget v1, v8, v7

    if-gt v0, v1, :cond_5

    aget v6, v8, v7

    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    int-to-long v10, v6

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method private static executeCommand(Ljava/lang/String;)V
    .locals 8

    sget-object v5, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executeCommand:: cmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "str = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method onSettingChanged(Z)V
    .locals 3

    sput-boolean p1, Lcom/android/server/ssrm/DeviceStatus;->sEmergencyMode:Z

    if-eqz p1, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stop mpdecision"

    invoke-static {v0}, Lcom/android/server/ssrm/EmergencyMode;->executeCommand(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/online"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu1/online"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu2/online"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu3/online"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "report_rate,2"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "dev.ssrm.report_rate"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/Limiter;->limitSmartBonding(Z)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {v0}, Lcom/android/server/ssrm/Limiter;->broadcastSiopChangedIntent()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.EMERGENCY_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "start mpdecision"

    invoke-static {v0}, Lcom/android/server/ssrm/EmergencyMode;->executeCommand(Ljava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mFpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_5
    iget-object v0, p0, Lcom/android/server/ssrm/EmergencyMode;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    sget-object v0, Lcom/android/server/ssrm/EmergencyMode;->TAG:Ljava/lang/String;

    const-string v1, "report_rate,0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/ssrm/SSRMUtil;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "dev.ssrm.report_rate"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/Limiter;->limitSmartBonding(Z)V

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {v0}, Lcom/android/server/ssrm/Limiter;->broadcastSiopChangedIntent()V

    goto :goto_0
.end method
