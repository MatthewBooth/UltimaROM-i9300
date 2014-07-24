.class Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->mVideoCapabilityAlert:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->access$102(Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
