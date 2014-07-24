.class Lcom/android/server/sec/InternalClipboardExService$5$1;
.super Ljava/lang/Object;
.source "InternalClipboardExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/InternalClipboardExService$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/InternalClipboardExService$5;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$5$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$5$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$5;

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$5$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$5;

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$5$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$5;

    iget-object v1, v1, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$800(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->createClearConfirmDialog(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$5$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$5;

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$5$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$5;

    iget-object v0, v0, Lcom/android/server/sec/InternalClipboardExService$5;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$700(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClearDialog:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
