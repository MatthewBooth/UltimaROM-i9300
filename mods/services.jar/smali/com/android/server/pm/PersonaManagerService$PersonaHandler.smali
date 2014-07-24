.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "PersonaHandler"

    #calls: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 61

    const-string v55, "PersonaHandler"

    #calls: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$100(Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v55, v0

    packed-switch v55, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v55, v0

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0x1388

    move/from16 v55, v0

    const/16 v56, 0x1388

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v55, v0

    move/from16 v0, v55

    add-int/lit16 v0, v0, -0x1388

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v55

    if-eqz v55, :cond_1

    const-string v55, "PersonaManagerServiceHandler"

    const-string/jumbo v56, "setPersonaState mHandlerCacheManager is not null & onSessionExpired called."

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mHandlerCacheManager:Lcom/android/server/pm/HandlerCacheManager;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/pm/HandlerCacheManager;->onSessionExpired(I)V

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v56

    monitor-enter v56

    if-eqz v16, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v57, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/PersonaInfo;

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v55

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v55

    if-eqz v55, :cond_2

    const-string v55, "PersonaManagerServiceHandler"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    const/16 v58, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v57

    move/from16 v2, v58

    #calls: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_2

    :catchall_0
    move-exception v55

    monitor-exit v56
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v55

    :cond_3
    :try_start_1
    monitor-exit v56
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :pswitch_2
    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v35

    move/from16 v2, v56

    #calls: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    :pswitch_3
    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "MSG_STOP_TIMER called :"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v55, 0x1

    move/from16 v0, v18

    move/from16 v1, v55

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v35

    #calls: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v55

    if-eqz v55, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v35

    #calls: Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :pswitch_4
    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v35

    move/from16 v2, v56

    #calls: Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Lcom/android/server/pm/PersonaManagerService;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v35

    #calls: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v55

    if-eqz v55, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v35

    #calls: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Bundle;

    const-string/jumbo v55, "type"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    const-string v55, "flag"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v55, "uid"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v51

    const-string v55, "pid"

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v42

    const-string v55, "package"

    const-string v56, ""

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v51 .. v51}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v49

    move/from16 v2, v17

    move/from16 v3, v51

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_0

    :pswitch_6
    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "MSG_ACTION_SCREEN_OFF called"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v56

    monitor-enter v56

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v57, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/PersonaInfo;

    if-eqz v31, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    move-object/from16 v0, v55

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v57

    const-wide/16 v59, 0x0

    cmp-long v55, v57, v59

    if-nez v55, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    move-object/from16 v0, v55

    move/from16 v1, v57

    #calls: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v55

    if-eqz v55, :cond_5

    const-string v55, "PersonaManagerServiceHandler"

    const-string v57, "MSG_ACTION_SCREEN_OFF screen time = 0, change state and switch"

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    move-object/from16 v0, v55

    move/from16 v1, v57

    #calls: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;I)V

    goto :goto_3

    :catchall_1
    move-exception v55

    monitor-exit v56
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v55

    :cond_6
    :try_start_3
    monitor-exit v56
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :pswitch_7
    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v56

    monitor-enter v56

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v57, 0x1

    move-object/from16 v0, v55

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_7
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/PersonaInfo;

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v55

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    const-string v55, "PersonaManagerServiceHandler"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "mTimerMap.get(pInfo.id) called:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v58, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static/range {v58 .. v58}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v58

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v55

    if-eqz v55, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    const/16 v58, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v57

    move/from16 v2, v58

    #calls: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_4

    :catchall_2
    move-exception v55

    monitor-exit v56
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v55

    :cond_8
    :try_start_5
    monitor-exit v56
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    :pswitch_8
    :try_start_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v54

    #calls: Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cannot process DPM state change broadcast :"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v20

    :goto_5
    if-lez v20, :cond_9

    add-int/lit8 v20, v20, -0x1

    const-string v55, "PersonaManagerService"

    const-string v56, " sending remove persona event to system observers "

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v55

    check-cast v55, Landroid/content/pm/ISystemPersonaObserver;

    move-object/from16 v0, v55

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v13

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Exception Caught:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_a
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v56

    invoke-virtual/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v50

    if-eqz v50, :cond_a

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Removing partially created user #"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v50

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " (name="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->name:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ")"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v56, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;I)V

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :pswitch_b
    :try_start_9
    const-string v55, "PersonaManagerService"

    const-string v56, "reading from xml resource for fota"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x10f000a

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v34

    new-instance v19, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v55

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;-><init>(Lcom/android/server/pm/PersonaManagerService;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->readFromXml()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PersonaManagerService$FotaXmlDataParser;->getAppList()Ljava/util/ArrayList;

    move-result-object v56

    #setter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->access$1902(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_c
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/pm/PersonaInfo;

    if-eqz v41, :cond_c

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_c

    invoke-virtual/range {v41 .. v41}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v55

    if-eqz v55, :cond_c

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v55, v0

    const-string v56, "persona_file_system"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v57, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static/range {v57 .. v57}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v57

    const/16 v58, 0x0

    invoke-static/range {v55 .. v58}, Lcom/android/server/pm/HandlerCacheManager;->registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V

    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    move/from16 v55, v0

    if-nez v55, :cond_f

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v55, v0

    const/16 v56, 0x4

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->state:I

    move/from16 v55, v0

    const/16 v56, 0x3

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_f

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v55

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v56, v0

    const/16 v57, 0x0

    invoke-virtual/range {v41 .. v41}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v58

    invoke-virtual/range {v41 .. v41}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v59

    invoke-virtual/range {v55 .. v59}, Lcom/sec/knox/container/util/KnoxFileHandler;->mount(ILjava/lang/String;ZI)Z

    move-result v27

    if-nez v27, :cond_d

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "File system not mounted successfully for"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "."

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_8

    :catch_2
    move-exception v12

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Failed to mount file system. "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catch_3
    move-exception v12

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Failed to open file - Exception: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_d
    :try_start_b
    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "File system successfully mounted for"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, "."

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    if-eqz v55, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v55

    if-eqz v55, :cond_c

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Persona firmware version : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v57, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    if-eqz v55, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_c

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v56, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static/range {v55 .. v56}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "AppUpgradeInfo: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v56, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v57, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static/range {v55 .. v57}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_9

    :cond_f
    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Did not mount file system for superLocked persona "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " or due to container state."

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_c
    :try_start_c
    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    const-string v56, "persona"

    invoke-virtual/range {v55 .. v56}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/PersonaManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    const-string v56, "activity"

    invoke-virtual/range {v55 .. v56}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    if-eqz v39, :cond_0

    const/16 v55, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v38

    if-eqz v38, :cond_0

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v55

    if-lez v55, :cond_0

    const/16 v55, 0x2

    move/from16 v0, v55

    new-array v0, v0, [I

    move-object/from16 v36, v0

    const/16 v28, 0x0

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move/from16 v29, v28

    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_13

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/pm/PersonaInfo;

    add-int/lit8 v28, v29, 0x1

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v55, v0

    aput v55, v36, v29

    new-instance v14, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-direct {v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v55, v0

    move/from16 v0, v55

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v30

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    new-instance v56, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v57, v0

    move-object/from16 v0, v56

    move/from16 v1, v30

    move/from16 v2, v57

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v15, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    if-eqz v55, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->size()I

    move-result v55

    if-eqz v55, :cond_12

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Persona firmware version : "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v57, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    if-eqz v55, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_12

    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mAppList:Ljava/util/ArrayList;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_10
    :goto_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-eqz v55, :cond_11

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Boot receiver AppUpgradeInfo: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " system:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mSystemApp:Z

    move/from16 v55, v0

    if-nez v55, :cond_10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$AppUpgradeInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_b

    :catch_4
    move-exception v12

    const-string v55, "PersonaManagerService"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    :try_start_d
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v55

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v55

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v0, v11, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #calls: Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v41

    #calls: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    move/from16 v29, v28

    goto/16 :goto_a

    :cond_13
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->softStartPersonas([I)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    :pswitch_d
    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/PersonaInfo;

    if-nez v37, :cond_14

    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_14
    :try_start_f
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v46

    if-eqz v46, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v9

    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "startRemovingPersona return code is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "Failed to switch persona. Aborted removing of persona..."

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v26

    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, " PersonaHandler:: resetting file system "

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, " resetPersona: resetting persona :"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->resetPartition(I)Z

    move-result v47

    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v35

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    goto/16 :goto_0

    :pswitch_f
    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "PersonaHandler.MSG_START_RESET_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/PersonaInfo;

    if-nez v37, :cond_16

    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_16
    :try_start_11
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v46

    if-eqz v46, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v35

    #calls: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(I)I
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;I)I

    move-result v9

    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "startResetPersona return code is "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "Failed to switch persona. Aborted reset of persona..."

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/PersonaInfo;

    if-nez v37, :cond_18

    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "PersonaHandler no personaInfo for this persona"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_18
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v33

    const-string v55, "PersonaManagerServiceHandler"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " adminUid= "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v46, 0x1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v55

    move/from16 v0, v35

    move/from16 v1, v55

    if-ne v0, v1, :cond_19

    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->switchPersona(I)Z

    move-result v46

    :cond_19
    const/16 v55, 0x8

    move/from16 v0, v48

    move/from16 v1, v55

    if-ne v0, v1, :cond_1a

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v55

    move/from16 v0, v55

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    const/16 v46, 0x0

    const-string v55, "PersonaManagerServiceHandler"

    const-string v56, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz v46, :cond_1b

    const-string v55, "PersonaManagerServiceHandler"

    const-string/jumbo v56, "stopPersona persona..."

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    goto/16 :goto_0

    :cond_1b
    const/16 v55, 0x8

    move/from16 v0, v48

    move/from16 v1, v55

    if-ne v0, v1, :cond_0

    new-instance v14, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-direct {v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    #getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v55

    move-object/from16 v0, v55

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v44

    if-eqz v44, :cond_1c

    move-object/from16 v7, v44

    array-length v0, v7

    move/from16 v25, v0

    const/16 v21, 0x0

    :goto_c
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    aget-object v43, v7, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v43

    move/from16 v2, v35

    move/from16 v3, v30

    #calls: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move/from16 v2, v35

    move/from16 v3, v30

    #calls: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
