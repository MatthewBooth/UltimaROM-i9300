.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbAudioData"
.end annotation


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private channels:Ljava/lang/String;

.field private deviceNumber:Ljava/lang/String;

.field private format:I

.field private isSmartDock:Z

.field private isplayback:Z

.field private samplingRate2:Ljava/lang/String;

.field private samplingRate24:I

.field private samplingRate6:Ljava/lang/String;

.field private state:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    return-void
.end method


# virtual methods
.method public get24Format()I
    .locals 3

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->deviceNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPlayback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isplayback:Z

    return v0
.end method

.method public getIsSmartdock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isSmartDock:Z

    return v0
.end method

.method public getSamplingRate(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate2:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate6:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSamplingRate24()I
    .locals 1

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate24:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->state:I

    return v0
.end method

.method public getSupportedPCMFormat()I
    .locals 6

    const/16 v0, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    if-ne v1, v5, :cond_3

    :cond_2
    const/16 v0, 0x18

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x2

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x4

    if-eq v1, v4, :cond_4

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_0

    :cond_4
    const/16 v0, 0x28

    goto :goto_0
.end method

.method public setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 0

    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->state:I

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->channels:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate6:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->cardNumber:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->deviceNumber:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isSmartDock:Z

    iput-boolean p8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->isplayback:Z

    iput p9, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->format:I

    iput p10, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->samplingRate24:I

    return-void
.end method
