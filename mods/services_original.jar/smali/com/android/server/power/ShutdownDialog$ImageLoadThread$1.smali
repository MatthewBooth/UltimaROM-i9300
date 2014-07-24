.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/samsung/android/cover/CoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;->this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;->this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    #getter for: Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->access$1700(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "ShutdownDialog"

    const-string v2, "cover state : %b"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;->this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    #setter for: Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z
    invoke-static {v1, v6}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->access$1802(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;->this$1:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    #setter for: Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->access$1702(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z

    return-void
.end method
