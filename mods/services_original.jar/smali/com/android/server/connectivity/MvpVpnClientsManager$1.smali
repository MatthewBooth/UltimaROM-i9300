.class Lcom/android/server/connectivity/MvpVpnClientsManager$1;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "MvpVpnClientsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/MvpVpnClientsManager;->clearMvpList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/MvpVpnClientsManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/MvpVpnClientsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/MvpVpnClientsManager$1;->this$0:Lcom/android/server/connectivity/MvpVpnClientsManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/connectivity/MvpVpnClientsManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been cleared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/MvpVpnClientsManager$1;->this$0:Lcom/android/server/connectivity/MvpVpnClientsManager;

    #calls: Lcom/android/server/connectivity/MvpVpnClientsManager;->removeMvpClientFromList(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/connectivity/MvpVpnClientsManager;->access$100(Lcom/android/server/connectivity/MvpVpnClientsManager;Ljava/lang/String;)V

    return-void
.end method
