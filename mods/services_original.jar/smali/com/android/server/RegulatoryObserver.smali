.class Lcom/android/server/RegulatoryObserver;
.super Landroid/os/UEventObserver;
.source "RegulatoryObserver.java"


# static fields
.field private static final MSG_COUNTRY_CODE:I = 0x0

.field private static final REGULATORY_UEVENT_MATCH:Ljava/lang/String; = "MODALIAS=platform:regulatory"

.field private static final TAG:Ljava/lang/String; = null

.field private static final UEVENT_FILE:Ljava/lang/String; = "/sys/devices/platform/regulatory.0/uevent"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mCountryKeyword:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/RegulatoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    const-string v0, "COUNTRY="

    iput-object v0, p0, Lcom/android/server/RegulatoryObserver;->mCountryKeyword:Ljava/lang/String;

    new-instance v0, Lcom/android/server/RegulatoryObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/RegulatoryObserver$1;-><init>(Lcom/android/server/RegulatoryObserver;)V

    iput-object v0, p0, Lcom/android/server/RegulatoryObserver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->init()V

    const-string v0, "MODALIAS=platform:regulatory"

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/RegulatoryObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/RegulatoryObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/RegulatoryObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final init()V
    .locals 10

    const/4 v4, 0x0

    :try_start_0
    sget-object v7, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "RegulatoryObserver init."

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/devices/platform/regulatory.0/uevent"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aget-object v2, v1, v7

    const/4 v7, 0x1

    aget-object v6, v1, v7

    const-string v7, "COUNTRY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object v6, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->run_crda()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v5

    :goto_1
    :try_start_2
    sget-object v7, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "This kernel may not have CRDA support."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    move-object v4, v5

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_5
    throw v7

    :catch_1
    move-exception v0

    sget-object v8, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v9, "Buffer Close error"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v0

    sget-object v7, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "Buffer Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    sget-object v7, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "Buffer Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private final run_crda()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wlan.crda.country"

    iget-object v2, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ctl.start"

    const-string/jumbo v2, "wifi-crda"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Start wifi-crda service to run crda."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country Code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    const-string/jumbo v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/RegulatoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Send broadcast country code message."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start wifi-crda service to run crda."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uevent:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    const-string v1, "COUNTRY"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regulatory Country Code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/RegulatoryObserver;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/RegulatoryObserver;->run_crda()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/RegulatoryObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse country code from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
