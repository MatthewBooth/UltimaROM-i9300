.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonisPrime2Helsinki.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ID_EAGLE_ABOVE_HISPEED_DELAY:I

.field final ID_EAGLE_BOOST:I

.field final ID_EAGLE_BOOSTPULSE_DURATION:I

.field final ID_EAGLE_GO_HISPEED_LOAD:I

.field final ID_EAGLE_HISPEED_FREQ:I

.field final ID_EAGLE_MIN_SAMPLE_TIME:I

.field final ID_EAGLE_TARGET_LOADS:I

.field final ID_EAGLE_TIMER_RATE:I

.field final ID_EAGLE_TIMER_SLACK:I

.field final ID_ENFORCED_MODE:I

.field final ID_HMP_UP_THRESHOLD:I

.field final ID_KFC_ABOVE_HISPEED_DELAY:I

.field final ID_KFC_BOOST:I

.field final ID_KFC_BOOSTPULSE_DURATION:I

.field final ID_KFC_GO_HISPEED_LOAD:I

.field final ID_KFC_HISPEED_FREQ:I

.field final ID_KFC_MIN_SAMPLE_TIME:I

.field final ID_KFC_TARGET_LOADS:I

.field final ID_KFC_TIMER_RATE:I

.field final ID_KFC_TIMER_SLACK:I

.field final ID_LOAD_AVG_PERIOD_MS:I

.field final ID_MULTI_ENTER_LOAD:I

.field final ID_MULTI_EXIT_LOAD:I

.field final ID_SINGLE_ENTER_LOAD:I

.field final ID_SINGLE_EXIT_LOAD:I

.field final MSG_KNOWN_GAME_FOREGROUND:I

.field final TAG:Ljava/lang/String;

.field mCameraRecordingDualOn:Z

.field mCameraRecordingOn:Z

.field mHandler:Landroid/os/Handler;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsHangout:Z

.field mIsHangoutVtCall:Z

.field mIsKnownGameInForeground:Z

.field mIsModeChangeDisabled:Z

.field mIsWhiteListApp:Z

.field mListTargetApp:[Ljava/lang/String;

.field mSIPVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    const-string v0, "SSRMv2:GovernorAdonisPrime2Helsinki"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    iput v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->MSG_KNOWN_GAME_FOREGROUND:I

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "636f6d2e66616365626f6f6b2e6b6174616e61"

    invoke-static {v1}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "74656d706c6572756e"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "636173746c656d6173746572"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "636f6d2e65612e67616d65732e72335f726f77"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "457069634369746164656c"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "616e6772796269726473"

    invoke-static {v2}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mListTargetApp:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangoutVtCall:Z

    const-string v0, "SSRMv2:GovernorAdonisPrime2Helsinki"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TIMER_RATE:I

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_slack"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TIMER_SLACK:I

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_MIN_SAMPLE_TIME:I

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/hispeed_freq"

    const-string v1, "1000000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_HISPEED_FREQ:I

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads"

    const-string v1, "70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TARGET_LOADS:I

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_GO_HISPEED_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_ABOVE_HISPEED_DELAY:I

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/boost"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_BOOST:I

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/interactive/boostpulse_duration"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_BOOSTPULSE_DURATION:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/timer_rate"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TIMER_RATE:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/timer_slack"

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TIMER_SLACK:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/min_sample_time"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_MIN_SAMPLE_TIME:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/hispeed_freq"

    const-string v1, "1000000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads"

    const-string v1, "75 1500000:80 1700000:85 1800000:90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/go_hispeed_load"

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_GO_HISPEED_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay"

    const-string v1, "19000 1000000:99000 1200000:119000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/boost"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_BOOST:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/boostpulse_duration"

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_BOOSTPULSE_DURATION:I

    const-string v0, "/sys/kernel/hmp/load_avg_period_ms"

    const-string v1, "32"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/enforced_mode"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_ENFORCED_MODE:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/multi_enter_load"

    const-string v1, "360"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_ENTER_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/single_enter_load"

    const-string v1, "95"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_ENTER_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/multi_exit_load"

    const-string v1, "240"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_EXIT_LOAD:I

    const-string v0, "/sys/devices/system/cpu/cpu4/cpufreq/interactive/single_exit_load"

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_EXIT_LOAD:I

    const-string v0, "/sys/kernel/hmp/up_threshold"

    const-string v1, "700"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_HMP_UP_THRESHOLD:I

    const-string v0, "dm"

    invoke-static {v0}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;-><init>(Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onBrowserDashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method public onFgAppChanged()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mListTargetApp:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    :cond_1
    invoke-static {v4}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput v9, v3, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    const-string v7, "636f6d2e676f6f676c652e616e64726f69642e74616c6b"

    invoke-static {v7}, Lcom/android/server/ssrm/HexCoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onHangoutVtCallChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangoutVtCall:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_0
    const-string v0, "Camera_recordingDual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    :cond_1
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_ENFORCED_MODE:I

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangoutVtCall:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_HMP_UP_THRESHOLD:I

    const-string v1, "1024"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_ENTER_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_ENTER_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_EXIT_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_EXIT_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    const-string v0, "Mode change is stopped."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "75 1000000:99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "99000 1200000:399000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TARGET_LOADS:I

    const-string v1, "70 1200000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "99000 1200000:399000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000 1000000:139000 1200000:499000 1500000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    if-eqz v0, :cond_0

    :cond_8
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "95 900000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000 1000000:139000 1200000:499000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    const-string v0, "Mode change is restarted."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
