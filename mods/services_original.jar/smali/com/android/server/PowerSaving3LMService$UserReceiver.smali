.class final Lcom/android/server/PowerSaving3LMService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerSaving3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerSaving3LMService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService$UserReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService$UserReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v3, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerSaving3LMService$UserReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    #calls: Lcom/android/server/PowerSaving3LMService;->removeUserData(I)V
    invoke-static {v2, v1}, Lcom/android/server/PowerSaving3LMService;->access$800(Lcom/android/server/PowerSaving3LMService;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerSaving3LMService$UserReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I
    invoke-static {v2, v3}, Lcom/android/server/PowerSaving3LMService;->access$902(Lcom/android/server/PowerSaving3LMService;I)I

    iget-object v2, p0, Lcom/android/server/PowerSaving3LMService$UserReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    #getter for: Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z
    invoke-static {v2}, Lcom/android/server/PowerSaving3LMService;->access$1000(Lcom/android/server/PowerSaving3LMService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PowerSaving3LMService$UserReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    #calls: Lcom/android/server/PowerSaving3LMService;->setForgroundPackage()V
    invoke-static {v2}, Lcom/android/server/PowerSaving3LMService;->access$400(Lcom/android/server/PowerSaving3LMService;)V

    goto :goto_0
.end method
