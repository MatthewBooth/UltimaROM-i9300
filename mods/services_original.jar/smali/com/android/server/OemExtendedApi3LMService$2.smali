.class Lcom/android/server/OemExtendedApi3LMService$2;
.super Landroid/content/BroadcastReceiver;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExtendedApi3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExtendedApi3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExtendedApi3LMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService$2;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android.intent.extra.user_handle"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "OemExtendedApi3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User switched, user id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService$2;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    #calls: Lcom/android/server/OemExtendedApi3LMService;->setCurrentUserId(I)V
    invoke-static {v5, v2}, Lcom/android/server/OemExtendedApi3LMService;->access$100(Lcom/android/server/OemExtendedApi3LMService;I)V

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne v2, v5, :cond_1

    const-string v5, "OemExtendedApi3LM"

    const-string v6, "Do necessary processing for owner user"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getNFCSavedState()I

    move-result v1

    if-eq v1, v8, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService$2;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    #getter for: Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;
    invoke-static {v5}, Lcom/android/server/OemExtendedApi3LMService;->access$200(Lcom/android/server/OemExtendedApi3LMService;)Landroid/os/IDeviceManager3LM;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IDeviceManager3LM;->getNfcState()I

    move-result v5

    if-eq v1, v5, :cond_0

    const-string v5, "OemExtendedApi3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NFC state is being set to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService$2;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    #getter for: Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;
    invoke-static {v5}, Lcom/android/server/OemExtendedApi3LMService;->access$200(Lcom/android/server/OemExtendedApi3LMService;)Landroid/os/IDeviceManager3LM;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService$2;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    invoke-virtual {v5}, Lcom/android/server/OemExtendedApi3LMService;->getFelicaSavedState()I

    move-result v0

    if-eq v0, v8, :cond_1

    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService$2;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    invoke-virtual {v5}, Lcom/android/server/OemExtendedApi3LMService;->getFelicaState()I

    move-result v5

    if-eq v0, v5, :cond_1

    const-string v5, "OemExtendedApi3LM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Felica state is being set to"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService$2;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    invoke-virtual {v5, v0}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    :cond_1
    return-void

    :catch_0
    move-exception v4

    const-string v5, "OemExtendedApi3LM"

    const-string v6, "Exception in accessing 3LM service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
