.class public Lcom/android/server/power/FakeShutdown;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/FakeShutdown$SysSetting;,
        Lcom/android/server/power/FakeShutdown$Radio;
    }
.end annotation


# static fields
.field public static final ACTION_FAKE_SHUTDOWN:Ljava/lang/String; = "com.android.server.power.FakeShutdown"

.field private static final AIRPLANE_MODE_OFF:I = 0x0

.field private static final AIRPLANE_MODE_ON:I = 0x1

.field private static final ANDROID_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final AUTO_POWER_OFF_SOUND:Ljava/lang/String; = "//system/media/audio/ui/AutoPoweroff.ogg"

.field public static final BLACK_BLANK_ACTIVITY:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_FAKE_SHUTDOWN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON:I = 0x1

.field private static final CAMERA_APP_NAME:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final CAMERA_COMPONENT_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field private static final CPU_BOOSTING_TIMEOUT:I = 0xbb8

.field public static final DOWN_LOWLV:I = 0x2

.field public static final DOWN_START:I = 0x1

.field public static final NOTHING:I = 0x0

.field private static final PHONE_OFF_TIMEOUT:I = 0xa

.field private static final SETTING_DONT_CARE:I = -0x1

.field private static final SETTING_DONT_CARE_STRING:Ljava/lang/String; = "DONT CARE"

.field private static final SYS_PROP_FAKESTATE:Ljava/lang/String; = "sys.fakeShutdown.state"

.field private static final SYS_SETTING_OLD_AIRPLANE:Ljava/lang/String; = "oldAirplaneStatus"

.field private static final SYS_SETTING_OLD_LOCK_SOUND:Ljava/lang/String; = "oldLockScreenSoundStatus"

.field private static final SYS_SETTING_OLD_PEN_DETACHEMENT_OPTION:Ljava/lang/String; = "oldSPenDetatchmentOption"

.field private static final SYS_SETTING_OLD_PEN_NOTIFICATION:Ljava/lang/String; = "oldSPenNotification"

.field private static final TAG:Ljava/lang/String; = "FakeShutdown"

.field public static final UP_START:I = 0x3

.field private static final VIBE_NOWAIT:Z = false

.field private static final VIBE_WAIT:Z = true

.field private static final WARMBOOT_ANIM_PATH:Ljava/lang/String; = "/system/media/warmboot.qmg"

.field private static mAutoPowerOff:Z

.field private static mContext:Landroid/content/Context;

.field private static sFakeState:I

.field private static sFakeStateGuard:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/power/FakeShutdown;


# instance fields
.field private activitiesDoneSync:Ljava/lang/Object;

.field private autoPowerOffObserver:Landroid/os/UEventObserver;

.field private dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private mp:Landroid/media/MediaPlayer;

.field private soundThread:Ljava/lang/Thread;

.field private wakeupSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->activitiesDoneSync:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->wakeupSync:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/FakeShutdown$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/FakeShutdown$1;-><init>(Lcom/android/server/power/FakeShutdown;)V

    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    sput-object p1, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    :cond_0
    const-string v0, "AutoPowerOff"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    sput-object p0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/FakeShutdown;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private bookSilentShutdownAfterHours(I)V
    .locals 4

    const-string v2, "FakeShutdown"

    const-string v3, "!@startObserving PMEVENT=AutoPowerOff"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    const-string v3, "PMEVENT=AutoPowerOff"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    mul-int/lit8 v3, p1, 0x3c

    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private boostCpu()V
    .locals 7

    const/4 v0, 0x0

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v2, "AMS_CAMERA_LAUNCH_BOOST"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :goto_0
    if-eqz v0, :cond_0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "FakeShutdown"

    const-string v2, "coreTable is null"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static bootup()Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "FakeShutdown"

    const-string v1, "!@beginFastboot FAKE_STATE = UP_START"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    sput v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    invoke-virtual {v0}, Lcom/android/server/power/FakeShutdown;->startBootup()V

    const-string v0, "FakeShutdown"

    const-string v1, "!@FAKE_STATE = NOTHING"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    const-string/jumbo v0, "sys.fakeShutdown.state"

    const-string v2, "power_on"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->cancelHandler()V

    sput-object v4, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    sput-object v4, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    const-string v0, "FakeShutdown"

    const-string v2, "!@+++++++ duplicate fake bootup ++++++"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private cancelSilentShutdown()V
    .locals 4

    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    invoke-virtual {v2}, Landroid/os/UEventObserver;->stopObserving()V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private checkCameraMode()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.factory"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    const-string v5, "di_test_prefs"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "camera_auto_start_key"

    const-string v6, "ON"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ON"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "FakeShutdown"

    const-string v6, "checkCameraMode error"

    invoke-static {v5, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "FakeShutdown"

    const-string v6, "checkCameraMode error"

    invoke-static {v5, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public static fakeState()I
    .locals 1

    sget v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    return v0
.end method

.method private forceStopPackages()V
    .locals 10

    const-string v7, "FakeShutdown"

    const-string v8, "!@killRunningActivities"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v7, 0x64

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const-string v0, "android"

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_0

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v7, :cond_0

    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    iget-boolean v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    if-nez v7, :cond_1

    const-string v7, "android"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "FakeShutdown"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "topActivityName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v7, "FakeShutdown"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "skip force stop package :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "FakeShutdown"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "topActivityName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string v7, "FakeShutdown"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "baseActivityName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private makeFrontAppIntent(Z)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v2, "FakeShutdown"

    const-string v3, "!@launch camera"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.camera"

    const-string v3, "com.sec.android.app.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "from-am"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "FakeShutdown"

    const-string v3, "!@launch home"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private pauseAllActivities()V
    .locals 4

    const-string v2, "FakeShutdown"

    const-string v3, "!@am.goingToSleep"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x2710

    :try_start_0
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->fakeShutdown(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private playAutoPowerOffSound()V
    .locals 1

    sget-boolean v0, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private powerManagerFakeShutdown()V
    .locals 4

    const-string v2, "FakeShutdown"

    const-string v3, "!@powerManagerService.forceDisableWakeLock"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private prepareAutoPowerOffSound()V
    .locals 9

    const/4 v8, 0x1

    new-instance v2, Ljava/io/File;

    const-string v6, "//system/media/audio/ui/AutoPoweroff.ogg"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-gez v5, :cond_1

    const-string v6, "FakeShutdown"

    const-string v7, "!@Volume is not enough"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v6, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_1
    move-object v3, v4

    :cond_3
    :goto_2
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/power/FakeShutdown$2;

    invoke-direct {v7, p0}, Lcom/android/server/power/FakeShutdown$2;-><init>(Lcom/android/server/power/FakeShutdown;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    :try_start_3
    const-string v6, "FakeShutdown"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v6, "FakeShutdown"

    const-string/jumbo v7, "sound file.close"

    :goto_4
    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_5
    :try_start_5
    const-string v6, "FakeShutdown"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    const-string v6, "FakeShutdown"

    const-string/jumbo v7, "sound file.close"

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_6
    :try_start_7
    const-string v6, "FakeShutdown"

    const-string v7, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    :catch_5
    move-exception v1

    const-string v6, "FakeShutdown"

    const-string/jumbo v7, "sound file.close"

    goto :goto_4

    :catchall_0
    move-exception v6

    :goto_7
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_4
    :goto_8
    throw v6

    :catch_6
    move-exception v1

    const-string v7, "FakeShutdown"

    const-string/jumbo v8, "sound file.close"

    invoke-static {v7, v8, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_8

    :catch_7
    move-exception v1

    const-string v6, "FakeShutdown"

    const-string/jumbo v7, "sound file.close"

    invoke-static {v6, v7, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_7

    :catch_8
    move-exception v1

    move-object v3, v4

    goto :goto_6

    :catch_9
    move-exception v1

    move-object v3, v4

    goto :goto_5

    :catch_a
    move-exception v1

    move-object v3, v4

    goto :goto_3
.end method

.method private removeRecentTask()V
    .locals 12

    const-string v9, "FakeShutdown"

    const-string v10, "!@RemoveRecentTasks"

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v9, 0x14

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_0

    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "FakeShutdown"

    const-string v10, "Don\'t remove homeActivity"

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v9, "android"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "FakeShutdown"

    const-string v10, "Don\'t remove camera activity"

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v9, "FakeShutdown"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoveRecentTasks +"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static restoreSuddenShutdown(Landroid/content/Context;)I
    .locals 4

    const/4 v3, -0x1

    const-string v1, "FakeShutdown"

    const-string v2, "!@restoreAirplaneMode"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oldAirplaneStatus"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-static {p0, v0}, Lcom/android/server/power/FakeShutdown$Radio;->changeAirplaneMode(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oldAirplaneStatus"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-static {p0}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreAll(Landroid/content/Context;)V

    return v0
.end method

.method public static shutdown(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .locals 3

    const-string v0, "FakeShutdown"

    const-string v1, "!@beginFakeShutdown, FAKE_STATE = DOWN_START"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    const-string/jumbo v0, "sys.fakeShutdown.state"

    const-string v2, "power_off"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/server/power/FakeShutdown;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/power/FakeShutdown;-><init>(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    sget-object v0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "FakeShutdown"

    const-string v1, "!@FAKE_STATE = DOWN_LOWLV"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_1
    sput v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private startBlackBlankTopActivity()V
    .locals 3

    const-string v1, "FakeShutdown"

    const-string v2, "create fakeActivity"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_FAKE_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fake"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private vibrate(IZ)V
    .locals 3

    if-gez p1, :cond_1

    const-string v1, "FakeShutdown"

    const-string v2, "!@vibe time under 0"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate(J)V

    if-eqz p2, :cond_0

    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private waitForAnimStart(Lcom/android/server/power/ShutdownDialog;)V
    .locals 4

    const-string v2, "FakeShutdown"

    const-string v3, "!@start wait for shutdown anim, maximum 2 sec"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/power/ShutdownDialog;->drawState()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    :cond_0
    const-string v2, "FakeShutdown"

    const-string v3, "!@finish wait for shutdown anim"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FakeShutdown"

    const-string/jumbo v3, "waitForAnimStart sleep error"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitForCamera()V
    .locals 8

    sget-object v6, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0xc

    if-ge v1, v6, :cond_0

    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "FakeShutdown"

    const-string v7, "!@camera started"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    const-string v6, "FakeShutdown"

    const-string v7, "!@fail to launch camera"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v6, "FakeShutdown"

    const-string v7, "!@not yet"

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/FakeShutdown;->startShutdown()V

    return-void
.end method

.method public startBootup()V
    .locals 8

    const/4 v7, 0x0

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v4, v5}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/power/FakeShutdown$SysSetting;->prepareFakeShutdown(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->boostCpu()V

    const/16 v5, 0x1f4

    invoke-direct {p0, v5, v7}, Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V

    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.server.power.FakeShutdown"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->wakingUp()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/power/FakeShutdown;->makeFrontAppIntent(Z)Landroid/content/Intent;

    move-result-object v3

    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/power/FakeShutdown$Radio;->on(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    :cond_0
    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v5, :cond_1

    const-string v5, "FakeShutdown"

    const-string v6, "!@anim dlg cancel"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->cancel()V

    :cond_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->releaseWakeLocks()V

    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreAll(Landroid/content/Context;)V

    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v5, "shutdown"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->cancelSilentShutdown()V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "FakeShutdown"

    const-string v6, "!@is service dead?"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1
.end method

.method public startShutdown()V
    .locals 3

    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupAll(Landroid/content/Context;)V

    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->prepareFakeShutdown(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0, v0}, Lcom/android/server/power/FakeShutdown;->waitForAnimStart(Lcom/android/server/power/ShutdownDialog;)V

    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/FakeShutdown$Radio;->off(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    const/16 v0, 0x1f4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V

    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.power.FakeShutdown"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v0, 0x960

    invoke-direct {p0, v0}, Lcom/android/server/power/FakeShutdown;->bookSilentShutdownAfterHours(I)V

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->stopState()V

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->enableShutdownAgain()V

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->powerManagerFakeShutdown()V

    const-string v0, "FakeShutdown"

    const-string v1, "!@shutdown finished"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
