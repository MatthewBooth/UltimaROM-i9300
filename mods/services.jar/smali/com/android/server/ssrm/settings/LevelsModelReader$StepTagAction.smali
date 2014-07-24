.class Lcom/android/server/ssrm/settings/LevelsModelReader$StepTagAction;
.super Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/LevelsModelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StepTagAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$StepTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    const-string/jumbo v0, "step"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v4, 0x0

    const-string v3, "id"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "temp"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$StepTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    #getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$300(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not unique."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$StepTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    #getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$300(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
