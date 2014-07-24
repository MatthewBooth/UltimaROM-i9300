.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeAnimationListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    #calls: Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto :goto_0
.end method
