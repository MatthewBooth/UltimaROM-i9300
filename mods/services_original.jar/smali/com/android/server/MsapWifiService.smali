.class public Lcom/android/server/MsapWifiService;
.super Landroid/net/wifi/IMsapWifiManager$Stub;
.source "MsapWifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MsapWifiService$VenueInfoCacheItem;
    }
.end annotation


# static fields
.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static GAS_COMPLETE_SERVER_ID:I = 0x0

.field private static GAS_QUERY_CANCELLED:I = 0x0

.field private static GAS_QUERY_DELETED_AT_DEINIT:I = 0x0

.field private static GAS_QUERY_FAILURE:I = 0x0

.field private static GAS_QUERY_INTERNAL_ERROR:I = 0x0

.field private static GAS_QUERY_PEER_ERROR:I = 0x0

.field private static GAS_QUERY_SUCCESS:I = 0x0

.field private static GAS_QUERY_TIMEOUT:I = 0x0

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final NOISE_STR:Ljava/lang/String; = "noise="

.field private static final QUAL_STR:Ljava/lang/String; = "qual="

.field private static final SERVER_STR:Ljava/lang/String; = "server-id="

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field public static final TAG:Ljava/lang/String; = "SMsapWifiService"

.field private static final VENUE_STR:Ljava/lang/String; = "venue-hash="

.field private static byteArrayPayload:[B

.field private static dialog_token:I

.field private static mBSSID:Ljava/lang/String;

.field private static mCurr_BSSID:Ljava/lang/String;

.field private static mcurr_dialog_token:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVenueAddedCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MsapWifiService$VenueInfoCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private receiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/MsapWifiService;->DEBUG:Z

    sput v1, Lcom/android/server/MsapWifiService;->dialog_token:I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    const-string v0, ""

    sput-object v0, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    const/16 v0, 0xff

    sput v0, Lcom/android/server/MsapWifiService;->GAS_COMPLETE_SERVER_ID:I

    sput v1, Lcom/android/server/MsapWifiService;->GAS_QUERY_SUCCESS:I

    sput v2, Lcom/android/server/MsapWifiService;->GAS_QUERY_FAILURE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/MsapWifiService;->GAS_QUERY_TIMEOUT:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/MsapWifiService;->GAS_QUERY_PEER_ERROR:I

    const/4 v0, 0x4

    sput v0, Lcom/android/server/MsapWifiService;->GAS_QUERY_INTERNAL_ERROR:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/MsapWifiService;->GAS_QUERY_CANCELLED:I

    const/4 v0, 0x6

    sput v0, Lcom/android/server/MsapWifiService;->GAS_QUERY_DELETED_AT_DEINIT:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/IMsapWifiManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    new-instance v0, Lcom/android/server/MsapWifiService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MsapWifiService$1;-><init>(Lcom/android/server/MsapWifiService;)V

    iput-object v0, p0, Lcom/android/server/MsapWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_2
    if-lez v3, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 15

    move-object/from16 v0, p2

    array-length v11, v0

    new-array v12, v11, [Ljava/lang/String;

    :try_start_0
    const-string v13, "\t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    array-length v7, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v8, v1, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v11, :cond_1

    const-string v13, "="

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v6, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_0
    invoke-direct {p0, v6}, Lcom/android/server/MsapWifiService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-direct {p0, v6}, Lcom/android/server/MsapWifiService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aget-object v14, p2, v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-direct {p0, v10}, Lcom/android/server/MsapWifiService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v12
.end method

.method private hexToBytes(Ljava/lang/String;)[B
    .locals 8

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SMsapWifiService"

    const-string v7, "Invalid length; must be multiple of 2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    div-int/lit8 v2, v4, 0x2

    new-array v5, v2, [B

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v3, v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v3, v3, 0x2

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public gasReq(IILjava/lang/String;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v6, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SMsapWifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process gas request("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v6, Lcom/android/server/MsapWifiService;->GAS_COMPLETE_SERVER_ID:I

    if-ne p2, v6, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.wifi.msap.GAS_RSP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "responseHash"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "responseId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "payloadLen"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "erroInfo"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v3, 0x0

    :goto_0
    monitor-exit p0

    if-nez v3, :cond_2

    :goto_1
    return v4

    :cond_1
    const-string v6, ""

    sput-object v6, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    const/4 v6, -0x1

    sput v6, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v6, 0x40

    iput v6, v2, Landroid/os/Message;->what:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public getBss(Ljava/lang/String;)Landroid/net/wifi/MsapBssInfo;
    .locals 25

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v19

    const/16 v22, 0x44

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v20

    monitor-exit p0

    if-nez v20, :cond_0

    const/16 v22, 0x0

    :goto_0
    return-object v22

    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    :cond_0
    move-object/from16 v21, v20

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v11, -0x1

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v18

    array-length v0, v12

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    aget-object v17, v12, v15

    const-string v22, "bssid="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v22, "bssid="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    const-string v22, "freq="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    :try_start_1
    const-string v22, "freq="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_2

    :catch_0
    move-exception v13

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const-string v22, "qual="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    :try_start_2
    const-string v22, "qual="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    goto :goto_2

    :catch_1
    move-exception v13

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const-string v22, "noise="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    :try_start_3
    const-string v22, "noise="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v6

    goto :goto_2

    :catch_2
    move-exception v13

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const-string v22, "level="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    :try_start_4
    const-string v22, "level="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    if-lez v7, :cond_1

    add-int/lit16 v7, v7, -0x100

    goto/16 :goto_2

    :catch_3
    move-exception v13

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_6
    const-string v22, "flags="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    const-string v22, "flags="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v22, "MSAP"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v22, "ssid="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    const-string/jumbo v22, "ssid="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v22, "venue-hash="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    const-string/jumbo v22, "venue-hash="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_9
    const-string v22, "server-id="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    :try_start_5
    const-string v22, "server-id="

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v11

    goto/16 :goto_2

    :catch_4
    move-exception v13

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_a
    if-eqz v3, :cond_d

    if-eqz v8, :cond_d

    if-eqz v10, :cond_d

    sget-boolean v22, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v22, :cond_b

    const-string v22, "SMsapWifiService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MsapBssInfo"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v3, :cond_c

    new-instance v2, Landroid/net/wifi/MsapBssInfo;

    invoke-direct/range {v2 .. v11}, Landroid/net/wifi/MsapBssInfo;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;I)V

    :cond_c
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v14, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_d
    move-object/from16 v22, v2

    goto/16 :goto_0
.end method

.method public getGasResponse()[B
    .locals 1

    sget-object v0, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    return-object v0
.end method

.method public notifyGasReqStatus(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "addr"

    aput-object v7, v3, v8

    const-string v7, "dialog_token"

    aput-object v7, v3, v9

    const-string/jumbo v7, "status_code"

    aput-object v7, v3, v10

    invoke-direct {p0, p1, v3}, Lcom/android/server/MsapWifiService;->getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v7, v6, v2

    if-nez v7, :cond_4

    const/4 v1, 0x0

    sget-boolean v7, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "SMsapWifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Gas response has \'NULL\' value for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_0

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    sput-object v7, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sget-boolean v7, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "SMsapWifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The total length of all sections expected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/MsapWifiService;->dialog_token:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-gez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public notifyGasResponse(Ljava/lang/String;)V
    .locals 24

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x1

    const/4 v12, -0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v11, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "addr"

    aput-object v20, v11, v19

    const/16 v19, 0x1

    const-string v20, "dialog_token"

    aput-object v20, v11, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "status_code"

    aput-object v20, v11, v19

    const/16 v19, 0x3

    const-string v20, "resp_len"

    aput-object v20, v11, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/MsapWifiService;->getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    array-length v0, v11

    move/from16 v16, v0

    const/16 v17, 0x0

    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    aget-object v19, v18, v6

    if-nez v19, :cond_c

    const/4 v5, 0x0

    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_2

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Gas response has \'NULL\' value for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v11, v6

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v5, :cond_8

    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v18, v19

    sput-object v19, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/android/server/MsapWifiService;->dialog_token:I

    const/16 v19, 0x2

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v19, 0x3

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_3

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The total length of all sections expected: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lcom/android/server/MsapWifiService;->dialog_token:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-gez v17, :cond_4

    const/4 v5, 0x0

    :cond_4
    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_5

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MSAP Gas Response status = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget v19, Lcom/android/server/MsapWifiService;->GAS_QUERY_TIMEOUT:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_6

    const-string v19, "SMsapWifiService"

    const-string v20, "Error in Gas Query-GAS_QUERY_TIMEOUT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const/4 v5, 0x2

    :cond_7
    :goto_2
    if-gez v12, :cond_f

    const/4 v5, 0x0

    :cond_8
    :goto_3
    sget-object v19, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    sget-object v20, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    sget v19, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    sget v20, Lcom/android/server/MsapWifiService;->dialog_token:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const-string v19, ""

    sput-object v19, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    const/16 v19, -0x1

    sput v19, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    :cond_9
    if-lez v12, :cond_17

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v13, v12

    const/16 v9, 0x7fe

    const/4 v14, 0x0

    :goto_4
    monitor-enter p0

    if-le v13, v9, :cond_10

    move v8, v9

    sub-int/2addr v13, v9

    :goto_5
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    const/16 v19, 0x41

    move/from16 v0, v19

    iput v0, v10, Landroid/os/Message;->what:I

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/server/MsapWifiService;->dialog_token:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    if-nez v15, :cond_11

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/MsapWifiService;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v19

    sput-object v19, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_a

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Process gas response:\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    sget-object v22, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    const-string v23, "UTF-8"

    invoke-direct/range {v21 .. v23}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object v19, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v0, v19

    if-eq v0, v12, :cond_b

    const/4 v5, 0x0

    :cond_b
    :goto_7
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.net.wifi.msap.GAS_RSP"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "responseHash"

    sget-object v20, Lcom/android/server/MsapWifiService;->mBSSID:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "responseId"

    sget v20, Lcom/android/server/MsapWifiService;->dialog_token:I

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "payloadLen"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v19, "erroInfo"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string v19, "SMsapWifiService"

    const-string v20, "Received gas response event and sending broadcast of event!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_d
    :try_start_4
    sget v19, Lcom/android/server/MsapWifiService;->GAS_QUERY_SUCCESS:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_e

    const-string v19, "SMsapWifiService"

    const-string v20, "Error in Gas Query-GAS_QUERY_NOT_SUCCESSFUL"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_f
    if-nez v12, :cond_8

    const/4 v5, 0x2

    goto/16 :goto_3

    :catch_0
    move-exception v4

    const/4 v12, -0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_10
    move v8, v13

    goto/16 :goto_5

    :cond_11
    :try_start_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_14

    if-gt v3, v12, :cond_14

    div-int/lit8 v19, v14, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_14

    add-int/2addr v3, v8

    if-nez v2, :cond_13

    move-object v2, v15

    :goto_8
    if-ne v12, v3, :cond_16

    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_12

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The section\'s actual_len: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and received payloadLength"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_12
    :try_start_6
    monitor-exit p0

    goto/16 :goto_6

    :catchall_0
    move-exception v19

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v19

    :cond_13
    :try_start_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_14
    sget-boolean v19, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v19, :cond_15

    const-string v19, "SMsapWifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "The section\'s actual_len: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and received payloadLength"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_15
    :try_start_8
    monitor-exit p0

    goto/16 :goto_6

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :cond_17
    const/16 v19, 0x0

    sput-object v19, Lcom/android/server/MsapWifiService;->byteArrayPayload:[B

    goto/16 :goto_7
.end method

.method public notifyVenueServerAdded(Ljava/lang/String;)V
    .locals 18

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x1

    const/4 v2, 0x5

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "venue-hash"

    aput-object v3, v12, v2

    const/4 v2, 0x1

    const-string v3, "server-id"

    aput-object v3, v12, v2

    const/4 v2, 0x2

    const-string v3, "bssid"

    aput-object v3, v12, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "ssid"

    aput-object v3, v12, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "venue-name"

    aput-object v3, v12, v2

    sget-boolean v2, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Venue Added dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/MsapWifiService;->getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v13, v12

    const/4 v10, 0x0

    :goto_1
    add-int/lit8 v2, v13, -0x1

    if-ge v10, v2, :cond_3

    aget-object v2, v14, v10

    if-nez v2, :cond_5

    const/4 v9, 0x0

    sget-boolean v2, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In Venue Server Added event getting null value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v12, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;

    const/4 v3, 0x0

    aget-object v4, v14, v3

    const/4 v3, 0x1

    aget-object v5, v14, v3

    const/4 v3, 0x2

    aget-object v6, v14, v3

    const/4 v3, 0x3

    aget-object v7, v14, v3

    const/4 v3, 0x4

    aget-object v8, v14, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;-><init>(Lcom/android/server/MsapWifiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added venue server to cache for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v14, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.net.wifi.msap.VENUE_SERVER_ADDED"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "addVenueHash"

    const/4 v3, 0x0

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addServerId"

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addBssid"

    const/4 v3, 0x2

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addSsid"

    const/4 v3, 0x3

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "addVenueName"

    const/4 v3, 0x4

    aget-object v3, v14, v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "erroInfo"

    invoke-virtual {v11, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SMsapWifiService"

    const-string v3, "Received venue server added event, and sending broadcast of event!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public notifyVenueServerCacheInfo()V
    .locals 8

    iget-object v5, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.msap.VENUE_SERVER_ADDED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "addVenueHash"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "addServerId"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "addBssid"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mBssId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "addSsid"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mSsId:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "addVenueName"

    iget-object v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueName:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "erroInfo"

    iget v6, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mParseError:I

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v4, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SMsapWifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending venue server added event from cache for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/MsapWifiService$VenueInfoCacheItem;->mVenueHash:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public notifyVenueServerDeleted(Ljava/lang/String;)V
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v8, 0x2

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v8, "venue-hash"

    aput-object v8, v3, v9

    const-string v8, "server-id"

    aput-object v8, v3, v10

    invoke-direct {p0, p1, v3}, Lcom/android/server/MsapWifiService;->getValue(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v8, v5, v1

    if-nez v8, :cond_4

    const/4 v0, 0x0

    sget-boolean v8, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "SMsapWifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In Venue Server Deleted event getting null value for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v9, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    monitor-enter v9

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/MsapWifiService;->mVenueAddedCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    sget-boolean v8, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "SMsapWifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No venue server found to remove from cache for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v8, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "SMsapWifiService"

    const-string v9, "Received venue server deleted event, and sending broadcast of event!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :try_start_1
    sget-boolean v8, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "SMsapWifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removed venue server from cache for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.net.wifi.msap.VENUE_SERVER_DELETED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "deleteVenueHash"

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "deleteServerId"

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "erroInfo"

    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public resetMsap()I
    .locals 5

    sget-boolean v2, Lcom/android/server/MsapWifiService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset msap Un-receiverRegistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/MsapWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x42

    iput v2, v1, Landroid/os/Message;->what:I

    sget v2, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    if-gez v2, :cond_2

    sget-object v2, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "OFF"

    :goto_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    return v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OFF "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/MsapWifiService;->mCurr_BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/MsapWifiService;->mcurr_dialog_token:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendVenueAddedCacheInfo()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/MsapWifiService;->notifyVenueServerCacheInfo()V

    return-void
.end method

.method public startWifiManager()V
    .locals 6

    iget-object v3, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.wifi.MSAP_VENUE_SERVER_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.MSAP_VENUE_SERVER_DELETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.MSAP_GAS_RSP_AVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.MSAP_GAS_REQ_STATUS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "SMsapWifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received startMSAPWifiManager and receiverRegistered is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/MsapWifiService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/MsapWifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/MsapWifiService;->receiverRegistered:Z

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x42

    iput v3, v2, Landroid/os/Message;->what:I

    const-string v0, "ON"

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/MsapWifiService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method
