.class public Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;
.super Ljava/lang/Object;
.source "SensoryUDTSIDEngineWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensoryUDTSIDEngineWrapper"

.field private static uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
    .locals 3

    const-class v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-nez v0, :cond_1

    const-string v0, "SensoryUDTSIDEngineWrapper"

    const-string v2, "getInstance() : make new SensoryUDTSIDEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->init()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-direct {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;-><init>()V

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    :cond_0
    :goto_0
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "SensoryUDTSIDEngineWrapper"

    const-string v2, "getInstance() : get existed SensoryUDTSIDEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
