.class public Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "PowerSavingModeFpsChange.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SSRMv2:PowerSavingModeFpsChange"


# instance fields
.field m59FpsMaxHelper:Landroid/os/DVFSHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    const-string v0, "com.samsung.everglades.video"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBootComplete()V
    .locals 6

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->mContext:Landroid/content/Context;

    const-string v2, "PSM_FPS_MAX_59"

    const/16 v3, 0x15

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->m59FpsMaxHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->m59FpsMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "FPS"

    const-wide/16 v2, 0x62

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    return-void
.end method

.method public onFgAppChanged()V
    .locals 0

    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->m59FpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/PowerSavingModeFpsChange;->m59FpsMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0
.end method
