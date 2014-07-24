.class Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$6;
.super Landroid/os/Handler;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->handleSettingUpdated()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12f0
        :pswitch_0
    .end packed-switch
.end method
