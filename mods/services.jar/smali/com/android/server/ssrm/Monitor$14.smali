.class Lcom/android/server/ssrm/Monitor$14;
.super Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$14;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applySetting(Lcom/android/server/ssrm/settings/Setting;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$14;->this$0:Lcom/android/server/ssrm/Monitor;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSRM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$14;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/Limiter;->limitFlashLed(Z)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$14;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {v0}, Lcom/android/server/ssrm/Limiter;->broadcastSiopChangedIntent()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
