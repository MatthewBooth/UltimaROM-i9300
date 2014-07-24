.class Lcom/android/server/NotificationManagerService$7$1;
.super Landroid/app/INotificationPlayerOnCompletionListener$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationManagerService$7;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$7$1;->this$1:Lcom/android/server/NotificationManagerService$7;

    invoke-direct {p0}, Landroid/app/INotificationPlayerOnCompletionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$7$1;->this$1:Lcom/android/server/NotificationManagerService$7;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NotificationManagerService$7$1;->this$1:Lcom/android/server/NotificationManagerService$7;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$900(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$7$1;->this$1:Lcom/android/server/NotificationManagerService$7;

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$7;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Z)Z

    return-void
.end method
