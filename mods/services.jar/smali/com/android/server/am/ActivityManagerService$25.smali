.class Lcom/android/server/am/ActivityManagerService$25;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->switchPersonaAndLaunch(ILandroid/content/Intent;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$personaId:I

.field final synthetic val$uss:Lcom/android/server/am/UserStartedState;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/UserStartedState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$25;->val$uss:Lcom/android/server/am/UserStartedState;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$25;->val$personaId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$25;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$25;->val$uss:Lcom/android/server/am/UserStartedState;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$25;->val$personaId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->userInitialized(Lcom/android/server/am/UserStartedState;I)V

    return-void
.end method
