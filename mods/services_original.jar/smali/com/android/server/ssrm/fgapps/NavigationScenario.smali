.class public Lcom/android/server/ssrm/fgapps/NavigationScenario;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "NavigationScenario.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field public static final SSRM_STATUS_NAME_FOR_NAVI:Ljava/lang/String; = "Navigation_show"


# instance fields
.field final PKG_NAME_GOOGLE_NAVI:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mCpuMaxHelper:Landroid/os/DVFSHelper;

.field mSupportedCpuFreq:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v3, "SSRMv2:NavigationScenario"

    iput-object v3, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->TAG:Ljava/lang/String;

    const-string v3, "com.google.android.apps.maps"

    iput-object v3, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->PKG_NAME_GOOGLE_NAVI:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    iput-object v4, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mSupportedCpuFreq:[I

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    if-eqz v3, :cond_0

    const-string v2, "com.skt.skaf.l001mtm091"

    const-string v0, "kt.navi"

    const-string v1, "com.mnsoft.lgunavi"

    const-string v3, "com.skt.skaf.l001mtm091"

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v3, "kt.navi"

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    const-string v3, "com.mnsoft.lgunavi"

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    :cond_0
    const-string v3, "com.google.android.apps.maps"

    invoke-virtual {p0, v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 8

    const v7, 0x13d620

    const-string v0, "SSRMv2:NavigationScenario"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFgAppInPackageList:: isForeground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/NavigationScenario;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mContext:Landroid/content/Context;

    const-string v2, "NAVI_ARM_CONTROL"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mSupportedCpuFreq:[I

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mSupportedCpuFreq:[I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const v3, 0x927c0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :goto_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SSRM_STATUS_NAME"

    const-string v1, "Navigation_show"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SSRM_STATUS_VALUE"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "PackageName"

    const-string v1, "com.android.server.ssrm"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.android.apps.maps"

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "PID"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    sget-object v0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v7}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v7}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/NavigationScenario;->mCpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_2

    :cond_5
    const-string v0, "PID"

    const/16 v1, 0x100

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3
.end method
