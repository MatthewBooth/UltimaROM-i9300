.class public Lcom/samsung/voiceshell/AudioRecordHaydn;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"


# static fields
.field public static final AL_ENROLL:I = 0x0

.field public static final AL_NONE:I = -0x1

.field public static final AL_VERIFY:I = 0x1

.field private static final RECORDER_BUFFER_SIZE_16kHz:I = 0x9c40

.field private static final RECORDER_BUFFER_SIZE_44p1kHz:I = 0x15888

.field private static final SAMPLE_SIZE:I = 0xa0

.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field public static final VR_RECOGNITON:I = 0x2

.field private static m_nRecordingMode:I

.field private static stats:[I

.field private static temp:[S


# instance fields
.field public CommandType:[S

.field private TAG:Ljava/lang/String;

.field public VElib:Lcom/samsung/voiceshell/VoiceEngine;

.field public VerifiedCommand:S

.field public aRecord:Landroid/media/AudioRecord;

.field final channelNum:I

.field public consoleInitReturn:J

.field public consoleResult:Ljava/lang/String;

.field final encodeFormat:I

.field public frameLeftNumber:[S

.field public handler:Landroid/os/Handler;

.field private isCustomVoiceTalkEnable:Z

.field public isNewVersionSensoryWakeUpLib:Z

.field public isPipeRecogEnrollSuccess:Z

.field private isRecording:Z

.field private isRunning_all:Z

.field public isSensoryUDTSIDEngine:Z

.field private mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

.field public mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field public mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

.field public mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

.field private mState:I

.field private mWakeUpType:I

.field private oldrms:I

.field private processedSample:I

.field private readBufferSize:I

.field private readLength:I

.field private readSize:I

.field public recordBuffer:[S

.field public rmshandler:Landroid/os/Handler;

.field private sampleDelay_engine:I

.field private sampleDelay_wave:I

.field private sampleRate:I

.field private threadRecord:Ljava/lang/Thread;

.field private weHaveNoModel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->stats:[I

    const/16 v0, 0xa0

    new-array v0, v0, [S

    sput-object v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->temp:[S

    const/4 v0, -0x1

    sput v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;ZZ)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    const v0, 0xac44

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    iput v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->channelNum:I

    iput v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->encodeFormat:I

    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->frameLeftNumber:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    const/16 v0, 0x44e8

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleDelay_wave:I

    const/16 v0, 0x2274

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleDelay_engine:I

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    const-string v0, "AudioRecordHaydn"

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleResult:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    iput-short v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    iput-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    new-instance v0, Lcom/samsung/voiceshell/AudioRecordHaydn$1;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$1;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$2;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    iput-boolean p3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setVoiceEngineResultListener(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    goto :goto_0
.end method

.method public static GetRecordingMode()I
    .locals 1

    sget v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return v0
.end method

.method public static SetRecordingMode(I)V
    .locals 0

    sput p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1

    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1

    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    return p1
.end method

.method static synthetic access$1300()[S
    .locals 1

    sget-object v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->temp:[S

    return-object v0
.end method

.method static synthetic access$1400()[I
    .locals 1

    sget-object v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->stats:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1

    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1

    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0

    sput p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    return p0
.end method

.method static synthetic access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1

    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1

    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    return v0
.end method

.method private initAudio()V
    .locals 7

    const v6, 0x9c40

    const/16 v5, 0x640

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAudio, mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sampleRate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    if-ne v0, v4, :cond_0

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    :cond_0
    sget v0, Lcom/samsung/voiceshell/AudioRecordHaydn;->m_nRecordingMode:I

    if-ne v0, v4, :cond_1

    iput v5, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    iput v6, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "secMM: Passing 16K data to VERIFY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: pcm readSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    iget v5, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: initAudio, aRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    const v1, 0xac44

    if-ne v0, v1, :cond_2

    const/16 v0, 0x113a

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    const v0, 0x15888

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "secMM: Passing 44K data to ENROLL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput v5, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    iput v6, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "secMM: Passing 16K data to ENROLL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initThread()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initThread, isRunning_all="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/voiceshell/AudioRecordHaydn$3;

    invoke-direct {v1, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$3;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initThread, START!, isRunning_all="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private waitForBackgroundRecordThread()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "waitForBackgroundRecordThread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SendHandlerMessage(IS)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: SendHandlerMessage, verify result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", verify command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "verify_result"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "verify_command"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public closeRecord()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "closeRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->waitForBackgroundRecordThread()V

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeRecord, mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "closeRecord, aRecord is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    iput-boolean v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->waitForBackgroundRecordThread()V

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    :cond_0
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isNewVersionSensoryWakeUpLib:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    goto :goto_0
.end method

.method public getAudioInstance()Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public initRecorder()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "initRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initAudio()V

    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initThread()V

    return-void
.end method

.method public pauseRecord()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "pauseRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    return-void
.end method

.method public rmsSendHandlerMessage(I)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rms_value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAdaptation(I)I
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "setAdaptation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    iget-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isSensoryUDTSIDEngine:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "Adaptation Start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v3}, Lcom/samsung/voiceshell/VoiceEngine;->setIsRunningAdaptation(Z)V

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-object v2, v2, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath_default:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v3, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->performContinuousAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adaptation End contADAPTreturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setConsoleInitReturn(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->consoleInitReturn:J

    return-void
.end method

.method public setCustomVoiceTalkFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    return-void
.end method

.method public setVoiceEngineResultListener(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-void
.end method

.method public setWakeUpType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    return-void
.end method

.method public setWeHaveNoModel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    return-void
.end method

.method public spectrumSendHandlerMessage([I)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "spectrum_value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startRecord()Z
    .locals 5

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecord, mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initRecorder()V

    :cond_0
    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    if-nez v2, :cond_2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: Recording state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    monitor-exit p0

    return v1

    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startRecord, Set mState to STATE_RUNNING, isRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: mState is NOT ready="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
