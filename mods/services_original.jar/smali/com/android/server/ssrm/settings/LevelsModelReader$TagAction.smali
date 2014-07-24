.class abstract Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
.super Ljava/lang/Object;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/LevelsModelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TagAction"
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method doAction(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->mTag:Ljava/lang/String;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Tag is null."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v2, 0x0

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    #calls: Lcom/android/server/ssrm/settings/LevelsModelReader;->enterTag(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$100(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->handleStartNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->handleEndTag()V

    const/4 v2, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    #calls: Lcom/android/server/ssrm/settings/LevelsModelReader;->leaveTag(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$200(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p0, v3, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->handleEndNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handleEndNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method handleEndTag()V
    .locals 0

    return-void
.end method

.method handleStartNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method abstract handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
.end method
