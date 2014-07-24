.class Lcom/android/server/connectivity/Vpn$1;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "Vpn"

    const-string v1, "onServiceConnected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/sec/android/service/sm/service/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/service/sm/service/ISecurityManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$002(Lcom/sec/android/service/sm/service/ISecurityManager;)Lcom/sec/android/service/sm/service/ISecurityManager;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Vpn"

    const-string v1, "onServiceDisconnected called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$002(Lcom/sec/android/service/sm/service/ISecurityManager;)Lcom/sec/android/service/sm/service/ISecurityManager;

    return-void
.end method
