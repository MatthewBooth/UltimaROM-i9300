.class public Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "DvfsUpThreshold.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final DVFS_UT_DEFAULT:I

.field private final DVFS_UT_MAX:I

.field private isFullScreenMode:Z

.field private isJaUpthresholdAppFg:Z

.field private mBrowserBenchmarkOn:Z

.field private mCurrentUpThreshold:I

.field mUpThresholdExceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SSRMv2:DvfsUpThreshold"

    sput-object v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x5a

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    iput v2, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->DVFS_UT_DEFAULT:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->DVFS_UT_MAX:I

    iput v2, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v0, "com.alphacloud.castlemaster"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v0, "Gallery"

    const-string v1, "com.sec.android.gallery3d"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VideoPlayer"

    const-string v1, "com.samsung.everglades.video"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Video(hidden)"

    const-string v1, "com.sec.android.app.videoplayer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Camera"

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected calculateCurrentThreshold()I
    .locals 5

    const/16 v2, 0x63

    const/16 v1, 0x5a

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.chrome"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isExceptionPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method isExceptionPackage(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFgAppChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateParameters()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0

    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateParameters()V

    :cond_0
    return-void
.end method

.method public setBrowserBenchmark(Z)V
    .locals 3

    sget-object v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrowserBenchmark:: on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateParameters()V

    return-void
.end method

.method protected updateParameters()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->calculateCurrentThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateThresholdSysFS(I)V

    return-void
.end method

.method protected updateThresholdSysFS(I)V
    .locals 6

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    iget v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    if-eq v3, p1, :cond_0

    sget-object v3, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateThresholdSysFS :: new value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    if-eqz v3, :cond_0

    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
