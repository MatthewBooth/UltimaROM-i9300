.class final Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #getter for: Lcom/android/server/AdaptiveDisplayColorService;->DEBUG:Z
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$900(Lcom/android/server/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdaptiveDisplayColorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsObserver: onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$SettingsObserver;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    #calls: Lcom/android/server/AdaptiveDisplayColorService;->setting_is_changed()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$1000(Lcom/android/server/AdaptiveDisplayColorService;)V

    return-void
.end method
