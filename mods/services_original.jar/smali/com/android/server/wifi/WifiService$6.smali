.class Lcom/android/server/wifi/WifiService$6;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, ""

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1100()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1200()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->isBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$800(Lcom/android/server/wifi/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    #calls: Lcom/android/server/wifi/WifiService$WifiProfile;->checkNetworkName()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->access$1400(Lcom/android/server/wifi/WifiService$WifiProfile;)V

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1500()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->addWifiVendorProfile()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1100()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1000()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1200()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->isBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$800(Lcom/android/server/wifi/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiService$ApInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->getGeneralNwInfo()[Lcom/android/server/wifi/WifiService$ApInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->getPrevNetworkName()[Lcom/android/server/wifi/WifiService$ApInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->removeChangedWifiProfile()V

    const-string v2, ""

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$6;->this$0:Lcom/android/server/wifi/WifiService;

    #getter for: Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1300(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$WifiProfile;->addChangedWifiProfile()V

    goto :goto_0
.end method
