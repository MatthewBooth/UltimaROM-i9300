.class Lcom/android/server/ssrm/Monitor$21;
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

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    return-void
.end method

.method private speakSiopInformation(Lcom/android/server/ssrm/settings/Setting;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    sget v0, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-double v7, v0

    const-wide v9, 0x412e848000000000L

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    sget v1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const v2, 0xf4240

    if-le v1, v2, :cond_1

    const v2, 0xf4240

    div-int/2addr v1, v2

    :cond_1
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Graphic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_2
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

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

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

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/server/ssrm/Monitor;->mSiopLevel:I

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v1, v1, Lcom/android/server/ssrm/Monitor;->mSiopLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/Limiter;->broadcastSiopLevelIntent(I)V

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$21;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DevSysProperty;->isTtsFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor$21;->speakSiopInformation(Lcom/android/server/ssrm/settings/Setting;)V

    :cond_0
    return-void
.end method
