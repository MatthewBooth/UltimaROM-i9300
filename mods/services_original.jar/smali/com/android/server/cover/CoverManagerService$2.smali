.class Lcom/android/server/cover/CoverManagerService$2;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerService;->handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    #getter for: Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$800(Lcom/android/server/cover/CoverManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService$2;->this$0:Lcom/android/server/cover/CoverManagerService;

    #getter for: Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerService;->access$800(Lcom/android/server/cover/CoverManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
