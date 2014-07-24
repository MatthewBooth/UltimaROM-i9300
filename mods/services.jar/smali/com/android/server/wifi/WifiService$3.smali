.class Lcom/android/server/wifi/WifiService$3;
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

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/wifi/WifiService;->isBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiService;->access$802(Lcom/android/server/wifi/WifiService;Z)Z

    const-string v0, "WifiService"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    return-void
.end method
