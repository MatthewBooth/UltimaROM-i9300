.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8974Interactive.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field DEFAULT_BOOST_MS:Ljava/lang/String;

.field DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

.field DEFAULT_HISPEED_FREQ:Ljava/lang/String;

.field DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

.field DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

.field DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

.field DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

.field DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

.field DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

.field DEFAULT_TARGET_LOADS:Ljava/lang/String;

.field DEFAULT_TIMER_RATE:Ljava/lang/String;

.field final MSG_KNOWN_GAME_FOREGROUND:I

.field final PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field final PATH_BOOST_MS:Ljava/lang/String;

.field final PATH_ENFORCED_MODE:Ljava/lang/String;

.field final PATH_GO_HISPEED_LOAD:Ljava/lang/String;

.field final PATH_HISPEED_FREQ:Ljava/lang/String;

.field final PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

.field final PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

.field final PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

.field final PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field final PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

.field final PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

.field final PATH_SYNC_THRESHOLD:Ljava/lang/String;

.field final PATH_TARGET_LOADS:Ljava/lang/String;

.field final PATH_TIMER_RATE:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mDisableModeChange:Z

.field mHandler:Landroid/os/Handler;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsFullScreenMode:Z

.field mIsHeavyAppInForeground:Z

.field mIsHighCpuLoadGame:Z

.field mIsPreloadAppInForeground:Z

.field mIsScreenOffInCall:Z

.field mIsSpecialAppInForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ENFORCED_MODE:Ljava/lang/String;

    const-string v1, "/sys/module/cpu_boost/parameters/sync_threshold"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    const-string v1, "/sys/module/cpu_boost/parameters/boost_ms"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/multi_enter_load"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/single_enter_load"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/multi_exit_load"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/single_exit_load"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->MSG_KNOWN_GAME_FOREGROUND:I

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    const-string v1, "636f6d2e696d616e67692e74656d706c6572756e"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f667441364850"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f66744137484d"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e726f76696f2e616e6772796269726473"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e616c706861636c6f75642e636173746c656d6173746572"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e676c752e616e64726f69642e67756e62726f735f66726565"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e676c752e67756e62726f7332"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e66616365626f6f6b2e6b6174616e61"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e6b616b616f2e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e7768617473617070"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e747769747465722e616e64726f6964"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e676d"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/module/cpu_boost/parameters/sync_threshold"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/module/cpu_boost/parameters/boost_ms"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/multi_enter_load"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/single_enter_load"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/multi_exit_load"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    const-string v2, "/sys/devices/system/cpu/cpufreq/interactive/single_exit_load"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dm"

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;-><init>(Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;)V

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "99"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "40000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "85 1400000:90 1700000:95"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    const-string v1, "100000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    const-string v1, "20"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    const-string v1, "340"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    const-string v1, "60"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRMv2:GovernorSD8974Interactive"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SSRMv2:GovernorSD8974Interactive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_BOOST_MS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onBrowserDashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    return-void
.end method

.method public onFgAppChanged()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v8, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v7, v6}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v7, v6}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v4

    const/4 v2, 0x0

    const-string v8, "636f6d2e696d616e67692e74656d706c6572756e32"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "636f6d2e67616d656c6f66742e616e64726f69642e414e4d502e476c6f6674444d484d"

    invoke-static {v8}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    sget-boolean v8, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v6}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    if-eqz v8, :cond_6

    if-nez v3, :cond_4

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateModeChangeParameters()V

    :cond_4
    :goto_1
    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    if-ne v8, v0, :cond_5

    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    if-ne v8, v2, :cond_5

    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-ne v8, v1, :cond_5

    iget-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    if-eq v8, v4, :cond_0

    :cond_5
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_4

    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/4 v8, 0x1

    iput v8, v5, Landroid/os/Message;->what:I

    iget-object v8, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x2710

    invoke-virtual {v8, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    return-void
.end method

.method public onScreenOff()V
    .locals 2

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    :cond_0
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SSRMv2:GovernorSD8974Interactive"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    :cond_0
    return-void
.end method

.method public updateModeChangeParameters()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    if-eqz v0, :cond_0

    const-string v0, "SSRMv2:GovernorSD8974Interactive"

    const-string v1, "Mode change is disabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/multi_enter_load"

    const-string v1, "800"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/single_enter_load"

    const-string v1, "200"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/multi_exit_load"

    const-string v1, "800"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/single_exit_load"

    const-string v1, "200"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SSRMv2:GovernorSD8974Interactive"

    const-string v1, "Mode change is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/multi_enter_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/single_enter_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/multi_exit_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/single_exit_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateParameters()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateSyncThresholdParametersForAll()V

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParametersForTablet()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParametersForDefault()V

    goto :goto_0
.end method

.method public updateParametersForDefault()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_0

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1497600"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "60 800000:65 1400000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_1

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1497600"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "60 800000:65 1400000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-eqz v0, :cond_2

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateParametersForTablet()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_0

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_1

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/enforced_mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_2

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-eqz v0, :cond_3

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/hispeed_freq"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/min_sample_time"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/target_loads"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/timer_rate"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpufreq/interactive/sampling_down_factor"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/sys/module/cpu_boost/parameters/boost_ms"

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateSyncThresholdParametersForAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v1, "/sys/module/cpu_boost/parameters/sync_threshold"

    invoke-static {v1, v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "0"

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    if-eqz v1, :cond_5

    const-string v0, "1190400"

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    if-eqz v1, :cond_7

    :cond_6
    const-string v0, "652800"

    goto :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    if-eqz v1, :cond_0

    :cond_8
    const-string v0, "960000"

    goto :goto_0
.end method
