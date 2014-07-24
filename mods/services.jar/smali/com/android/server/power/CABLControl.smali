.class public Lcom/android/server/power/CABLControl;
.super Ljava/lang/Object;
.source "CABLControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/CABLControl$AutoBrightnessObserver;
    }
.end annotation


# static fields
.field public static final CABL_TAG:Ljava/lang/String; = "PMSCabl"

.field private static mAutoBrightnessEnabled:Z

.field private static mAutoBrightnessObserver:Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

.field private static mContext:Landroid/content/Context;

.field private static s_CablInstance:Lcom/android/server/power/CABLControl;


# instance fields
.field private final DAEMON_SOCKET:Ljava/lang/String;

.field private final MAX_CMD_LEN:I

.field private daemonSock:Landroid/net/LocalSocket;

.field enable_parameter:Z

.field private in:Ljava/io/InputStream;

.field private isCabcDaemonConnected:Z

.field private mCablHandler:Landroid/os/Handler;

.field private out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    sput-object v0, Lcom/android/server/power/CABLControl;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/power/CABLControl;->mAutoBrightnessObserver:Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/CABLControl;->mAutoBrightnessEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/power/CABLControl;->MAX_CMD_LEN:I

    const-string v0, "pps"

    iput-object v0, p0, Lcom/android/server/power/CABLControl;->DAEMON_SOCKET:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    iput-boolean v3, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/CABLControl;->mCablHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/server/power/CABLControl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

    invoke-direct {v0, p0}, Lcom/android/server/power/CABLControl$AutoBrightnessObserver;-><init>(Lcom/android/server/power/CABLControl;)V

    sput-object v0, Lcom/android/server/power/CABLControl;->mAutoBrightnessObserver:Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

    sget-object v0, Lcom/android/server/power/CABLControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/server/power/CABLControl;->mAutoBrightnessObserver:Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private CabcDaemonConnect()V
    .locals 4

    const-string v2, "PMSCabl"

    const-string v3, "CabcDaemonConnect ()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "pps"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iget-object v2, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v2, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "PMSCabl"

    const-string v3, "CabcDaemonConnect () - error getting streams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private CablDaemonControl(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    :try_start_0
    const-string v5, "PMSCabl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v5, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    const/16 v5, 0x64

    new-array v2, v5, [B

    iget-object v5, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v5, "PMSCabl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v5, "PMSCabl"

    const-string v6, "CablDaemonControl: streams null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    goto :goto_0
.end method

.method private IsCabcDaemonConnected()Z
    .locals 3

    const-string v0, "PMSCabl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsCabcDaemonConnected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    return v0
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/power/CABLControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/CABLControl;->mAutoBrightnessEnabled:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/CABLControl;->mAutoBrightnessEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/power/CABLControl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/CABLControl;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/server/power/CABLControl;
    .locals 1

    sget-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/power/CABLControl;
    .locals 1

    sget-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/CABLControl;

    invoke-direct {v0, p0}, Lcom/android/server/power/CABLControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    :cond_0
    sget-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    return-object v0
.end method

.method private isTablet()Z
    .locals 2

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sysfsWrite(Ljava/lang/String;I)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x1

    move-object v2, v3

    :goto_0
    return v4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected handleSetAmoledACL(Z)Z
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/power/CABLControl;->enable_parameter:Z

    const-string v0, "PMSCabl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/CABLControl;->enable_parameter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/lcd/panel/power_reduce"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/CABLControl;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAmoledACL(Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/power/CABLControl;->handleSetAmoledACL(Z)Z

    move-result v0

    return v0
.end method
