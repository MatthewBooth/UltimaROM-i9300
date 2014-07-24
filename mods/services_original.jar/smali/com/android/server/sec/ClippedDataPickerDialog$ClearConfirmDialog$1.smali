.class Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_c

    const-string v14, "ClipboardServiceEx"

    const-string v15, "pressed OK"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v3

    const/4 v9, 0x0

    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "clear button touched... count :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_5

    new-instance v10, Ljava/io/File;

    const-string v14, "/data/clipboard"

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v14, "/data/clipboard/shared"

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onClear: Current User = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ; rootPath = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ; sharedPath = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_9

    sget-boolean v14, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mCbm.getDataListSize() :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #calls: Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z
    invoke-static {v14, v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_6

    add-int/lit8 v9, v9, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    new-instance v10, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/clipboard"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/data/clipboard"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/shared"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v14, v5}, Lcom/android/server/sec/ClippedDataPickerGridView;->setDeletedItems(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    new-instance v11, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v14, Ljava/io/File;

    const-string v15, "clips.info"

    invoke-direct {v14, v10, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v14, v8}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onClear: protectCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ; rootfm.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v14

    if-lt v9, v14, :cond_8

    new-instance v13, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "shared_clips.info"

    invoke-direct {v14, v12, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v13, v14, v8}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    if-eqz v13, :cond_7

    invoke-virtual {v11}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v13, v14}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v4

    :cond_7
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onClear: data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v14

    invoke-interface {v14, v9}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    sget v14, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v14, v14, -0x1

    sput v14, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onClear: A shared clip is deleted! data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v14

    if-eqz v14, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_a

    const-string v14, "ClipboardServiceEx"

    const-string v15, "onClear: Sending ClipsCleared broadcast"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.samsung.knox.clipboard.clipscleared"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "ClearedClipsArray"

    invoke-virtual {v7, v14, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDarkTheme:Z
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Z

    move-result v14

    if-eqz v14, :cond_b

    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x1030128

    invoke-direct {v2, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_4
    const v14, 0x1040b4a

    const/4 v15, 0x0

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v14, v14, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto/16 :goto_0

    :cond_b
    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x103012b

    invoke-direct {v2, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_4

    :cond_c
    const/4 v14, -0x2

    move/from16 v0, p2

    if-ne v0, v14, :cond_d

    const-string v14, "ClipboardServiceEx"

    const-string v15, "pressed CANCEL"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v14, "ClipboardServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pressed invalid button. arg1 :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
