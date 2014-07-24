.class public abstract Lcom/android/server/ssrm/fgapps/FgAppListener;
.super Ljava/lang/Object;
.source "FgAppListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;,
        Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
    }
.end annotation


# static fields
.field public static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field public static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field public static final SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String; = "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

.field public static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field static mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

.field static mSettingInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;


# instance fields
.field private mBootComplete:Z

.field private mForegroundPackageName:Ljava/lang/String;

.field private mIsFgAppInPackageList:Z

.field mIsRegistered:Z

.field private mMultiWindowOn:Z

.field protected final mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
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

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    new-instance v0, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    new-instance v0, Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mSettingInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$SettingInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    const-string v0, "com.sec.android.app.launcher"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    return-void
.end method

.method protected static fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/FgAppListener;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->setRegister()V

    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener;

    return-object v1
.end method

.method public static getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/FgAppListener;

    return-object v0
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onFgAppChangedImpl(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onBrowserDashModeForAll(Z)V
    .locals 4

    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onBrowserDashMode(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onFgAppChangedImpl(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    sget-object v1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    instance-of v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    invoke-interface {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppChanged()V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    move-object v1, p0

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppInPackageList(Z)V

    goto :goto_0
.end method

.method public static onReceiveForAll(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0, p1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onSIPVisibilityChangedForAll(Z)V
    .locals 4

    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mSIPVisible:Z

    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;

    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;->onSipVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onUsbConnectionStatusChangedForAll(Z)V
    .locals 4

    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iget-boolean v3, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    if-ne v3, p0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->mScenarioInfo:Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;

    iput-boolean p0, v3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScenarioInfo;->mUsbConnected:Z

    sget-object v3, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;

    invoke-interface {v2, p0}, Lcom/android/server/ssrm/fgapps/FgAppListener$UsbConnectionCallback;->onUsbConnectionStatusChanged(Z)V

    goto :goto_0
.end method

.method public static register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/fgapps/FgAppListener;->instances:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->setRegister()V

    :cond_0
    return-void
.end method

.method protected static writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v3, "Monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v3

    :catch_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v3

    move-object v1, v2

    goto :goto_4
.end method


# virtual methods
.method protected addPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected clearPackages()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method protected getForegroundPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected isBootComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    return v0
.end method

.method protected isMultiWindowActivated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    return v0
.end method

.method protected isPackageExist(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    return v0
.end method

.method protected onBrowserDashMode(Z)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 9

    const/4 v8, 0x0

    const-string v0, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    const-string v1, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p1, Lcom/android/server/ssrm/fgapps/FgAppListener;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;

    iget-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mMultiWindowOn:Z

    invoke-interface {p3, v7}, Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;->onMultiWindowStatusChanged(Z)V

    goto :goto_0

    :cond_2
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mBootComplete:Z

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;

    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;->onBootComplete()V

    goto :goto_0

    :cond_3
    const-string v7, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string v7, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "PackageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;

    invoke-interface {p3, v5, v6, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;->onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;->onLockScreenRelease()V

    goto :goto_0

    :cond_6
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "keyguard"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-nez v7, :cond_7

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    if-eqz v7, :cond_7

    move-object v7, p3

    check-cast v7, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;

    invoke-interface {v7}, Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;->onLockScreenRelease()V

    :cond_7
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;

    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;->onScreenOn()V

    goto/16 :goto_0

    :cond_8
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;

    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;->onScreenOff()V

    goto/16 :goto_0

    :cond_9
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;

    invoke-interface {p3, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener$BatteryChangedCallback;->onBatteryChange(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;

    invoke-interface {p3, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener$TimeChangedCallback;->onTimeChange(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v7, "com.sec.android.intent.action.EMERGENCY_MODE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;

    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$EmergencyModeCallback;->onEmergencyModeChanged()V

    goto/16 :goto_0

    :cond_d
    const-string v7, "com.sec.android.intent.action.ULTRA_POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;

    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$UltraPowerSavingModeCallback;->onUltraPowerSavingModeChanged()V

    goto/16 :goto_0

    :cond_e
    const-string v7, "com.sec.android.intent.action.POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, p3, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;

    if-eqz v7, :cond_0

    check-cast p3, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;

    invoke-interface {p3}, Lcom/android/server/ssrm/fgapps/FgAppListener$PowerSavingModeCallback;->onPowerSavingModeChanged()V

    goto/16 :goto_0
.end method

.method readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setRegister()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsRegistered:Z

    return-void
.end method

.method protected updateForegroundPackageStatus()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    invoke-interface {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppChanged()V

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mPackagesMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    move-object v1, p0

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/FgAppListener;->mIsFgAppInPackageList:Z

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;->onFgAppInPackageList(Z)V

    goto :goto_0
.end method
