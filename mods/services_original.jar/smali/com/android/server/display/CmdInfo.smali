.class public Lcom/android/server/display/CmdInfo;
.super Ljava/lang/Object;
.source "CmdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/CmdInfo$CmdType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/display/CmdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cmdDetail:I

.field private cmdType:Lcom/android/server/display/CmdInfo$CmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/display/CmdInfo$1;

    invoke-direct {v0}, Lcom/android/server/display/CmdInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/display/CmdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/display/CmdInfo$CmdType;->START_PLAYER:Lcom/android/server/display/CmdInfo$CmdType;

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    :goto_0
    iput p2, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/display/CmdInfo$CmdType;->START_SOURCE:Lcom/android/server/display/CmdInfo$CmdType;

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/display/CmdInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/server/display/CmdInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/CmdInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/CmdInfo$CmdType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/CmdInfo$CmdType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WfdBridgeServer"

    iput-object v0, p0, Lcom/android/server/display/CmdInfo;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    iput p2, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCmdDetail()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    return v0
.end method

.method public getCmdType()Lcom/android/server/display/CmdInfo$CmdType;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/CmdInfo$CmdType;->valueOf(Ljava/lang/String;)Lcom/android/server/display/CmdInfo$CmdType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/display/CmdInfo;->cmdDetail:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/CmdInfo;->cmdType:Lcom/android/server/display/CmdInfo$CmdType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
