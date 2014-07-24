.class Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    return-void
.end method
