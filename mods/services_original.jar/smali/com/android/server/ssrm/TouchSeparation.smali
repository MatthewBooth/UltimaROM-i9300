.class public Lcom/android/server/ssrm/TouchSeparation;
.super Ljava/lang/Object;
.source "TouchSeparation.java"


# static fields
.field static final TOUCH_DEFAULT:I

.field static final TOUCH_DEFAULT_REAL:Ljava/lang/String;

.field static final TOUCH_MID:I

.field static final TOUCH_MID_REAL:Ljava/lang/String;

.field static final TOUCH_ZERO:I

.field static final TOUCH_ZERO_REAL:Ljava/lang/String;

.field private static instance:Lcom/android/server/ssrm/TouchSeparation;


# instance fields
.field final ACTION_DVFS_SSRM_REQUEST:Ljava/lang/String;

.field final ACTION_DVFS_SSRM_REQUEST_KNOX:Ljava/lang/String;

.field final IS_VISIBLE_WINDOW:Ljava/lang/String;

.field final RESPONSE_AXT9INFO:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field mCurrentTouchState:I

.field mIsSetDefault:Z

.field mTouchMidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTouchStateByIntent:I

.field mTouchStateByMap:I

.field mTouchStateBySIP:Z

.field mTouchZeroMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateForceTouchState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x14

    const/4 v1, 0x4

    const/4 v2, -0x1

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    sput v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    sput v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    sput v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    const-string/jumbo v0, "set_jitter_level,3"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    const-string/jumbo v0, "set_jitter_level,4"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    const-string/jumbo v0, "set_jitter_level,4"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v1, "_ha_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v1, "_hf_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x4b

    sput v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    sput v3, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    sput v3, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    const-string/jumbo v0, "set_jitter_level,75"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    const-string/jumbo v0, "set_jitter_level,20"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    const-string/jumbo v0, "set_jitter_level,20"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sput v2, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    sput v2, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    sput v2, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSRMv2:TouchSeparation"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->TAG:Ljava/lang/String;

    const-string v0, "com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->ACTION_DVFS_SSRM_REQUEST:Ljava/lang/String;

    const-string v0, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->ACTION_DVFS_SSRM_REQUEST_KNOX:Ljava/lang/String;

    const-string v0, "ResponseAxT9Info"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->RESPONSE_AXT9INFO:Ljava/lang/String;

    const-string v0, "AxT9IME.isVisibleWindow"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->IS_VISIBLE_WINDOW:Ljava/lang/String;

    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchMidMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/ssrm/TouchSeparation$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/TouchSeparation$1;-><init>(Lcom/android/server/ssrm/TouchSeparation;)V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Launcher"

    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Launcher"

    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/ssrm/TouchSeparation;
    .locals 1

    sget-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ssrm/TouchSeparation;

    invoke-direct {v0}, Lcom/android/server/ssrm/TouchSeparation;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    return-object v0
.end method

.method public static notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/TouchSeparation;->getInstance()Lcom/android/server/ssrm/TouchSeparation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ssrm/TouchSeparation;->onFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private onFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/TouchSeparation;->checkTouchFilterPackage(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    return-void
.end method


# virtual methods
.method protected calculateCurrentTouchMode()I
    .locals 2

    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    sget v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    sget v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0
.end method

.method checkTouchFilterPackage(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchMidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchSeparation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SSRMv2:TouchSeparation"

    const-string v2, "onReveive::ACTION_DVFS_SSRM_REQUEST:: TouchSeparation "

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SSRM_STATUS_VALUE"

    sget v2, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SSRMv2:TouchSeparation"

    const-string v2, "onReceive:: RESPONSE_AXT9INFO"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SSRMv2:TouchSeparation"

    const-string v2, "onReceive:: Intent.ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    iget-object v1, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SSRMv2:TouchSeparation"

    const-string v2, "onReceive:: Intent.ACTION_USER_PRESENT"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    iget-object v1, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected updateTouchMode()V
    .locals 1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    if-nez v0, :cond_1

    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchModeSysFS(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->calculateCurrentTouchMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchModeSysFS(I)V

    goto :goto_0
.end method

.method protected updateTouchModeSysFS(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "SSRMv2:TouchSeparation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTouchModeSysFS :: new value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    if-ne p1, v0, :cond_2

    const-string v0, "SSRMv2:TouchSeparation"

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateJitterBooster(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput p1, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    :cond_1
    return-void

    :cond_2
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    if-ne p1, v0, :cond_3

    const-string v0, "SSRMv2:TouchSeparation"

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateJitterBooster(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "SSRMv2:TouchSeparation"

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateJitterBooster(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
