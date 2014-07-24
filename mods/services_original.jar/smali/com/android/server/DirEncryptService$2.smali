.class Lcom/android/server/DirEncryptService$2;
.super Landroid/content/BroadcastReceiver;
.source "DirEncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method constructor <init>(Lcom/android/server/DirEncryptService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirEncryptService received action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DirEncryptService received ACTION_BOOT_COMPLETED"

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    #calls: Lcom/android/server/DirEncryptService;->moveDumpstate()Z
    invoke-static {v1}, Lcom/android/server/DirEncryptService;->access$100(Lcom/android/server/DirEncryptService;)Z

    iget-object v1, p0, Lcom/android/server/DirEncryptService$2;->this$0:Lcom/android/server/DirEncryptService;

    #getter for: Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;
    invoke-static {v1}, Lcom/android/server/DirEncryptService;->access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setBootComplted(Z)V

    :cond_0
    return-void
.end method
