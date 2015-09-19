.class public Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"


# static fields
.field public static final AL_Enroll:I = 0x65

.field public static final CHECK_Enroll_END:I = 0x67

.field public static final CHECK_Enroll_START:I = 0x66

.field static final ENROLL_CNT:I = 0x4

.field private static final ENROLL_FEEDBACK_EACH:Z = false

.field private static final ENROLL_FEEDBACK_FAIL:I = 0x6

.field private static final ENROLL_FEEDBACK_ONEMORE:I = 0x5

.field private static final ENROLL_FEEDBACK_SUCCESS:I = 0x4

.field static final ERROR_CONFLICT_COMMAND:I = -0x4

.field static final ERROR_MIC_BUSY:I = -0x5

.field static final ERROR_UNKWON:I = -0x3

.field public static final Enroll_ConflictCommand:I = 0x68

.field public static final MODEL_STATUS_ENROLLED:I = 0x3

.field public static final MODEL_STATUS_NONE:I = 0x0

.field public static final MODEL_STATUS_NOTENROLLED:I = 0x2

.field public static final MODEL_STATUS_NOUSERS:I = 0x1

.field static final NUM_MODELS:I = 0x6

.field public static ROOT:Ljava/lang/String; = null

.field public static final Recording_Fail:I = 0x69

.field public static UDTAlwaysAPrecog:Ljava/lang/String; = null

.field public static UDTAlwaysAPsearch:Ljava/lang/String; = null

.field public static UDTMultiAPrecog:Ljava/lang/String; = null

.field public static UDTMultiAPsearch:Ljava/lang/String; = null

.field static final UDTSID_ENROLL_CNT:I = 0x4

.field static final UDTSID_NUM_USERS:I = 0x5

.field public static final WMODE_ALL:I = 0xffff

.field public static final WMODE_FPSV:I = 0x2

.field public static final WMODE_NONE:I = 0x0

.field public static final WMODE_UDT:I = 0x1

.field public static WMode:I = 0x0

.field public static final WTYPE_GOOGLE_NOW:I = 0x4

.field public static final WTYPE_NONE:I = 0x0

.field public static final WTYPE_S_VOICE:I = 0x2

.field public static final WTYPE_VOICE_KEY:I = 0x3

.field public static final WTYPE_VOICE_WAKE_UP:I = 0x1

.field public static WType:I = 0x0

.field public static customVoiceTalkEnablePath:Ljava/lang/String; = null

.field private static isEnrollReady:Z = false

.field private static isLockProcess:Z = false

.field public static mExist:[I = null

.field public static m_lastEnroll_0:Ljava/lang/String; = null

.field public static m_lastEnroll_1:Ljava/lang/String; = null

.field public static m_lastEnroll_2:Ljava/lang/String; = null

.field public static m_lastEnroll_3:Ljava/lang/String; = null

.field public static m_lastEnroll_4:Ljava/lang/String; = null

.field public static m_lastEnroll_5:Ljava/lang/String; = null

.field public static final m_strModelX86:Ljava/lang/String; = "/system/wakeupdata/samsung/models_x86.bin"

.field public static m_strSensoryCustomModelPath:Ljava/lang/String;

.field private static sVoiceLanguageFilePath:Ljava/lang/String;

.field public static typeDefine:Ljava/lang/String;


# instance fields
.field public CommandNumber:S

.field private final PACKAGENAME:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private absBeam:F

.field private acousticModelPathname:Ljava/lang/String;

.field private aoffset:F

.field private background_enroll:Ljava/lang/Thread;

.field private beam:F

.field private final brNewAcousticModelPathname:Ljava/lang/String;

.field private final brNewSearchGrammarPathname:Ljava/lang/String;

.field private final chNewAcousticModelPathname:Ljava/lang/String;

.field private final chNewSearchGrammarPathname:Ljava/lang/String;

.field conflictCommandType:[S

.field public consoleInitReturn:J

.field private final deNewAcousticModelPathname:Ljava/lang/String;

.field private final deNewSearchGrammarPathname:Ljava/lang/String;

.field private debugSessionPathname:Ljava/lang/String;

.field private delay:F

.field private doLoggingParam:I

.field private final elNewAcousticModelPathname:Ljava/lang/String;

.field private final elNewSearchGrammarPathname:Ljava/lang/String;

.field private final esNewAcousticModelPathname:Ljava/lang/String;

.field private final esNewSearchGrammarPathname:Ljava/lang/String;

.field private final frNewAcousticModelPathname:Ljava/lang/String;

.field private final frNewSearchGrammarPathname:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field protected isAudioFocus:Z

.field private isCustomVoiceTalkEnable:Z

.field private isDelayFeature:Z

.field public isEnableChineseWakeUp:Z

.field public isEnableJapaneseWakeUp:Z

.field public isEnableRussianWakeUp:Z

.field private isMultipleWakeUpEnable:Z

.field public isNewVersionSensoryWakeUpLibExist:Z

.field private isRecording:Z

.field private isRunning_all:Z

.field private isRunning_enroll:Z

.field private isSamsungWakeUpLibExist:Z

.field private isSensoryInitialize:Z

.field public isSensoryUDTSIDExist:Z

.field private isStartNextEnroll:Z

.field private final itNewAcousticModelPathname:Ljava/lang/String;

.field private final itNewSearchGrammarPathname:Ljava/lang/String;

.field private final jpNewAcousticModelPathname:Ljava/lang/String;

.field private final jpNewSearchGrammarPathname:Ljava/lang/String;

.field private final koNewAcousticModelPathname:Ljava/lang/String;

.field private final koNewSearchGrammarPathname:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field public mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

.field private mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

.field public mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

.field public mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

.field public mVElib:Lcom/samsung/voiceshell/VoiceEngine;

.field private final m_UBMpath:Ljava/lang/String;

.field private final newVersionSensorySoFilePath:Ljava/lang/String;

.field public returnLoadUser:I

.field private final ruNewAcousticModelPathname:Ljava/lang/String;

.field private final ruNewSearchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname:Ljava/lang/String;

.field private final sensorySoFilePath:Ljava/lang/String;

.field private final sensoryUDTSIDSoFilePath:Ljava/lang/String;

.field public sensoryUDTSIDThreadEnable:Z

.field private final ukNewAcousticModelPathname:Ljava/lang/String;

.field private final ukNewSearchGrammarPathname:Ljava/lang/String;

.field private final usNewAcousticModelPathname:Ljava/lang/String;

.field private final usNewSearchGrammarPathname:Ljava/lang/String;

.field private final voiceEngineSoFilePath:Ljava/lang/String;

.field private weHaveNoModel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_0.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 30
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_1.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 31
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_2.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 32
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_3.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 33
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_4.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 34
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_5.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 36
    const-string v0, "/data/data/com.vlingo.midas/"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 37
    const-string v0, "/data/data/com.vlingo.midas/typeDefine.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    .line 38
    const-string v0, "/data/data/com.vlingo.midas/kwd_1.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    .line 39
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_Deep_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    .line 55
    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 83
    sput v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 89
    const v0, 0xffff

    sput v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    .line 157
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 170
    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    .line 172
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_AP_recog.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 173
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_AP_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 175
    const-string v0, "/data/data/com.vlingo.midas/UDT_Multi_AP_recog.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    .line 176
    const-string v0, "/data/data/com.vlingo.midas/UDT_Multi_AP_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPsearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .prologue
    .line 182
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: WakeUpCmdRecognizer default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;Ljava/lang/String;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .param p2, "strRootPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    .line 28
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_UBMpath:Ljava/lang/String;

    .line 40
    const-string v0, "com.vlingo.midas"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->PACKAGENAME:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 45
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 47
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 51
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 52
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 54
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 56
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 57
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 74
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 76
    iput-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    .line 100
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 102
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 103
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 104
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 106
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    .line 107
    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    .line 109
    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    .line 110
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    .line 111
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    .line 113
    const-string v0, "/system/lib/libSamsungVoiceEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->voiceEngineSoFilePath:Ljava/lang/String;

    .line 114
    const-string v0, "/system/lib/libWakeUpSensory.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensorySoFilePath:Ljava/lang/String;

    .line 115
    const-string v0, "/system/lib/libSensoryWakeUpEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->newVersionSensorySoFilePath:Ljava/lang/String;

    .line 116
    const-string v0, "/system/lib/libSensoryUDTSIDEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDSoFilePath:Ljava/lang/String;

    .line 121
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    .line 122
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 123
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 125
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 128
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koNewAcousticModelPathname:Ljava/lang/String;

    .line 129
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usNewAcousticModelPathname:Ljava/lang/String;

    .line 130
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukNewAcousticModelPathname:Ljava/lang/String;

    .line 131
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esNewAcousticModelPathname:Ljava/lang/String;

    .line 132
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->elNewAcousticModelPathname:Ljava/lang/String;

    .line 133
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frNewAcousticModelPathname:Ljava/lang/String;

    .line 134
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deNewAcousticModelPathname:Ljava/lang/String;

    .line 135
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itNewAcousticModelPathname:Ljava/lang/String;

    .line 136
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chNewAcousticModelPathname:Ljava/lang/String;

    .line 137
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpNewAcousticModelPathname:Ljava/lang/String;

    .line 138
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruNewAcousticModelPathname:Ljava/lang/String;

    .line 139
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->brNewAcousticModelPathname:Ljava/lang/String;

    .line 141
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koNewSearchGrammarPathname:Ljava/lang/String;

    .line 142
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usNewSearchGrammarPathname:Ljava/lang/String;

    .line 143
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukNewSearchGrammarPathname:Ljava/lang/String;

    .line 144
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esNewSearchGrammarPathname:Ljava/lang/String;

    .line 145
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->elNewSearchGrammarPathname:Ljava/lang/String;

    .line 146
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frNewSearchGrammarPathname:Ljava/lang/String;

    .line 147
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deNewSearchGrammarPathname:Ljava/lang/String;

    .line 148
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itNewSearchGrammarPathname:Ljava/lang/String;

    .line 149
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chNewSearchGrammarPathname:Ljava/lang/String;

    .line 150
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpNewSearchGrammarPathname:Ljava/lang/String;

    .line 151
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruNewSearchGrammarPathname:Ljava/lang/String;

    .line 152
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->brNewSearchGrammarPathname:Ljava/lang/String;

    .line 154
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 155
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 158
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 160
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 161
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    .line 163
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    .line 164
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    .line 165
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    .line 167
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 168
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    .line 169
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isDelayFeature:Z

    .line 313
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    .line 1486
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 188
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/voiceshell/WakeUpUtils;->GetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: WakeUpCmdRecognizer Create, Set data, policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0, p2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 192
    invoke-static {p2}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 196
    return-void
.end method

.method private InitSensorySession()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 1684
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "InitSensorySession"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const-wide/16 v2, 0x0

    .line 1687
    .local v2, "trigUDT":J
    const-wide/16 v0, 0x0

    .line 1689
    .local v0, "trigFPSV":J
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v4, :cond_94

    .line 1691
    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1d

    .line 1693
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v2

    .line 1695
    :cond_1d
    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_29

    .line 1697
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValueFPSV()J

    move-result-wide v0

    .line 1700
    :cond_29
    cmp-long v4, v2, v8

    if-eqz v4, :cond_50

    .line 1702
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InitSensorySession, pre-trig : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    sget-boolean v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    if-nez v4, :cond_4e

    .line 1705
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeSession(J)V

    .line 1707
    :cond_4e
    const-wide/16 v2, 0x0

    .line 1710
    :cond_50
    cmp-long v4, v0, v8

    if-eqz v4, :cond_77

    .line 1712
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InitSensorySession, pre-trigFPSV : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    sget-boolean v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    if-nez v4, :cond_75

    .line 1715
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeSession(J)V

    .line 1717
    :cond_75
    const-wide/16 v0, 0x0

    .line 1720
    :cond_77
    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_83

    .line 1722
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initSession()J

    move-result-wide v2

    .line 1724
    :cond_83
    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8f

    .line 1726
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initSession()J

    move-result-wide v0

    .line 1729
    :cond_8f
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->setSessionValue(JJ)V

    .line 1732
    :cond_94
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secMM: SensoryUDTSIDEngine init complete, WMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return-void
.end method

.method private InitializeVerify()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1236
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "InitializeVerify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v1, 0x0

    .line 1238
    .local v1, "iResult":I
    const/4 v0, 0x0

    .line 1240
    .local v0, "NumSets":I
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_1c

    .line 1242
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpType(I)V

    .line 1274
    :goto_15
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    move v2, v1

    .line 1276
    :goto_1b
    return v2

    .line 1246
    :cond_1c
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    move-result v0

    .line 1248
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of complete sets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    if-nez v0, :cond_45

    .line 1252
    const/16 v2, -0xa

    goto :goto_1b

    .line 1255
    :cond_45
    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v2, :cond_7a

    .line 1257
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURE LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_63
    :goto_63
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    .line 1269
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v3, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    sget v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->initializeVerify(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1271
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    goto :goto_15

    .line 1259
    :cond_7a
    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v6, :cond_99

    .line 1261
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NORMAL LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1263
    :cond_99
    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_63

    .line 1265
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE-TALK with Wtype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public static SetProcessLock(Z)V
    .registers 1
    .param p0, "bLock"    # Z

    .prologue
    .line 1745
    sput-boolean p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    .line 1746
    return-void
.end method

.method private StartRunning(SS)I
    .registers 12
    .param p1, "cmNumber"    # S
    .param p2, "wakeUpType"    # S

    .prologue
    const/16 v6, 0x3e80

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 720
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v4, :cond_34

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v4, :cond_34

    .line 722
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSensoryUDTSIDExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :goto_33
    return v2

    .line 727
    :cond_34
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-nez v4, :cond_40

    .line 729
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "startEnroll, mDummyRecorder is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 733
    :cond_40
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v4, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 735
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v4, :cond_89

    .line 737
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Sample Rate is 16000"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v4, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    .line 740
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v4

    long-to-int v0, v4

    .line 741
    .local v0, "nSesstionValue":I
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValueFPSV()J

    move-result-wide v4

    long-to-int v1, v4

    .line 743
    .local v1, "nSesstionValueFPSV":I
    if-eqz v0, :cond_6b

    .line 745
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->resetRecog(J)V

    .line 748
    :cond_6b
    if-eqz v1, :cond_73

    .line 750
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->resetRecog(J)V

    .line 753
    :cond_73
    iput-boolean v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 754
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Set sensoryUDTSIDThreadEnable true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .end local v0    # "nSesstionValue":I
    .end local v1    # "nSesstionValueFPSV":I
    :goto_7c
    sput p2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 771
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v4, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 773
    iput-short p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 774
    iput-boolean v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    move v2, v3

    .line 776
    goto :goto_33

    .line 758
    :cond_89
    const-string v4, "/system/wakeupdata/samsung/models_x86.bin"

    invoke-virtual {p0, v4}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 760
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Sample Rate is 16000"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v4, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_7c

    .line 765
    :cond_9e
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Sample Rate is 44100"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const v5, 0xac44

    invoke-virtual {v4, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_7c
.end method

.method private StartVerify()I
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1281
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "StartVerify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v0, 0x0

    .line 1284
    .local v0, "iResult":I
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1286
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_e5

    .line 1288
    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v2, v5, :cond_1c

    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v6, :cond_7e

    .line 1290
    :cond_1c
    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 1299
    :cond_24
    :goto_24
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    if-eqz v2, :cond_41

    .line 1301
    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v2, v5, :cond_30

    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v6, :cond_c9

    .line 1303
    :cond_30
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    if-nez v2, :cond_41

    .line 1305
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitSensorySession()V

    .line 1306
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v2

    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1323
    :cond_41
    :goto_41
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: StartVerify, loadUsers returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    if-eq v2, v7, :cond_65

    .line 1328
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1337
    :cond_65
    :goto_65
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    if-nez v2, :cond_6d

    .line 1339
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_f3

    .line 1349
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 1351
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: StartVerify, Failed to do startRecord"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/4 v0, -0x2

    .line 1355
    :cond_7d
    return v0

    .line 1292
    :cond_7e
    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v7, :cond_24

    .line 1294
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v2, v3, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->GetWakeUpModel(IS)Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, "strWakeUpModel":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 1296
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartVerify, isMultipleWakeUpEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", WakeUpModel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 1309
    .end local v1    # "strWakeUpModel":Ljava/lang/String;
    :cond_c9
    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v7, :cond_e0

    .line 1311
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    if-nez v2, :cond_41

    .line 1313
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitSensorySession()V

    .line 1314
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v2

    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    goto/16 :goto_41

    .line 1319
    :cond_e0
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    goto/16 :goto_41

    .line 1333
    :cond_e5
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v5}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 1334
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v3, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->setAdaptationModelPath(Ljava/lang/String;)V

    goto/16 :goto_65

    .line 1344
    :cond_f3
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/VoiceEngine;->startVerify()I

    move-result v0

    .line 1345
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startVerify result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d
.end method

.method private TerminateVerify()I
    .registers 3

    .prologue
    .line 1359
    const/4 v0, 0x0

    .line 1361
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_a

    .line 1363
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 1366
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_f

    .line 1374
    :cond_e
    :goto_e
    return v0

    .line 1369
    :cond_f
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_e

    .line 1371
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    move-result v0

    goto :goto_e
.end method

.method static synthetic access$000(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    return p0
.end method

.method private checkFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1442
    if-nez p1, :cond_4

    .line 1454
    :cond_3
    :goto_3
    return v1

    .line 1446
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1454
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private isNewVersionSensoryLib()Z
    .registers 4

    .prologue
    .line 1474
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSensoryWakeUpEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1477
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/4 v1, 0x0

    .line 1482
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private isSamsungVoiceLib()Z
    .registers 4

    .prologue
    .line 1460
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSamsungVoiceEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1463
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const/4 v1, 0x0

    .line 1468
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private setNewVersionLanguage()V
    .registers 7

    .prologue
    .line 1509
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1510
    .local v1, "modelPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1512
    .local v0, "grammarPath":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1513
    .local v4, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1514
    .local v3, "stringCountry":Ljava/lang/String;
    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/voiceshell/WakeUpUtils;->ReadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1516
    .local v2, "sVoiceLanguage":Ljava/lang/String;
    if-eqz v2, :cond_e5

    .line 1518
    const-string v5, "ko-KR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1520
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    .line 1521
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    .line 1655
    :cond_28
    :goto_28
    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v5, :cond_40

    .line 1657
    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1659
    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 1660
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 1664
    :cond_40
    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1666
    iput-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1667
    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1669
    :cond_50
    return-void

    .line 1523
    :cond_51
    const-string v5, "en-GB"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1525
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    .line 1526
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    goto :goto_28

    .line 1528
    :cond_5e
    const-string v5, "en-US"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1530
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    .line 1531
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    goto :goto_28

    .line 1533
    :cond_6b
    const-string v5, "es-ES"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1535
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    .line 1536
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    goto :goto_28

    .line 1538
    :cond_78
    const-string v5, "v-es-LA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1540
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    .line 1541
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    goto :goto_28

    .line 1543
    :cond_85
    const-string v5, "fr-FR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1545
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    .line 1546
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    goto :goto_28

    .line 1548
    :cond_92
    const-string v5, "de-DE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 1550
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    .line 1551
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    goto :goto_28

    .line 1553
    :cond_9f
    const-string v5, "it-IT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 1555
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    .line 1556
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    goto/16 :goto_28

    .line 1558
    :cond_ad
    const-string v5, "zh-CN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 1560
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    .line 1561
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    goto/16 :goto_28

    .line 1563
    :cond_bb
    const-string v5, "ja-JP"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 1565
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    .line 1566
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    goto/16 :goto_28

    .line 1568
    :cond_c9
    const-string v5, "ru-RU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 1570
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    .line 1571
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    goto/16 :goto_28

    .line 1573
    :cond_d7
    const-string v5, "pt-BR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1575
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    .line 1576
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    goto/16 :goto_28

    .line 1581
    :cond_e5
    if-eqz v4, :cond_28

    .line 1583
    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 1585
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    .line 1586
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    goto/16 :goto_28

    .line 1588
    :cond_f9
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 1590
    const-string v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 1592
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    .line 1593
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    goto/16 :goto_28

    .line 1597
    :cond_113
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    .line 1598
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    goto/16 :goto_28

    .line 1601
    :cond_119
    const-string v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 1603
    const-string v5, "ES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 1605
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    .line 1606
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    goto/16 :goto_28

    .line 1610
    :cond_12f
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    .line 1611
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    goto/16 :goto_28

    .line 1614
    :cond_135
    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 1616
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    .line 1617
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    goto/16 :goto_28

    .line 1619
    :cond_147
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    .line 1621
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    .line 1622
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    goto/16 :goto_28

    .line 1624
    :cond_159
    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 1626
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    .line 1627
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    goto/16 :goto_28

    .line 1629
    :cond_16b
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17d

    .line 1631
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    .line 1632
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    goto/16 :goto_28

    .line 1634
    :cond_17d
    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18f

    .line 1636
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    .line 1637
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    goto/16 :goto_28

    .line 1639
    :cond_18f
    const-string v5, "ru"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 1641
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    .line 1642
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    goto/16 :goto_28

    .line 1644
    :cond_19d
    const-string v5, "pt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1646
    const-string v5, "BR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1648
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    .line 1649
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    goto/16 :goto_28
.end method

.method private waitForBackgroundEnroll()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 982
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 983
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 985
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    if-eqz v1, :cond_17

    .line 987
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waitForBackgroundEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :try_start_10
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_17} :catch_18

    .line 996
    :cond_17
    :goto_17
    return-void

    .line 991
    :catch_18
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method protected InitializeEnroll()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1074
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: InitializeEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v0, 0x0

    .line 1078
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1080
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_47

    .line 1082
    iget v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    if-nez v1, :cond_25

    .line 1084
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitSensorySession()V

    .line 1085
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v1

    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1087
    :cond_25
    iget v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    add-int/lit8 v0, v1, -0x1

    .line 1088
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: InitializeEnroll, loadUsers returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :goto_43
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1102
    return v0

    .line 1092
    :cond_47
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    .line 1094
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v5}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 1095
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->initializeEnroll(Ljava/lang/String;)I

    move-result v0

    goto :goto_43
.end method

.method protected ProcessEnroll()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1107
    const/4 v0, -0x3

    .line 1108
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "ProcessEnroll waiting.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isDelayFeature:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    if-eqz v1, :cond_9

    .line 1114
    :cond_11
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "ProcessEnroll starting.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    .line 1117
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_2e

    .line 1119
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1121
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: ProcessEnroll, Failed to do startRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v0, -0x5

    .line 1126
    :cond_2e
    sget-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v1, :cond_54

    const/4 v1, -0x5

    if-eq v0, v1, :cond_54

    .line 1128
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aput-short v5, v1, v5

    .line 1130
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->processEnroll(Ljava/lang/String;S[S)I

    move-result v0

    .line 1132
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    iget-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    if-eq v1, v2, :cond_54

    .line 1134
    const/4 v0, -0x4

    .line 1138
    :cond_54
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_5d

    .line 1140
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 1143
    :cond_5d
    return v0
.end method

.method public SendHandlerMessage(III)V
    .registers 7
    .param p1, "job"    # I
    .param p2, "count"    # I
    .param p3, "check"    # I

    .prologue
    .line 332
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 333
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "job"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    const-string v2, "Enroll_Count"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string v2, "EnrollCheck_Count"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 338
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    return-void
.end method

.method public SetDataPath(Ljava/lang/String;)V
    .registers 4
    .param p1, "strRootPath"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: SetDataPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sput-object p1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_0.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_1.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_2.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_3.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_4.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_5.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_AP_recog.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_AP_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Multi_AP_recog.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Multi_AP_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPsearch:Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "typeDefine.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kwd_1.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_Deep_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/language.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public SetNextEnroll(Z)V
    .registers 5
    .param p1, "bNext"    # Z

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetNextEnroll is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iput-boolean p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    .line 1740
    return-void
.end method

.method public SetResourceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "strResourceDir"    # Ljava/lang/String;
    .param p2, "strLanguage"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetResourceInfo, ResourceDir : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-nez v0, :cond_2e

    .line 300
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SetResourceInfo, mSensoryUDTSIDEngine is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_2d
    return-void

    .line 304
    :cond_2e
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v0, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetResourceInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public SetWakeUp(IIS)V
    .registers 16
    .param p1, "nWakeUpType"    # I
    .param p2, "nRecordingMode"    # I
    .param p3, "shCommandNumber"    # S

    .prologue
    const-wide/16 v10, 0x0

    const v8, 0xffff

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetWakeUp, nWakeUpType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nRecordingMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shCommandNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "nWaitingCount":I
    :goto_35
    sget-boolean v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    if-eqz v2, :cond_4a

    const/16 v2, 0xa

    if-ge v1, v2, :cond_4a

    .line 243
    add-int/lit8 v1, v1, 0x1

    .line 246
    const-wide/16 v2, 0x1e

    :try_start_41
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_35

    .line 248
    :catch_45
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_35

    .line 254
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4a
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetWakeUp, process is Unlocked!, isProcessLock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nWaitingCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sput p1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 257
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpType(I)V

    .line 258
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, p2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 259
    iput-short p3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 261
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    .line 262
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isDelayFeature:Z

    .line 264
    sget v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    packed-switch v2, :pswitch_data_114

    .line 286
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InitializeEnroll:WType ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_9f
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitSensorySession()V

    .line 290
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v2

    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 291
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: SetWakeUp, loadUsers returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 267
    :pswitch_c7
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "SetWakeUp, Set WMode to WMODE_ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v8}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 269
    sput v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    goto :goto_9f

    .line 272
    :pswitch_d6
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "SetWakeUp, Set WMode to WMODE_UDT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v6}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 274
    sput v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 275
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValueFPSV()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 276
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v10, v11}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetSessionValueFPSV(J)V

    goto :goto_9f

    .line 279
    :pswitch_f5
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "SetWakeUp, Set WMode to WMODE_FPSV"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v7}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetWakeUpMode(I)V

    .line 281
    sput v7, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 282
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 283
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v10, v11}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetSessionValueUDT(J)V

    goto :goto_9f

    .line 264
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_c7
        :pswitch_d6
        :pswitch_f5
    .end packed-switch
.end method

.method protected TerminateEnroll()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1209
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: TerminateEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, 0x0

    .line 1213
    .local v0, "iResult":I
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v1, :cond_36

    .line 1215
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValueFPSV()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_32

    .line 1217
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "TerminateEnroll, Set WMode to WMODE_ALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const v1, 0xffff

    sput v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 1229
    :cond_32
    :goto_32
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1231
    return v0

    .line 1223
    :cond_36
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_32

    .line 1225
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateEnroll()I

    move-result v0

    goto :goto_32
.end method

.method public choiceMultipleWakeUpIntent(I)Landroid/content/Intent;
    .registers 12
    .param p1, "resultCommand"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1379
    const/4 v2, 0x0

    .line 1380
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 1382
    .local v1, "assignCommandArray":[I
    invoke-virtual {p0, v1, v6}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->functionAssignment([II)I

    move-result v3

    if-ne v3, v5, :cond_1e

    .line 1384
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: choiceMultipleWakeUpIntent, functionAssignment error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    aput v5, v1, v6

    .line 1386
    aput v5, v1, v7

    .line 1387
    aput v5, v1, v8

    .line 1388
    aput v5, v1, v9

    .line 1391
    :cond_1e
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    packed-switch p1, :pswitch_data_be

    .line 1418
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand is none : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_51
    :pswitch_51
    if-eqz v2, :cond_b5

    .line 1424
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :goto_6f
    return-object v2

    .line 1397
    :pswitch_70
    const-string v0, "custom.wakeup.screen"

    .line 1398
    .local v0, "EXTRA_CUSTOM_WAKEUP":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.vlingo.midas"

    const-string v5, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1401
    const v3, 0x10208000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1403
    const-string v3, "custom.wakeup.screen"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_51

    .line 1406
    .end local v0    # "EXTRA_CUSTOM_WAKEUP":Ljava/lang/String;
    :pswitch_91
    aget v3, v1, v6

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1407
    goto :goto_51

    .line 1409
    :pswitch_9a
    aget v3, v1, v7

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1410
    goto :goto_51

    .line 1412
    :pswitch_a3
    aget v3, v1, v8

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1413
    goto :goto_51

    .line 1415
    :pswitch_ac
    aget v3, v1, v9

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1416
    goto :goto_51

    .line 1428
    :cond_b5
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: choiceMultipleWakeUpIntent, intent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 1392
    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_51
        :pswitch_70
        :pswitch_91
        :pswitch_9a
        :pswitch_a3
        :pswitch_ac
    .end packed-switch
.end method

.method public destroy()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1000
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 1003
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 1005
    iput-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 1006
    iput-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 1008
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopEnroll()I

    .line 1009
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 1011
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-eqz v0, :cond_3b

    .line 1014
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->waitForBackgroundEnroll()V

    .line 1016
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v0, :cond_3b

    .line 1019
    iput-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 1020
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mVElib = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_3b
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_7b

    .line 1026
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 1027
    iput v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1028
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: destroy, Set loadUsers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v0, :cond_6f

    .line 1032
    sget-boolean v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    if-nez v0, :cond_6a

    .line 1034
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeModels()V

    .line 1036
    :cond_6a
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v0, v4, v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetResourceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_6f
    iput-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 1039
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mSensoryUDTSIDEngine = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->InitInstance()V

    .line 1044
    :cond_7b
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_99

    .line 1046
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    if-eqz v0, :cond_99

    .line 1048
    iget-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_97

    .line 1050
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-wide v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotClose(J)V

    .line 1051
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iput-wide v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v6, v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 1053
    :cond_97
    iput-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 1057
    :cond_99
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    .line 1059
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v0, :cond_ad

    .line 1060
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->destroy()V

    .line 1061
    iput-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 1062
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mDummyRecorder = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_ad
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_ba

    .line 1067
    iput-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 1068
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mResultListener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_ba
    return-void
.end method

.method public functionAssignment([II)I
    .registers 6
    .param p1, "AssignArray"    # [I
    .param p2, "RW"    # I

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/voiceshell/VoiceEngine;->functionAssignment(Ljava/lang/String;[II)I

    move-result v0

    .line 1438
    .local v0, "result":I
    return v0
.end method

.method public getEnableWakeUp()Z
    .registers 2

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungVoiceLib()Z

    move-result v0

    return v0
.end method

.method public init()I
    .registers 9

    .prologue
    const/16 v7, 0x3e80

    const/4 v6, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: init"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungVoiceLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 372
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 373
    const-string v0, "/system/lib/libSensoryUDTSIDEngine.so"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    .line 375
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_27

    .line 377
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 380
    :cond_27
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 382
    :cond_37
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 385
    :cond_39
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acousticModelPathname : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "searchGrammarPathname : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSamsungWakeUpLibExist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNewVersionSensoryWakeUpLibExist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSensoryUDTSIDExist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v0, :cond_eb

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v0, :cond_eb

    .line 393
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSensoryUDTSIDExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 683
    :goto_ea
    return v0

    .line 398
    :cond_eb
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-nez v0, :cond_10b

    .line 400
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isNewVersionSensoryWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 401
    goto :goto_ea

    .line 404
    :cond_10b
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11b

    .line 406
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 409
    :cond_11b
    new-instance v0, Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;ZZ)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 410
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-nez v0, :cond_135

    .line 412
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: init, Failed to allocate AudioRecordHaydn"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 413
    goto :goto_ea

    .line 416
    :cond_135
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 417
    const v0, 0xffff

    sput v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    .line 418
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    .line 419
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isDelayFeature:Z

    .line 420
    sput-boolean v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z

    .line 422
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_150

    .line 424
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 427
    :cond_150
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_15a

    .line 429
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 432
    :cond_15a
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_180

    .line 434
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "Sample Rate is 16000"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0, v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    .line 453
    :goto_16a
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 455
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;

    invoke-direct {v1, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 681
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v2

    .line 683
    goto/16 :goto_ea

    .line 439
    :cond_180
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0, v6}, Lcom/samsung/voiceshell/VoiceEngine;->setIsRunningVoiceEngine(Z)V

    .line 441
    const-string v0, "/system/wakeupdata/samsung/models_x86.bin"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 443
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "Sample Rate is 16000"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0, v7}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_16a

    .line 448
    :cond_19a
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "Sample Rate is 44100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const v1, 0xac44

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_16a
.end method

.method public isWakeUpFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 1673
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1674
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1675
    const/4 v1, 0x1

    .line 1678
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected sensoryProcessEnroll()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1148
    const/4 v0, -0x3

    .line 1150
    .local v0, "iResult":I
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "sensoryProcessEnroll waiting.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_9
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isDelayFeature:Z

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    if-eqz v4, :cond_9

    .line 1154
    :cond_11
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "sensoryProcessEnroll starting.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    .line 1157
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    if-nez v4, :cond_27

    .line 1159
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "sensoryProcessEnroll, don\'t start Enroll"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1203
    .end local v0    # "iResult":I
    .local v1, "iResult":I
    :goto_26
    return v1

    .line 1163
    .end local v1    # "iResult":I
    .restart local v0    # "iResult":I
    :cond_27
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v4, :cond_97

    .line 1165
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1167
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "secMM: sensoryProcessEnroll, Failed to do startRecord"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v0, -0x5

    .line 1177
    :cond_3b
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v4

    long-to-int v2, v4

    .line 1178
    .local v2, "nSesstionValue":I
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValueFPSV()J

    move-result-wide v4

    long-to-int v3, v4

    .line 1179
    .local v3, "nSesstionValueFPSV":I
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secMM: start sensoryProcessEnroll, trig : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", trigFPSV : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    sget-boolean v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v4, :cond_85

    const/4 v4, -0x5

    if-eq v0, v4, :cond_85

    .line 1183
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iput-boolean v7, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 1184
    :cond_76
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v4, v4, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    if-nez v4, :cond_80

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-nez v4, :cond_76

    .line 1189
    :cond_80
    add-int v0, v2, v3

    .line 1190
    if-gez v0, :cond_85

    .line 1192
    const/4 v0, 0x1

    .line 1196
    :cond_85
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "secMM: stop sensoryProcessEnroll"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v4, :cond_95

    .line 1200
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    :cond_95
    move v1, v0

    .line 1203
    .end local v0    # "iResult":I
    .restart local v1    # "iResult":I
    goto :goto_26

    .line 1173
    .end local v1    # "iResult":I
    .end local v2    # "nSesstionValue":I
    .end local v3    # "nSesstionValueFPSV":I
    .restart local v0    # "iResult":I
    :cond_97
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "secMM: sensoryProcessEnroll, mDummyRecorder is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1174
    .end local v0    # "iResult":I
    .restart local v1    # "iResult":I
    goto :goto_26
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 202
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3e

    .line 204
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: setContext, mContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 212
    .local v0, "nUserID":I
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: setContext, userID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-nez v0, :cond_5d

    .line 218
    const-string v1, "/data/data/com.vlingo.midas/"

    .line 225
    .local v1, "strRootPath":Ljava/lang/String;
    :goto_2d
    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 226
    invoke-static {v1}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 227
    invoke-static {v1}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 229
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_3d

    .line 231
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 233
    :cond_3d
    return-void

    .line 208
    .end local v0    # "nUserID":I
    .end local v1    # "strRootPath":Ljava/lang/String;
    :cond_3e
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: setContext, mContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 222
    .restart local v0    # "nUserID":I
    :cond_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "strRootPath":Ljava/lang/String;
    goto :goto_2d
.end method

.method public startEnroll(S)I
    .registers 3
    .param p1, "cmNumber"    # S

    .prologue
    .line 689
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startEnroll(SS)I

    move-result v0

    return v0
.end method

.method public startEnroll(SS)I
    .registers 6
    .param p1, "cmNumber"    # S
    .param p2, "wakeUpType"    # S

    .prologue
    .line 694
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: startEnroll, cmNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakeUpType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isDelayFeature:Z

    .line 696
    invoke-direct {p0, p1, p2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->StartRunning(SS)I

    move-result v0

    return v0
.end method

.method public startEnroll2(S)I
    .registers 3
    .param p1, "cmNumber"    # S

    .prologue
    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startEnroll2(SS)I

    move-result v0

    return v0
.end method

.method public startEnroll2(SS)I
    .registers 6
    .param p1, "cmNumber"    # S
    .param p2, "wakeUpType"    # S

    .prologue
    .line 711
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: startEnroll2, cmNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakeUpType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isDelayFeature:Z

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    .line 714
    invoke-direct {p0, p1, p2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->StartRunning(SS)I

    move-result v0

    return v0
.end method

.method public startVerify(I)I
    .registers 13
    .param p1, "wakeType"    # I

    .prologue
    const/16 v10, -0xa

    const/16 v3, -0xb

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 805
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secMM: startVerify, wakeType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v1, 0x0

    .line 809
    .local v1, "iResult":I
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v4, :cond_50

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v4, :cond_50

    .line 811
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSensoryUDTSIDExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v3, -0x1

    .line 949
    :cond_4f
    :goto_4f
    return v3

    .line 816
    :cond_50
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-nez v4, :cond_70

    .line 818
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isNewVersionSensoryWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v3, -0x1

    goto :goto_4f

    .line 822
    :cond_70
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v4, :cond_77

    .line 824
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 827
    :cond_77
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_a4

    .line 829
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-nez v4, :cond_a4

    .line 831
    iput-boolean v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 839
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v9, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 841
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 843
    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    if-eqz v4, :cond_a4

    .line 845
    iput-boolean v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 846
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "waiting for recording start"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-wide/16 v4, 0x1f4

    :try_start_9a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9d
    .catch Ljava/lang/InterruptedException; {:try_start_9a .. :try_end_9d} :catch_c4

    .line 852
    :goto_9d
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "waiting for recording end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_a4
    sput p1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 858
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    sget v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v4, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 860
    new-instance v2, Ljava/io/File;

    const-string v4, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    .local v2, "mFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c9

    .line 864
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v4, :cond_4f

    .line 866
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v4, v3, v8}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    goto :goto_4f

    .line 849
    .end local v2    # "mFile":Ljava/io/File;
    :catch_c4
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9d

    .line 871
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "mFile":Ljava/io/File;
    :cond_c9
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeVerify()I

    move-result v1

    .line 873
    if-ne v1, v10, :cond_130

    .line 875
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eqz v3, :cond_d8

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_ed

    .line 877
    :cond_d8
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 878
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 879
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v3, :cond_ea

    .line 881
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v3, v10, v8}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_ea
    move v3, v1

    .line 883
    goto/16 :goto_4f

    .line 887
    :cond_ed
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 888
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 897
    :goto_f6
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v3, v9, :cond_ff

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_13a

    .line 914
    :cond_ff
    :goto_ff
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: isCustomVoiceTalkEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setCustomVoiceTalkFlag(Z)V

    .line 917
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eq v3, v9, :cond_129

    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_15a

    .line 947
    :cond_129
    :goto_129
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->StartVerify()I

    move-result v1

    move v3, v1

    .line 949
    goto/16 :goto_4f

    .line 893
    :cond_130
    iput-boolean v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 894
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v3, v4}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    goto :goto_f6

    .line 902
    :cond_13a
    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v3, :cond_157

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    :goto_140
    invoke-direct {p0, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->checkFile(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 904
    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v3, :cond_ff

    .line 906
    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-eqz v3, :cond_ff

    .line 908
    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 909
    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_ff

    .line 902
    :cond_157
    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    goto :goto_140

    .line 920
    :cond_15a
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-lez v3, :cond_180

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v3, :cond_180

    .line 922
    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v3, :cond_129

    .line 924
    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v3, :cond_17d

    .line 926
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 927
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v3, v4, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 930
    :cond_17d
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    goto :goto_129

    .line 933
    :cond_180
    sget v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v3, v7, :cond_129

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-nez v3, :cond_129

    .line 935
    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v3, :cond_129

    .line 937
    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v3, :cond_1a3

    .line 939
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 940
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v3, v4, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 943
    :cond_1a3
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    goto :goto_129
.end method

.method public stopEnroll()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 782
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: stopEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v1, :cond_12

    .line 786
    const/4 v0, -0x1

    .line 799
    :goto_11
    return v0

    .line 789
    :cond_12
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_1f

    .line 791
    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 792
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Set sensoryUDTSIDThreadEnable false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_1f
    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 796
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isStartNextEnroll:Z

    .line 798
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    goto :goto_11
.end method

.method public stopVerify()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 954
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "stopVerify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_12

    .line 977
    :cond_11
    :goto_11
    return v0

    .line 961
    :cond_12
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_11

    .line 966
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateVerify()I

    .line 968
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2a

    .line 970
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-eqz v0, :cond_2a

    .line 972
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 973
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    :cond_2a
    move v0, v1

    .line 977
    goto :goto_11
.end method
