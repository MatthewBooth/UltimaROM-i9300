.class public Lcom/android/server/enterprise/auditlog/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field private mMatcher:Ljava/util/regex/Matcher;

.field private mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filtering(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Filter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Filter;->mMatcher:Ljava/util/regex/Matcher;

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Filter;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public setFilter(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/auditlog/Filter;->mPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
