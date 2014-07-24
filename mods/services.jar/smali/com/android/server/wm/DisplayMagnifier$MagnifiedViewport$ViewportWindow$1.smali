.class Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;
.super Ljava/lang/Object;
.source "DisplayMagnifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setShown(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field final synthetic val$animator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->this$2:Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    iput-object p2, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayMagnifier$MagnifiedViewport$ViewportWindow$1;->val$animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
