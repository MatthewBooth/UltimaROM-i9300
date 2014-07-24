.class public Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
.super Ljava/lang/Object;
.source "VoIPInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoIPInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallSessionInfo"
.end annotation


# instance fields
.field private actionName:Ljava/lang/String;

.field private callCountInThisSession:I

.field private callNumber:Ljava/lang/String;

.field clientCallback:Landroid/os/IVoIPCallbackInterface;

.field private isIncoming:Ljava/lang/Boolean;

.field private mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

.field private packageName:Ljava/lang/String;

.field private remotePartyNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/VoIPInterfaceManager;

.field private useBTCall:Ljava/lang/Boolean;

.field private useHoldCall:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/server/VoIPInterfaceManager;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I

    iput-object v1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Lcom/android/server/VoIPInterfaceManager$CallState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    return-object v0
.end method


# virtual methods
.method public clearCallSessionInfo()V
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBTStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBTStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCallCountInThisSession()I
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    return-object v0
.end method

.method public getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDirection()Z
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHoldStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRegisteredCallNumber()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemotePartyNumber()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getactionName()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValidSessionInfo()Z
    .locals 4

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    const-string v2, "    ** YOU SHOULD FILL OUT ALL FIELD ** "

    #calls: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isValidSessionInfo() : pakageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actionName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callNumber :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clientCallback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    const-string v2, "    isValidSessionInfo() : All session field is valid"

    #calls: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isValidSessionInfo() : pakageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actionName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callNumber :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clientCallback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBTStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBTStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;

    return-void
.end method

.method public setCallCountInThisSession(I)V
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callCountInThisSession:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)V
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->actionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->clientCallback:Landroid/os/IVoIPCallbackInterface;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDirection(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->this$0:Lcom/android/server/VoIPInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDirection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/VoIPInterfaceManager;->access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;

    return-void
.end method

.method public setRemotePartyNumber(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
