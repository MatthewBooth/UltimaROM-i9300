.class public Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;
.super Ljava/lang/Object;
.source "SensoryEngineWrapper.java"


# static fields
.field private static uniqueInstance:Lcom/vlingo/client/phrasespotter/SensoryJNI;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;
    .locals 3

    const-class v1, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->uniqueInstance:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    if-nez v0, :cond_0

    const-string v0, "SensoryEngineWrapper"

    const-string v2, "getInstance() : make new SensoryJNI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->init()V

    new-instance v0, Lcom/vlingo/client/phrasespotter/SensoryJNI;

    invoke-direct {v0}, Lcom/vlingo/client/phrasespotter/SensoryJNI;-><init>()V

    sput-object v0, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->uniqueInstance:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    :goto_0
    sget-object v0, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->uniqueInstance:Lcom/vlingo/client/phrasespotter/SensoryJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "SensoryEngineWrapper"

    const-string v2, "getInstance() : get existed SensoryJNI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
