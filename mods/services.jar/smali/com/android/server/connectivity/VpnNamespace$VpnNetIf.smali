.class Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
.super Ljava/lang/Object;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VpnNetIf"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private ifAddr:[B

.field final ifFlags:I

.field final ifIdx:I

.field final ifName:Ljava/lang/String;

.field final ifType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifIdx:I

    iput p3, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifFlags:I

    iput p4, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifType:I

    sget-object v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifAddr:[B

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;-><init>(Ljava/lang/String;III)V

    iput-object p5, p0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->ifAddr:[B

    return-void
.end method

.method static readObject(Ljava/io/DataInputStream;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    if-lez v6, :cond_1

    const/16 v1, 0x14

    if-le v6, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": HW address too long ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    sget-object v8, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    const-string v9, "#readObject(): exiting"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_0
    :try_start_1
    new-array v5, v6, [B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    rsub-int/lit8 v1, v6, 0x14

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    if-gtz v6, :cond_2

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    const-string v8, "#readObject(): invalid name"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    const-string v8, "corrupted name string"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-array v7, v6, [B

    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;-><init>(Ljava/lang/String;III[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->TAG:Ljava/lang/String;

    const-string v8, "#readObject(): exiting"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
