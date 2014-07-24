.class public Lcom/android/server/usb/UsbDebuggingManager;
.super Ljava/lang/Object;
.source "UsbDebuggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbDebuggingManager"


# instance fields
.field private final ADBD_SOCKET:Ljava/lang/String;

.field private final ADB_DIRECTORY:Ljava/lang/String;

.field private final ADB_KEYS_FILE:Ljava/lang/String;

.field private final BUFFER_SIZE:I

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private mAdbEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mFingerprints:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "adbd"

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADBD_SOCKET:Ljava/lang/String;

    const-string v0, "misc/adb"

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADB_DIRECTORY:Ljava/lang/String;

    const-string v0, "adb_keys"

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->ADB_KEYS_FILE:Ljava/lang/String;

    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->BUFFER_SIZE:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    iput-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    iput-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    new-instance v0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;-><init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDebuggingManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/usb/UsbDebuggingManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbDebuggingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->deleteKeyFile()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbDebuggingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->closeSocket()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/usb/UsbDebuggingManager;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbDebuggingManager;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->getFingerprints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->writeKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDebuggingManager;->sendResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->showConfirmationDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private closeSocket()V
    .locals 5

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "UsbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteKeyFile()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getFingerprints(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    const-string v4, "0123456789ABCDEF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v7, "\\s+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_1

    aget-byte v7, v1, v5

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v7, v1, v5

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_0

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v7, "UsbDebuggingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting digester: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, ""

    :goto_1
    return-object v7

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private getUserKeyFile()Ljava/io/File;
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    const-string v2, "misc/adb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UsbDebuggingManager"

    const-string v3, "ADB data directory does not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "adb_keys"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private listenToSocket()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x1000

    :try_start_0
    new-array v1, v7, [B

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v7, "adbd"

    sget-object v8, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v7, v8}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    const/4 v4, 0x0

    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v7}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    const-string v7, "UsbDebuggingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reading"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->closeSocket()V

    return-void

    :cond_0
    const/4 v7, 0x0

    :try_start_1
    aget-byte v7, v1, v7

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    const/16 v8, 0x4b

    if-ne v7, v8, :cond_1

    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v1, v7, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput-object v5, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v7, "UsbDebuggingManager"

    const-string v8, "Communication error: "

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->closeSocket()V

    throw v7

    :cond_1
    :try_start_3
    const-string v7, "UsbDebuggingManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v1, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private sendResponse(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UsbDebuggingManager"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showConfirmationDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v2, "UsbDebuggingManager"

    const-string/jumbo v3, "showConfirmationDialog : UsbDebuggingActivity start"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDebuggingManager;->isLockScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UsbDebuggingManager"

    const-string/jumbo v3, "showConfirmationDialog : isLockScreenMode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.usb.UsbDebuggingActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fingerprints"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v2, "UsbDebuggingManager"

    const-string/jumbo v3, "showConfirmationDialog : startActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "UsbDebuggingManager"

    const-string/jumbo v3, "unable to start UsbDebuggingActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeKey(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "UsbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearUsbDebuggingKeys()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public denyUsbDebugging()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 4

    const/4 v1, 0x0

    const-string v2, "  USB Debugging State:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Connected to adbd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Last key received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager;->mFingerprints:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    User keys:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/adb/adb_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "    System keys:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/adb_keys"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isLockScreenMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->keyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/server/usb/UsbDebuggingManager;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mAdbEnabled:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDebuggingManager;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdbEnabled(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/usb/UsbDebuggingManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
