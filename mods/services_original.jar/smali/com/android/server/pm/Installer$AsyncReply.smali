.class Lcom/android/server/pm/Installer$AsyncReply;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncReply"
.end annotation


# instance fields
.field private cmd:I

.field private failCount:I

.field private reply:[Ljava/lang/String;

.field private result:I

.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncReply;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncReply;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/Installer$AsyncReply;->reply:[Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/pm/Installer$AsyncReply;->result:I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Installer$AsyncReply;->reply:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/Installer$AsyncReply;->result:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Installer$AsyncReply;->reply:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer$AsyncReply;->convertCmdStrToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/Installer$AsyncReply;->cmd:I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Installer"

    const-string v2, "parse error, %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/pm/Installer$AsyncReply;->reply:[Ljava/lang/String;

    aget-object v4, v4, v5

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertCmdStrToInt(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "asyncDexopt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "CommandACK"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkSuccess()Z
    .locals 1

    iget v0, p0, Lcom/android/server/pm/Installer$AsyncReply;->result:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCmd()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/Installer$AsyncReply;->cmd:I

    return v0
.end method

.method public getExtra(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncReply;->reply:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out of range extra array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncReply;->reply:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/Installer$AsyncReply;->result:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/pm/Installer$AsyncReply;->reply:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
