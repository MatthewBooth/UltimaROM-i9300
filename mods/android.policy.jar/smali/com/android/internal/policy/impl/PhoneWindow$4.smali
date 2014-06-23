.class Lcom/android/internal/policy/impl/PhoneWindow$4;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x4170

    const/high16 v5, -0x3e90

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXvalue:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2502(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYvalue:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2602(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXButton:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2102(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYButton:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2202(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXButton:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v4

    sub-float v1, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYButton:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v4

    sub-float v2, v3, v4

    cmpg-float v3, v1, v7

    if-gtz v3, :cond_2

    cmpl-float v3, v1, v5

    if-ltz v3, :cond_2

    cmpg-float v3, v2, v7

    if-gtz v3, :cond_2

    cmpl-float v3, v2, v5

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v4, Landroid/view/KeyEvent;

    const/16 v5, 0x52

    invoke-direct {v4, v6, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(ILandroid/view/KeyEvent;)V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->setGONE_MenuButton(Landroid/view/View;)V
    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXButton:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2102(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYButton:F
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2202(Lcom/android/internal/policy/impl/PhoneWindow;F)F

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldXvalue:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v4

    sub-float v1, v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->oldYvalue:F
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2600(Lcom/android/internal/policy/impl/PhoneWindow;)F

    move-result v4

    sub-float v2, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v3, :cond_4

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->setGONE_MenuButton(Landroid/view/View;)V
    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/View;)V

    goto/16 :goto_0
.end method
