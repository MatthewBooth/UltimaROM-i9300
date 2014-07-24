.class Lcom/android/server/SEAMService$1;
.super Landroid/content/BroadcastReceiver;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SEAMService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/SEAMService;->access$002(Z)Z

    return-void
.end method
