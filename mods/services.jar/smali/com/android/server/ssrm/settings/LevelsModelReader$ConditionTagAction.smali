.class Lcom/android/server/ssrm/settings/LevelsModelReader$ConditionTagAction;
.super Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/LevelsModelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConditionTagAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$ConditionTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    const-string v0, "condition"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    const/4 v1, 0x0

    const-string v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$ConditionTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    #getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$600(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Condition name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not unique."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$ConditionTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    #getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$600(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
