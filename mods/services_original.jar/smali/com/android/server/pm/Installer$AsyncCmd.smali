.class Lcom/android/server/pm/Installer$AsyncCmd;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCmd"
.end annotation


# instance fields
.field private ackTime:J

.field private cmd:I

.field private cmdBuilder:Ljava/lang/StringBuilder;

.field private failCount:I

.field private replyTime:J

.field private startTime:J

.field private targetPkgStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmd:I

    invoke-direct {p0, p2}, Lcom/android/server/pm/Installer$AsyncCmd;->convertCmdIntToStr(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmdBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private convertCmdIntToStr(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmd:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v0, "asyncDexopt"

    :cond_0
    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Lcom/android/server/pm/Installer$AsyncCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/server/pm/Installer$AsyncCmd;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public appendPackage(Ljava/lang/String;)Lcom/android/server/pm/Installer$AsyncCmd;
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->targetPkgStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public checkAck(Lcom/android/server/pm/Installer$AsyncReply;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncReply;->getCmd()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->targetPkgStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/pm/Installer$AsyncReply;->getExtra(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkMatched(Lcom/android/server/pm/Installer$AsyncReply;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmd:I

    invoke-virtual {p1}, Lcom/android/server/pm/Installer$AsyncReply;->getCmd()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/Installer$AsyncCmd;->targetPkgStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/pm/Installer$AsyncReply;->getExtra(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public fail()V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->failCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->failCount:I

    return-void
.end method

.method public getFailCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->failCount:I

    return v0
.end method

.method public recordAckTime()V
    .locals 0

    return-void
.end method

.method public recordReplyTime()V
    .locals 0

    return-void
.end method

.method public recordStartTime()V
    .locals 0

    return-void
.end method

.method public recordStatistics()V
    .locals 0

    return-void
.end method

.method public timesToString()Ljava/lang/String;
    .locals 1

    const-string v0, "NO DEBUG BUILD"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncCmd;->cmdBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
