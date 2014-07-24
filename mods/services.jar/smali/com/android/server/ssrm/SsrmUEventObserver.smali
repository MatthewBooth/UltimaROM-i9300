.class public Lcom/android/server/ssrm/SsrmUEventObserver;
.super Landroid/os/UEventObserver;
.source "SsrmUEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/SsrmUEventObserver$TmuState;
    }
.end annotation


# static fields
.field private static FEATURE_SLSI_TMU_SW_RESET:Z = false

.field private static final SWITCH_NAME_MATCH:Ljava/lang/String; = "SWITCH_NAME"

.field private static final TAG:Ljava/lang/String; = "SSRMv2:SsrmUEventObserver"

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "TMUSTATE"

.field private static mContext:Landroid/content/Context;

.field private static mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static mUserBinary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/android/server/ssrm/SsrmUEventObserver;->mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

    sput-object v1, Lcom/android/server/ssrm/SsrmUEventObserver;->mContext:Landroid/content/Context;

    sput-boolean v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/android/server/ssrm/SsrmUEventObserver;->FEATURE_SLSI_TMU_SW_RESET:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method private static executeCommand(Ljava/lang/String;)V
    .locals 8

    const-string v5, "SSRMv2:SsrmUEventObserver"

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

    move-result-object v4

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static systemReady(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "SSRMv2:SsrmUEventObserver"

    const-string v3, "Startng SsrmUEventObserver"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/server/ssrm/SsrmUEventObserver;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ssrm/SsrmUEventObserver;

    invoke-direct {v0}, Lcom/android/server/ssrm/SsrmUEventObserver;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0, v0}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v2, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    const-string v0, "SSRMv2:SsrmUEventObserver"

    const-string v3, "This is factory binary!"

    invoke-static {v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-boolean v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/server/ssrm/SSRMUtil;->setFactoryMode(Z)V

    sget-boolean v0, Lcom/android/server/ssrm/SsrmUEventObserver;->FEATURE_SLSI_TMU_SW_RESET:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

    const-string v1, "TMUSTATE"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/server/ssrm/SsrmUEventObserver;->mSsrmUeventObserver:Lcom/android/server/ssrm/SsrmUEventObserver;

    const-string v1, "SWITCH_NAME"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sput-boolean v1, Lcom/android/server/ssrm/SsrmUEventObserver;->mUserBinary:Z

    const-string v0, "SSRMv2:SsrmUEventObserver"

    const-string v3, "This is user binary!"

    invoke-static {v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9

    const/4 v8, -0x1

    const-string v5, "SSRMv2:SsrmUEventObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UEvent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TMUSTATE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eq v5, v8, :cond_1

    :try_start_1
    const-string v5, "SSRMv2:SsrmUEventObserver"

    const-string v6, "TMU_UEVENT_MATCH matched"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "TMUSTATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    const-string v5, "SSRMv2:SsrmUEventObserver"

    const-string v6, "Tmu state Tripping"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ssrm/SsrmUEventObserver;->systemShutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    const-string v5, "SSRMv2:SsrmUEventObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse TMUSTATE from event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SWITCH_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eq v5, v8, :cond_0

    :try_start_4
    const-string v5, "SSRMv2:SsrmUEventObserver"

    const-string v6, "SWITCH_NAME_MATCH matched"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SWITCH_NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "uart3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SSRMv2:SsrmUEventObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "switchState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v5, "SSRMv2:SsrmUEventObserver"

    const-string v6, "at_distributor is stopped by SSRM."

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "stop at_distributor"

    invoke-static {v5}, Lcom/android/server/ssrm/SsrmUEventObserver;->executeCommand(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    :try_start_6
    const-string v5, "SSRMv2:SsrmUEventObserver"

    const-string v6, "at_distributor is restarted by SSRM."

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "start at_distributor"

    invoke-static {v5}, Lcom/android/server/ssrm/SsrmUEventObserver;->executeCommand(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method public final systemShutdown()V
    .locals 3

    const-string v1, "SSRMv2:SsrmUEventObserver"

    const-string/jumbo v2, "systemShutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/ssrm/SsrmUEventObserver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SYSTEM_REQUEST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/ssrm/SsrmUEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
