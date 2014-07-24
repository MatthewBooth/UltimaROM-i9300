.class Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;
.super Ljava/lang/Object;
.source "AbsAirViewOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$fps:I


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iput-object p2, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->val$fps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iget-boolean v3, v3, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mFpsSysfsTableInit:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iput-boolean v6, v3, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-virtual {v3}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xa

    :goto_1
    if-lez v0, :cond_0

    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v3, "SSRMv2:TSP:AirViewOnOff"

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->val$filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SSRMv2:TSP:AirViewOnOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameRateUpdate:: Current FPS trim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->access$100(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iget v4, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->val$fps:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->checkFPS(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iput-boolean v6, v3, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->mForceUpdateSysfs:Z

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iget v4, p0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff$2;->val$fps:I

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->updateAirViewStatus(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "SSRMv2:TSP:AirViewOnOff"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameRateUpdate:: exception msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
