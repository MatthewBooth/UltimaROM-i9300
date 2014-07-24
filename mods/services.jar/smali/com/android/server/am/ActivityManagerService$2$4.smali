.class Lcom/android/server/am/ActivityManagerService$2$4;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$2;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2$4;->this$1:Lcom/android/server/am/ActivityManagerService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GATE"

    const-string v1, "<GATE-M>APP_ANR:ANR dialog has been cleared</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
