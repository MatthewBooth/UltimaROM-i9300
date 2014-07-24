.class Lcom/android/server/smartclip/SmartClipView$4;
.super Landroid/os/Handler;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SmartClipView;->init()V
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

    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipView$4;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$4;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #calls: Lcom/android/server/smartclip/SmartClipView;->startAniForLoadingService()V
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$500(Lcom/android/server/smartclip/SmartClipView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$4;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$600(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$4;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$600(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$4;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #getter for: Lcom/android/server/smartclip/SmartClipView;->mLoadingAniImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView;->access$600(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$4;->this$0:Lcom/android/server/smartclip/SmartClipView;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SmartClipView;->closeView()V

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$4;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mIsLiveCropThread:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView;->access$702(Lcom/android/server/smartclip/SmartClipView;Z)Z

    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$4;->this$0:Lcom/android/server/smartclip/SmartClipView;

    #setter for: Lcom/android/server/smartclip/SmartClipView;->mIsClosedCurve:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView;->access$802(Lcom/android/server/smartclip/SmartClipView;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
