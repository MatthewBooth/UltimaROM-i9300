.class final Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerSaving3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerSaving3LMService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    #getter for: Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/PowerSaving3LMService;->access$200(Lcom/android/server/PowerSaving3LMService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    #getter for: Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/PowerSaving3LMService;->access$200(Lcom/android/server/PowerSaving3LMService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/PowerSaving3LMService$ScreenReceiver;

    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;->this$0:Lcom/android/server/PowerSaving3LMService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/PowerSaving3LMService$ScreenReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
