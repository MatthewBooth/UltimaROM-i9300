.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorSD8974Pro.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ID_ABOVE_HISPEED_DELAY:I

.field final ID_BOOST_MS:I

.field final ID_ENFORCED_MODE:I

.field final ID_GO_HISPEED_LOAD:I

.field final ID_HISPEED_FREQ:I

.field final ID_MIN_SAMPLE_TIME:I

.field final ID_MULTI_ENTER_LOAD:I

.field final ID_MULTI_EXIT_LOAD:I

.field final ID_SAMPLING_DOWN_FACTOR:I

.field final ID_SINGLE_ENTER_LOAD:I

.field final ID_SINGLE_EXIT_LOAD:I

.field final ID_SYNC_THRESHOLD:I

.field final ID_TARGET_LOADS:I

.field final ID_TIMER_RATE:I

.field final MSG_KNOWN_GAME_FOREGROUND:I

.field final TAG:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsFullScreenMode:Z

.field mIsHeavyAppInForeground:Z

.field mIsModeChangeDisableAppInForeground:Z

.field mIsModeChangeDisabled:Z

.field mIsPreloadAppInForeground:Z

.field mIsScreenOffInCall:Z

.field mIsSpecialAppInForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    const-string v0, "SSRMv2:GovernorSD8974Pro"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsHeavyAppInForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsSpecialAppInForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->MSG_KNOWN_GAME_FOREGROUND:I

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    const-string v0, "SSRMv2:GovernorSD8974Pro"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "85 1400000:90 1700000:95"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_TARGET_LOADS:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_ABOVE_HISPEED_DELAY:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1190400"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_HISPEED_FREQ:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_GO_HISPEED_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MIN_SAMPLE_TIME:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_TIMER_RATE:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "100000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SAMPLING_DOWN_FACTOR:I

    const-string v1, "/sys/module/cpu_boost/parameters/sync_threshold"

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const-string v0, "1574400"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_BOOST_MS:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_ENFORCED_MODE:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/multi_enter_load"

    const-string v1, "340"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MULTI_ENTER_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/single_enter_load"

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SINGLE_ENTER_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/multi_exit_load"

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MULTI_EXIT_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/single_exit_load"

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SINGLE_EXIT_LOAD:I

    const-string v0, "636f6d2e696d616e67692e74656d706c6572756e"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e696d616e67692e74656d706c6572756e32"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f667441364850"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f66744137484d"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e726f76696f2e616e6772796269726473"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e616c706861636c6f75642e636173746c656d6173746572"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e676c752e616e64726f69642e67756e62726f735f66726565"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e676c752e67756e62726f7332"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e66616365626f6f6b2e6b6174616e61"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e6b616b616f2e74616c6b"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e7768617473617070"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e747769747465722e616e64726f6964"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "636f6d2e676f6f676c652e616e64726f69642e676d"

    invoke-static {v0}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "dm"

    invoke-static {v0}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro$1;-><init>(Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const-string v0, "1190400"

    goto/16 :goto_0
.end method


# virtual methods
.method public onBrowserDashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method public onFgAppChanged()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsHeavyAppInForeground:Z

    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    invoke-static {v1}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    :cond_1
    const-string v3, "com.android.email"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsSpecialAppInForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method public onScreenOff()V
    .locals 2

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_0
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SSRMv2:GovernorSD8974Pro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_0
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_ENFORCED_MODE:I

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_BOOST_MS:I

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MULTI_ENTER_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SINGLE_ENTER_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MULTI_EXIT_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SINGLE_EXIT_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    const-string v0, "Mode change is stopped."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "652800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "1190400"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "652800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsSpecialAppInForeground:Z

    if-eqz v0, :cond_0

    :cond_9
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "960000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    const-string v0, "Mode change is restarted."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    goto :goto_1
.end method
