.class Lcom/android/server/power/ShutdownDialog$1;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$1;->this$0:Lcom/android/server/power/ShutdownDialog;

    #getter for: Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
