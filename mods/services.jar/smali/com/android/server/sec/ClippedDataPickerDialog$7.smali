.class Lcom/android/server/sec/ClippedDataPickerDialog$7;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

.field final synthetic val$currentMode:I

.field final synthetic val$data:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/ClipboardData;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    iput p3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v3, ""

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    iget v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    if-nez v6, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "title"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "content"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_2
    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataText;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$data:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v6, "sec_container_1.android.intent.action.CLIPBOARD_TO_MEMO_INSERT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not save content..currentMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->val$currentMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", intent :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sendData :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mContext :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$7;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
