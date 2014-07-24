.class Lcom/android/server/enterprise/log/FileLogger$3;
.super Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/log/FileLogger;->copyLogs(Ljava/io/FileOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor",
        "<",
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$outFile:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Ljava/io/File;Ljava/io/FileOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$3;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    iput-object p2, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$outFile:Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/io/FileInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$3;->close(Ljava/io/FileInputStream;)V

    return-void
.end method

.method public open()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic open()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/log/FileLogger$3;->open()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/io/FileInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x1000

    new-array v0, v2, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/log/FileLogger$3;->val$outFile:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$3;->process(Ljava/io/FileInputStream;)V

    return-void
.end method
