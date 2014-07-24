.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static mRemoteScreenHeight:I

.field private static mRemoteScreenWidth:I


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    :goto_0
    sput v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    :goto_1
    sput v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    goto :goto_1
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    if-nez v12, :cond_0

    const/16 v12, 0x101

    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-nez v11, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v11, v1, v14

    if-nez v11, :cond_2

    move-wide v1, v3

    :cond_2
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v11, v13, 0x8

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    if-eqz p2, :cond_3

    const/4 v11, 0x2

    :goto_0
    invoke-virtual {v14, v0, v11}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v11

    return v11

    :cond_3
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    const v1, 0x10004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    invoke-virtual {v15}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v18

    if-eqz v18, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    :cond_0
    sget v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    int-to-float v0, v1

    move/from16 v20, v0

    :goto_0
    if-eqz v18, :cond_1

    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    :cond_1
    sget v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    int-to-float v0, v1

    move/from16 v19, v0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float v2, v17, v20

    mul-float v6, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    div-float v2, v16, v19

    mul-float v7, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1

    :cond_2
    sget v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    int-to-float v0, v1

    move/from16 v20, v0

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    int-to-float v0, v1

    move/from16 v19, v0

    goto :goto_1
.end method

.method public static updateRemoteScreenDimensions(II)V
    .locals 2

    const-string v0, "RemoteInjection"

    const-string v1, "RemoteInjectionService: updateRemoteScreenDimensions()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    sput p1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    return-void
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 10

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v5, "Remote Control"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a keystroke event into the UI succeeded"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v7

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v3, "RemoteInjection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error injecting trackball event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a keystroke event into the UI failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11

    const/4 v0, 0x5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a pointer (touch) event into the UI succeeded"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v7

    :catch_0
    move-exception v6

    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a pointer (touch) event into the UI failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11

    const/4 v0, 0x5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v4, "Remote Control"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a trackball event into the UI succeeded"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v7

    :catch_0
    move-exception v6

    const-string v2, "RemoteInjection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error injecting trackball event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Remotely injecting a trackball event into the UI failed"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
