.class Lcom/android/server/smartclip/SmartClipView$10;
.super Ljava/lang/Object;
.source "SmartClipView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SmartClipView;->cropDraggedRect()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SmartClipView;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SmartClipView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.SMARTCLIP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "cropRect"

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordXForIntent:I
    invoke-static {v4}, Lcom/android/server/smartclip/SmartClipView;->access$5100(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMinCoordYForIntent:I
    invoke-static {v5}, Lcom/android/server/smartclip/SmartClipView;->access$5300(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordXForIntent:I
    invoke-static {v6}, Lcom/android/server/smartclip/SmartClipView;->access$5000(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mMaxCoordYForIntent:I
    invoke-static {v7}, Lcom/android/server/smartclip/SmartClipView;->access$5200(Lcom/android/server/smartclip/SmartClipView;)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "repository"

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    iget-object v3, v3, Lcom/android/server/smartclip/SmartClipView;->mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "cropPointList"

    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mCropPointList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/smartclip/SmartClipView;->access$5700(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$5800(Lcom/android/server/smartclip/SmartClipView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView;->access$200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/smartclip/SmartClipView$10;->this$0:Lcom/android/server/smartclip/SmartClipView;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mIsStartingSuggestionService:Z
    invoke-static {v2, v3}, Lcom/android/server/smartclip/SmartClipView;->access$5802(Lcom/android/server/smartclip/SmartClipView;Z)Z

    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsStartingSuggestionService is changed false to true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
