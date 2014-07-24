.class Lcom/android/server/am/MultiWindowManagerService$4;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowManagerService;->notifyMultiDisplayState(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$4;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.NOTIFY_MULTIDISPLAY_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.extra.MULTIDISPLAY_STATUS"

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$4;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z
    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->access$700(Lcom/android/server/am/MultiWindowManagerService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$4;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    #getter for: Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
