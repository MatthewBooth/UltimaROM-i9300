.class abstract enum Lcom/android/server/connectivity/VpnNamespace$Cmd;
.super Ljava/lang/Enum;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Cmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/VpnNamespace$Cmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum EXIT:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum GETIFLIST:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum GETVERSION:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum GETVMID:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum MAX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum PUSHIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum REFRESHIFLIST:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum REMOVEIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum SETIFCONFIG:Lcom/android/server/connectivity/VpnNamespace$Cmd;

.field public static final enum SETROUTE:Lcom/android/server/connectivity/VpnNamespace$Cmd;


# instance fields
.field private final argType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final cmd:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$1;

    const-string v1, "GETVERSION"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/android/server/connectivity/VpnNamespace$Cmd$1;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETVERSION:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$2;

    const-string v1, "GETIFLIST"

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/android/server/connectivity/VpnNamespace$Cmd$2;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFLIST:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$3;

    const-string v1, "REFRESHIFLIST"

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/server/connectivity/VpnNamespace$Cmd$3;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->REFRESHIFLIST:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$4;

    const-string v1, "SETIFCONFIG"

    const-class v2, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/android/server/connectivity/VpnNamespace$Cmd$4;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETIFCONFIG:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$5;

    const-string v1, "SETROUTE"

    const-class v2, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/android/server/connectivity/VpnNamespace$Cmd$5;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETROUTE:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$6;

    const-string v1, "GETVMID"

    const/4 v2, 0x7

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/android/server/connectivity/VpnNamespace$Cmd$6;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETVMID:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$7;

    const-string v1, "REMOVEIF"

    const/4 v2, 0x6

    const/16 v3, 0x8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/VpnNamespace$Cmd$7;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->REMOVEIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$8;

    const-string v1, "PUSHIF"

    const/4 v2, 0x7

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/VpnNamespace$Cmd$8;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->PUSHIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$9;

    const-string v1, "GETIFIDX"

    const/16 v2, 0x8

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/VpnNamespace$Cmd$9;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$10;

    const-string v1, "EXIT"

    const/16 v2, 0x9

    const/16 v3, 0xb

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/VpnNamespace$Cmd$10;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->EXIT:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$Cmd$11;

    const-string v1, "MAX"

    const/16 v2, 0xa

    const/16 v3, 0xc

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/VpnNamespace$Cmd$11;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->MAX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/server/connectivity/VpnNamespace$Cmd;

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETVERSION:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v1, v0, v5

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFLIST:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->REFRESHIFLIST:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETIFCONFIG:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETROUTE:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETVMID:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->REMOVEIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->PUSHIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->EXIT:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->MAX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->$VALUES:[Lcom/android/server/connectivity/VpnNamespace$Cmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->cmd:I

    iput-object p4, p0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->argType:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILjava/lang/Class;Lcom/android/server/connectivity/VpnNamespace$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/VpnNamespace$Cmd;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/VpnNamespace$Cmd;)Ljava/lang/Class;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->getArgType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->writeTo(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$500(Ljava/io/DataInputStream;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->getIntReply(Ljava/io/DataInputStream;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/connectivity/VpnNamespace$Cmd;->getIfListReply(Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getArgType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->argType:Ljava/lang/Class;

    return-object v0
.end method

.method private static getIfListReply(Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoding a list of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " interfaces"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;->readObject(Ljava/io/DataInputStream;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static getIntReply(Ljava/io/DataInputStream;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static getStringReply(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/VpnNamespace$Cmd;
    .locals 1

    const-class v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/VpnNamespace$Cmd;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->$VALUES:[Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/VpnNamespace$Cmd;

    return-object v0
.end method

.method private writeTo(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/connectivity/VpnNamespace$Cmd;->cmd:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method protected abstract getReply(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/DataInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
