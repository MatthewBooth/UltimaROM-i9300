.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PureUsbAudioInfo"
.end annotation


# instance fields
.field private channels:I

.field private format:Ljava/lang/String;

.field private isPlayback:Z

.field private rates:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;

    return-object p1
.end method
