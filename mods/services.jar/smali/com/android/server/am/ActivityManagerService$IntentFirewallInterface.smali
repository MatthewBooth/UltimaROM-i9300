.class Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/firewall/IntentFirewall$AMSInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentFirewallInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIIZ)I
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public getAMSLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$IntentFirewallInterface;->this$0:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method
