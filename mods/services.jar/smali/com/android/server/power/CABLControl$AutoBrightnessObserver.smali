.class Lcom/android/server/power/CABLControl$AutoBrightnessObserver;
.super Landroid/database/ContentObserver;
.source "CABLControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/CABLControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/CABLControl;


# direct methods
.method constructor <init>(Lcom/android/server/power/CABLControl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/CABLControl$AutoBrightnessObserver;->this$0:Lcom/android/server/power/CABLControl;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    invoke-static {}, Lcom/android/server/power/CABLControl;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v2, "PMSCabl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoBrightnessObserver.onChange:: autoBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/power/CABLControl;->access$102(Z)Z

    iget-object v2, p0, Lcom/android/server/power/CABLControl$AutoBrightnessObserver;->this$0:Lcom/android/server/power/CABLControl;

    #calls: Lcom/android/server/power/CABLControl;->isTablet()Z
    invoke-static {v2}, Lcom/android/server/power/CABLControl;->access$200(Lcom/android/server/power/CABLControl;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_1
    return-void
.end method
