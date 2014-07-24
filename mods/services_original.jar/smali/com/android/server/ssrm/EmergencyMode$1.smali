.class Lcom/android/server/ssrm/EmergencyMode$1;
.super Ljava/lang/Object;
.source "EmergencyMode.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/server/ssrm/EmergencyMode$1;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode$1;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    iget-object v1, v1, Lcom/android/server/ssrm/EmergencyMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    const-string v2, "dev.ssrm.emergencymode"

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ssrm/EmergencyMode$1;->this$0:Lcom/android/server/ssrm/EmergencyMode;

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/EmergencyMode;->onSettingChanged(Z)V

    return-void

    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method
