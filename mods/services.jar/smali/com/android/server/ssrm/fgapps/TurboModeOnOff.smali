.class public Lcom/android/server/ssrm/fgapps/TurboModeOnOff;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TurboModeOnOff.java"


# static fields
.field private static final FUSION_8064_TURBO_MODE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsForeground:Z

.field private mLastTurboMode:Z

.field private mListScrollBoost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SSRMv2:TurboModeOnOff"

    sput-object v0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.samsung.everglades.video"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method private calculateCurrentMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateTurboMode()V
    .locals 4

    const-string v1, "jf"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->calculateCurrentMode()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onFgAppInPackageList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->updateTurboMode()V

    return-void
.end method

.method public declared-synchronized onListScrollBoost(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->updateTurboMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
