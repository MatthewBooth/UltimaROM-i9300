.class Lcom/android/server/sec/ClippedDataPickerDialog$6;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12

    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ClipboardServiceEx"

    const-string v10, "clipped dialog. onAnimationEnd START"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v9, v9, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v9, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->setDeletedItems(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-nez v4, :cond_4

    new-instance v5, Ljava/io/File;

    const-string v9, "/data/clipboard"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v9, "/data/clipboard/shared"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onAnimationEnd: rootPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; sharedPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v9, Ljava/io/File;

    const-string v10, "clips.info"

    invoke-direct {v9, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v9, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    if-eqz v6, :cond_1

    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onAnimationEnd: current user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; mSelectedIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I
    invoke-static {v11}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ; rootfm.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v9

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v10

    if-lt v9, v10, :cond_1

    new-instance v8, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "shared_clips.info"

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;I)V

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v9

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onAnimationEnd: data = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I
    invoke-static {v10}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$900(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    sget v9, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v9, v9, -0x1

    sput v9, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mIsDeletingItem:Z
    invoke-static {v9, v10}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1002(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->isKnoxTwoEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v0, :cond_2

    const-string v9, "ClipboardServiceEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onAnimationEnd: Sending clip removed broadcast! clip = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.samsung.knox.clipboard.clipremoved"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "RemovedClipFilePath"

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/server/sec/ClippedDataPickerDialog$6;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-virtual {v9}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/clipboard"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/clipboard"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/shared"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "clipped dialog. onAnimationRepeat START"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "clipped dialog. onAnimationStart START"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
