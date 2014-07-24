.class Lcom/android/server/enterprise/wifi/WifiPolicy$2$2;
.super Ljava/lang/Object;
.source "WifiPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$2;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2$2;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$2$2;->this$1:Lcom/android/server/enterprise/wifi/WifiPolicy$2;

    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy$2;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmUpdateConfiguredNetworks()V

    return-void
.end method
