.class public Lcom/android/server/SerialService;
.super Landroid/hardware/ISerialManager$Stub;
.source "SerialService.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSerialPorts:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/hardware/ISerialManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/SerialService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    return-void
.end method

.method private native native_open(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method


# virtual methods
.method public getSerialPorts()[Ljava/lang/String;
    .locals 7

    iget-object v4, p0, Lcom/android/server/SerialService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.SERIAL_PORT"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    aget-object v1, v4, v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v3
.end method

.method public openSerialPort(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    iget-object v1, p0, Lcom/android/server/SerialService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SERIAL_PORT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SerialService;->mSerialPorts:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/SerialService;->native_open(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid serial port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
