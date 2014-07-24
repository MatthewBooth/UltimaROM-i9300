.class Lcom/android/server/ssrm/settings/LevelsModelReader;
.super Ljava/lang/Object;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/settings/LevelsModelReader$1;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$ConditionTagAction;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$WriterTagAction;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$StepTagAction;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
    }
.end annotation


# static fields
.field private static final BATTERY_TAG:Ljava/lang/String; = "battery"

.field private static final CONDITIONS_TAG:Ljava/lang/String; = "conditions"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field private static final DEBUG:Z = false

.field private static final DEBUG_TAG:Ljava/lang/String; = "LevelsModelReader"

.field private static final DEPENDS_ON_CONDITIONS_TAG:Ljava/lang/String; = "DependsOnConditions"

.field private static final LEVELS_TAG:Ljava/lang/String; = "levels"

.field private static final LEVEL_TAG:Ljava/lang/String; = "level"

.field private static final ROOT_TAG:Ljava/lang/String; = "LevelsModel"

.field private static final SETTINGS_TAG:Ljava/lang/String; = "settings"

.field private static final SETTING_TAG:Ljava/lang/String; = "setting"

.field private static final STATE_TAG:Ljava/lang/String; = "state"

.field private static final STEPS_TAG:Ljava/lang/String; = "steps"

.field private static final STEP_TAG:Ljava/lang/String; = "step"

.field private static TAG_PARENTS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final WRITERS_TAG:Ljava/lang/String; = "writers"

.field private static final WRITER_TAG:Ljava/lang/String; = "writer"


# instance fields
.field private final mConditionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Lcom/android/server/ssrm/settings/MainController;

.field private final mModelIs:Ljava/io/InputStream;

.field private final mRegistredConditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mSteps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagActionFactory:Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;

.field private final mTagStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriterNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "LevelsModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "steps"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "steps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "step"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "LevelsModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "writers"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "writers"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "writer"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "LevelsModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "conditions"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "conditions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "DependsOnConditions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "condition"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "LevelsModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "levels"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "levels"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "level"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "battery"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "battery"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "settings"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "setting"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "DependsOnConditions"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ssrm/settings/MainController;Ljava/io/InputStream;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/MainController;",
            "Ljava/io/InputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriterNames:Ljava/util/Set;

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "modelIs is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;

    iput-object p2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/settings/SettingWriter;

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Lcom/android/server/ssrm/settings/LevelsModelReader$1;)V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagActionFactory:Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->enterTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->leaveTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriterNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;

    return-object v0
.end method

.method private enterTag(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "Malformed model: invalid root tag"

    const-string v3, "LevelsModel"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed model: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> has wrong parent <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed model: invalid tag <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private leaveTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method processModel()V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/server/ssrm/settings/LevelsModelReader;->enterTag(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagActionFactory:Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;

    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;->getAction(Ljava/lang/String;)Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->doAction(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Malformed model."

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    :try_start_2
    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_2
    throw v5

    :pswitch_2
    :try_start_3
    invoke-direct {p0, v4}, Lcom/android/server/ssrm/settings/LevelsModelReader;->leaveTag(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Loading of model failed."

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-void

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_5
    iget-object v5, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
