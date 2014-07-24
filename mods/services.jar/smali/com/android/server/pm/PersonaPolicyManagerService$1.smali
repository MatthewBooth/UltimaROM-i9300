.class Lcom/android/server/pm/PersonaPolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    #calls: Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->access$000(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    #calls: Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->access$000(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService$1;->this$0:Lcom/android/server/pm/PersonaPolicyManagerService;

    #calls: Lcom/android/server/pm/PersonaPolicyManagerService;->removePersonaData(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->access$100(Lcom/android/server/pm/PersonaPolicyManagerService;I)V

    :cond_0
    return-void
.end method
