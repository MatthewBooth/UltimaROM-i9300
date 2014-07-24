.class Lcom/android/server/TactileAssistSettings$TactileAssistObserver;
.super Landroid/database/ContentObserver;
.source "TactileAssistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TactileAssistSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TactileAssistObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TactileAssistSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/TactileAssistSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/TactileAssistSettings$TactileAssistObserver;->this$0:Lcom/android/server/TactileAssistSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9

    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v6, "TactileAssist"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "TactileAssist"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tactileassistObserver selfchange"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "def_tactileassist_level"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "def_tactileassist_enable"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "def_tactileassist_internal_enable"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-gt v3, v5, :cond_1

    if-ge v3, v4, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "def_tactileassist_level"

    if-le v3, v5, :cond_2

    move v4, v5

    :cond_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-gt v1, v4, :cond_5

    if-gez v1, :cond_7

    :cond_5
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "def_tactileassist_enable"

    if-le v3, v4, :cond_6

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "TactileAssist"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "TactileAssist"

    const-string v5, "Exception caught in onChange()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    if-gt v2, v4, :cond_8

    if-gez v2, :cond_9

    :cond_8
    :try_start_1
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_tactileassist_internal_enable"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_9
    const-string v4, "TactileAssist"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "TactileAssist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved Settings with tactileassistLevel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and tactileassistEnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and tactileassistInternalEnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v4, p0, Lcom/android/server/TactileAssistSettings$TactileAssistObserver;->this$0:Lcom/android/server/TactileAssistSettings;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/server/TactileAssistSettings;->storeTactileAssistSettings(IIIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
