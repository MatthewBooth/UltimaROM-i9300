.class Lcom/android/server/TactileAssistSettings$ActuatorObserver;
.super Landroid/database/ContentObserver;
.source "TactileAssistSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TactileAssistSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActuatorObserver"
.end annotation


# instance fields
.field private mActuatorType:I

.field final synthetic this$0:Lcom/android/server/TactileAssistSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/TactileAssistSettings;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->this$0:Lcom/android/server/TactileAssistSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput p2, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->mActuatorType:I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v0, -0x1

    const/4 v1, -0x1

    const-string v3, "TactileAssist"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TactileAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On change Actuator Observer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->mActuatorType:I

    #calls: Lcom/android/server/TactileAssistSettings;->getActuatorTypeString(I)Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/TactileAssistSettings;->access$100(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->mActuatorType:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->this$0:Lcom/android/server/TactileAssistSettings;

    iget v4, p0, Lcom/android/server/TactileAssistSettings$ActuatorObserver;->mActuatorType:I

    #calls: Lcom/android/server/TactileAssistSettings;->storeLevels(IIII)V
    invoke-static {v3, v4, v2, v0, v1}, Lcom/android/server/TactileAssistSettings;->access$200(Lcom/android/server/TactileAssistSettings;IIII)V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_strength_erm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_density_erm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_sharpness_erm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_strength_serm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_density_serm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_sharpness_serm"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_strength_lra"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_density_lra"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_sharpness_lra"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_strength_pzo"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_density_pzo"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/TactileAssistSettings;->access$000()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "def_tactileassist_sharpness_pzo"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
