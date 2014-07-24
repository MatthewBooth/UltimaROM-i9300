.class Lcom/android/server/enterprise/email/AccountMetaData;
.super Ljava/lang/Object;
.source "AccountMetaData.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COMPATIBILITY_UUID:Ljava/lang/String; = "compatibilityUuid"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final DPM_POLICIES_ACCOUNTID:Ljava/lang/String; = "account_id"

.field public static final DPM_POLICIES_ID:Ljava/lang/String; = "_id"

.field public static final DPM_POLICIES_POLICYNAME:Ljava/lang/String; = "name"

.field public static final DPM_POLICIES_POLICYNAME_ALLOWHTMLEMAIL:Ljava/lang/String; = "AllowHTMLEmail"

.field public static final DPM_POLICIES_POLICYTYPE:Ljava/lang/String; = "type"

.field public static final DPM_POLICIES_POLICYVALUE:Ljava/lang/String; = "value"

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final FLAGS_ACCEPT_ALL_CERT:I = 0x8

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1

.field public static final FLAGS_USE_SSL:I = 0x1

.field public static final FLAGS_USE_TLS:I = 0x2

.field public static final FLAGS_VIBRATE_ALWAYS:I = 0x2

.field public static final FLAGS_VIBRATE_WHEN_SILENT:I = 0x40

.field public static final HOST_AUTH_KEY_RECV:Ljava/lang/String; = "hostAuthKeyRecv"

.field public static final HOST_AUTH_KEY_SEND:Ljava/lang/String; = "hostAuthKeySend"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final IS_SIGNATURE_EDITED:Ljava/lang/String; = "isSignatureEdited"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final OFF_PEAK_SCHEDULE:Ljava/lang/String; = "offPeakSchedule"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PEAK_DAYS:Ljava/lang/String; = "peakDays"

.field public static final PEAK_END_MINUTE:Ljava/lang/String; = "peakEndMinute"

.field public static final PEAK_SCHEDULE:Ljava/lang/String; = "peakSchedule"

.field public static final PEAK_START_MINUTE:Ljava/lang/String; = "peakStartMinute"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final RINGTONE_URI:Ljava/lang/String; = "ringtoneUri"

.field public static final ROAMING_SCHEDULE:Ljava/lang/String; = "roamingSchedule"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SYNC_CALENDAR_LOOKBACK:Ljava/lang/String; = "calendarSyncLookback"

.field public static final SYNC_EMAIL_ROAMING_TRUNCATIONSIZE:Ljava/lang/String; = "roamingemailsize"

.field public static final SYNC_EMAIL_TRUNCATIONSIZE:Ljava/lang/String; = "emailsize"

.field public static final SYNC_INTERVAL:Ljava/lang/String; = "syncInterval"

.field public static final SYNC_LOOKBACK:Ljava/lang/String; = "syncLookback"


# instance fields
.field public mAllowHTMLEmail:Z

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEasDomain:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailBodyTruncationSize:I

.field public mEmailNotificationVibrateAlways:Z

.field public mEmailNotificationVibrateWhenSilent:Z

.field public mEmailRoamingBodyTruncationSize:I

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public mId:I

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAcceptAllCertificates:Z

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerFlags:I

.field public mInComingServerLogin:Ljava/lang/String;

.field public mInComingServerPassword:Ljava/lang/String;

.field public mInComingServerPathPrefix:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingServerUseSSL:Z

.field public mInComingServerUseTLS:Z

.field public mIsDefault:Z

.field mIsEAS:Z

.field public mNotify:Z

.field public mOffPeakSyncSchedule:I

.field public mOutGoingProtocol:Ljava/lang/String;

.field public mOutGoingServerAcceptAllCertificates:Z

.field public mOutGoingServerAddress:Ljava/lang/String;

.field public mOutGoingServerFlags:I

.field public mOutGoingServerLogin:Ljava/lang/String;

.field public mOutGoingServerPassword:Ljava/lang/String;

.field public mOutGoingServerPathPrefix:Ljava/lang/String;

.field public mOutGoingServerPort:I

.field public mOutGoingServerUseSSL:Z

.field public mOutGoingServerUseTLS:Z

.field public mPeakDays:I

.field public mPeakEndMinute:I

.field public mPeakStartMinute:I

.field public mPeakSyncSchedule:I

.field public mProtocolVersion:Ljava/lang/String;

.field public mRetrivalSize:I

.field public mRingtoneUri:Ljava/lang/String;

.field public mRoamingSyncSchedule:I

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncCalendarAge:I

.field public mSyncInterval:I

.field public mSyncLookback:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-object p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-object p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v1, 0x1

    if-gt v1, p5, :cond_0

    const/4 v1, 0x6

    if-ge v1, p5, :cond_1

    :cond_0
    const/4 p5, 0x1

    :cond_1
    iput p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;ZIIIIIIZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const/4 v1, 0x1

    if-gt v1, p5, :cond_0

    const/4 v1, 0x6

    if-ge v1, p5, :cond_1

    :cond_0
    const/4 p5, 0x1

    :cond_1
    iput p5, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-object p8, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean p11, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    const-string v1, "eas"

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    move/from16 v0, p18

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    move/from16 v0, p20

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput p6, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    move/from16 v0, p21

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    move/from16 v0, p22

    iput v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mRetrivalSize:I

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/AccountMetaData;->mNotify:Z

    return-void
.end method
