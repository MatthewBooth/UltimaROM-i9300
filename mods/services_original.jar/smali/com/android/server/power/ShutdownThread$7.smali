.class final Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->startShutdownThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    #getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$900(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10401cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    #getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$900(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread;->access$1000(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
