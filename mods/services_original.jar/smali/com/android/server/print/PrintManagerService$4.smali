.class Lcom/android/server/print/PrintManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService;->registerBoradcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$4;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$4;->this$0:Lcom/android/server/print/PrintManagerService;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/server/print/PrintManagerService;->switchUser(I)V
    invoke-static {v1, v2}, Lcom/android/server/print/PrintManagerService;->access$500(Lcom/android/server/print/PrintManagerService;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$4;->this$0:Lcom/android/server/print/PrintManagerService;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/server/print/PrintManagerService;->removeUser(I)V
    invoke-static {v1, v2}, Lcom/android/server/print/PrintManagerService;->access$600(Lcom/android/server/print/PrintManagerService;I)V

    goto :goto_0
.end method
