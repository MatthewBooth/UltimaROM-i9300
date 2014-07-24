.class Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasswordIntentFieldName"
.end annotation


# static fields
.field private static final account_eas:Ljava/lang/String; = "eas_account"

.field private static final account_id:Ljava/lang/String; = "account_id"

.field private static final outgoing_user_passwd:Ljava/lang/String; = "outgoing_user_passwd"

.field private static final outgoing_user_passwd_id:Ljava/lang/String; = "outgoing_user_passwd_id"

.field private static final user_passwd:Ljava/lang/String; = "user_passwd"

.field private static final user_passwd_id:Ljava/lang/String; = "user_passwd_id"


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/SettingsUtils;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/SettingsUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;->this$0:Lcom/android/server/enterprise/email/SettingsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
