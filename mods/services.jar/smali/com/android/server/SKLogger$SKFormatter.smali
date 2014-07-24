.class Lcom/android/server/SKLogger$SKFormatter;
.super Ljava/util/logging/Formatter;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SKLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SKFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SKLogger;


# direct methods
.method private constructor <init>(Lcom/android/server/SKLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SKLogger$SKFormatter;->this$0:Lcom/android/server/SKLogger;

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SKLogger;Lcom/android/server/SKLogger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SKLogger$SKFormatter;-><init>(Lcom/android/server/SKLogger;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
