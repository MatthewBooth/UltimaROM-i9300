.class Lcom/android/server/power/ShutdownDialog$StateDrawing;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateDrawing"
.end annotation


# instance fields
.field imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

.field soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->checkRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->checkRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->checkRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShutdownDialog"

    const-string v1, "becareful prepare while draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->init()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ShutdownDialog"

    const-string v1, "StateDrawing.start()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/ShutdownDialog$SoundThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$SoundThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StateDrawing;->imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
