.class Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.super Ljava/lang/Thread;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunningCheckable"
.end annotation


# instance fields
.field protected running:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$RunningCheckable;->running:Z

    return v0
.end method
