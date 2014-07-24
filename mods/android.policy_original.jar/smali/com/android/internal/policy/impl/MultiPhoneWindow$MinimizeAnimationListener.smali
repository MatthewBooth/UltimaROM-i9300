.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinimizeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v4, v5, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v4, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/widget/ImageView;)V

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v5, 0x0

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4400(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a0059

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a005a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5

    const/16 v4, 0x8

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowTitleBar:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
