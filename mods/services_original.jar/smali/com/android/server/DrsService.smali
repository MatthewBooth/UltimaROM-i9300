.class public final Lcom/android/server/DrsService;
.super Ljava/lang/Object;
.source "DrsService.java"


# static fields
.field private static final DRSLOG:Z = false

.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "drsService"

.field private static instance:Lcom/android/server/DrsService;


# instance fields
.field buf:[B

.field buflen:I

.field mIn:Ljava/io/InputStream;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DrsService;->instance:Lcom/android/server/DrsService;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/DrsService;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DrsService;->buflen:I

    return-void
.end method

.method private connect()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "drsd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iget-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/DrsService;->disconnect()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnect()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    iput-object v1, p0, Lcom/android/server/DrsService;->mSocket:Landroid/net/LocalSocket;

    iput-object v1, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/DrsService;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/DrsService;
    .locals 1

    sget-object v0, Lcom/android/server/DrsService;->instance:Lcom/android/server/DrsService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/DrsService;

    invoke-direct {v0}, Lcom/android/server/DrsService;-><init>()V

    sput-object v0, Lcom/android/server/DrsService;->instance:Lcom/android/server/DrsService;

    :cond_0
    sget-object v0, Lcom/android/server/DrsService;->instance:Lcom/android/server/DrsService;

    return-object v0
.end method

.method private readBytes([BI)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-gez p2, :cond_1

    :goto_0
    return v3

    :cond_0
    add-int/2addr v2, v0

    :cond_1
    if-eq v2, p2, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/DrsService;->mIn:Ljava/io/InputStream;

    sub-int v5, p2, v2

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    :goto_1
    if-ne v2, p2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/DrsService;->disconnect()V

    goto :goto_0
.end method

.method private readReply()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/DrsService;->buflen:I

    iget-object v3, p0, Lcom/android/server/DrsService;->buf:[B

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/server/DrsService;->readBytes([BI)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/DrsService;->buf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/server/DrsService;->buf:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v0, v3, v4

    if-lt v0, v2, :cond_2

    const/16 v3, 0x400

    if-le v0, v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/DrsService;->disconnect()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/DrsService;->buf:[B

    invoke-direct {p0, v3, v0}, Lcom/android/server/DrsService;->readBytes([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/android/server/DrsService;->buflen:I

    move v1, v2

    goto :goto_0
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DrsService;->connect()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DrsService;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/DrsService;->connect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/DrsService;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "-1"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/DrsService;->readReply()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/DrsService;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/DrsService;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_3
    const-string v0, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    if-lt v2, v3, :cond_0

    const/16 v5, 0x400

    if-le v2, v5, :cond_1

    :cond_0
    const-string v3, "drsService"

    const-string/jumbo v5, "size error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/server/DrsService;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    iget-object v5, p0, Lcom/android/server/DrsService;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/server/DrsService;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    iget-object v5, p0, Lcom/android/server/DrsService;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/DrsService;->disconnect()V

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public relabelAppDir(Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x2c

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/DrsService;->execute(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, "drsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relabeling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    const-string v1, "drsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relabeling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " succeeded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public relabelDataDir(Ljava/util/Queue;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/DrsService;->execute(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string v3, "drsService"

    const-string v4, "relabeling /data failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2

    :cond_2
    const-string v3, "drsService"

    const-string v4, "relabeling /data succeeded"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
