.class Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x4

    const/4 v11, -0x1

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v7

    if-nez v7, :cond_1

    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception error in Enroll : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x4

    :try_start_1
    new-array v4, v7, [S

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeEnroll()I

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x65

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v12, :cond_c

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryProcessEnroll()I

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v7, :cond_2

    if-nez v0, :cond_d

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    add-int/lit8 v8, v1, 0x1

    int-to-short v8, v8

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkResultEnroll(SS)I

    move-result v5

    :cond_2
    :goto_2
    if-nez v5, :cond_e

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v7, :cond_3

    const/4 v2, -0x1

    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "secMM: ProcessEnroll.result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v12, :cond_9

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x66

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    invoke-virtual {v7, v8, v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->consistencyCheckEnroll(S[S)I

    move-result v3

    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consistencyCheckEnroll.result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v12, :cond_6

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_12

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "secMM: Start doEnroll"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    :cond_5
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "secMM: End doEnroll"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    const/4 v7, 0x5

    if-ne v3, v7, :cond_7

    add-int/lit8 v1, v1, -0x1

    const/4 v0, 0x1

    :cond_7
    const/4 v7, 0x6

    if-lt v3, v7, :cond_8

    const/4 v1, -0x1

    const/4 v2, -0x3

    const/4 v0, 0x0

    :cond_8
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x67

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    :cond_9
    if-ne v2, v11, :cond_13

    add-int/lit8 v1, v1, -0x1

    :cond_a
    :goto_6
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v7, :cond_b

    if-ne v5, v13, :cond_b

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x65

    add-int/lit8 v9, v1, 0x1

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    :cond_b
    :goto_7
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-nez v7, :cond_17

    :cond_c
    :goto_8
    const/4 v7, -0x3

    if-ne v2, v7, :cond_18

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v8, 0x0

    #setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v7, v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pause to enroll, isRunning_enroll : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    const/4 v8, 0x0

    aget-short v8, v4, v8

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkResultEnroll(SS)I

    move-result v5

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VSG: ReENROLL for index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-short v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    if-ne v5, v13, :cond_f

    add-int/lit8 v2, v1, 0x1

    goto/16 :goto_3

    :cond_f
    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    const/4 v2, -0x3

    goto/16 :goto_3

    :cond_10
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ProcessEnroll()I

    move-result v2

    goto/16 :goto_3

    :cond_11
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9}, Lcom/samsung/voiceshell/VoiceEngine;->consistencyCheckEnroll(Ljava/lang/String;S)I

    move-result v3

    goto/16 :goto_4

    :cond_12
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v7, v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/VoiceEngine;->setModelStatus(Ljava/lang/String;IS)I

    sget-object v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    const/4 v9, 0x1

    aput v9, v7, v8

    goto/16 :goto_5

    :cond_13
    const/4 v7, -0x2

    if-ne v2, v7, :cond_14

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_6

    :cond_14
    const/4 v7, -0x3

    if-eq v2, v7, :cond_c

    const/4 v7, -0x4

    if-ne v2, v7, :cond_15

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x68

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    const/4 v10, 0x0

    aget-short v9, v9, v10

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_8

    :cond_15
    const/4 v7, -0x5

    if-ne v2, v7, :cond_a

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x69

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_8

    :cond_16
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v8, 0x65

    add-int/lit8 v9, v1, 0x1

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_7

    :cond_17
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_18
    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    iget-object v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v8, 0x0

    #setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v7, v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
