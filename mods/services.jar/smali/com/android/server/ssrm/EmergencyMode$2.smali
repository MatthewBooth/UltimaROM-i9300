.class Lcom/android/server/ssrm/EmergencyMode$2;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/EmergencyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/EmergencyMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/EmergencyMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x0

    const-string v2, "reason"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/ssrm/EmergencyMode$2;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/EmergencyMode;->onSettingChanged(Z)V

    :cond_2
    return-void
.end method
