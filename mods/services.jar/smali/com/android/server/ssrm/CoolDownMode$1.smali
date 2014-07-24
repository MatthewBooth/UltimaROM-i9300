.class Lcom/android/server/ssrm/CoolDownMode$1;
.super Ljava/lang/Object;
.source "CoolDownMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/CoolDownMode;->showCoolDownAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CoolDownMode;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CoolDownMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/CoolDownMode$1;->this$0:Lcom/android/server/ssrm/CoolDownMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
