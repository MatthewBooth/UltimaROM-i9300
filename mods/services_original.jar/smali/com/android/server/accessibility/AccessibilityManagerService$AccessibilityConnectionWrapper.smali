.class Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityConnectionWrapper"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final mUserId:I

.field private final mWindowId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mWindowId:I

    iput p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mUserId:I

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->unlinkToDeath()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mWindowId:I

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mUserId:I

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V
    invoke-static {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;II)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
