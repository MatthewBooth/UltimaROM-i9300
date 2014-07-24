.class public Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
.super Ljava/lang/Object;
.source "BluetoothManagerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothManagerAdapter"

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
    .locals 2

    const-class v1, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public removeBond(Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v2

    const-string v4, "BluetoothManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
