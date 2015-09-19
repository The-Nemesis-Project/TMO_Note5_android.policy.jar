.class public Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final SEC_DOUBLE_TAP_TIMEOUT:I = 0xaa

.field private static final TAG:Ljava/lang/String; = "MultitapKeyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleEventTime:J

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeFakeTripleTapPending:Z

.field private mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerConsumed:Z

.field private mPowerDoubleTapPending:Z

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mPowerTripleEventTime:J

.field private mPowerTripleTapPending:Z

.field private mPowerTripleTapReady:Z

.field private mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 7
    .param p1, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "samsungPhoneWindowManager"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 62
    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    .line 63
    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 237
    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$1;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 267
    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$2;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 290
    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$3;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 304
    new-instance v0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager$4;-><init>(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 70
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    return p1
.end method

.method private handleDoubleTapOnPower()V
    .registers 2

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    .line 288
    return-void
.end method

.method private handleTripleTapOnHome()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 248
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 250
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_24

    .line 251
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    .line 265
    :goto_1d
    return-void

    .line 254
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto :goto_1d

    .line 260
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    goto :goto_1d

    .line 263
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_1d
.end method

.method private handleTripleTapOnPower()V
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    .line 301
    return-void
.end method


# virtual methods
.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 15
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "force"    # Z

    .prologue
    const-wide/16 v6, 0xaa

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 79
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 80
    .local v2, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1a

    move v0, v3

    .line 82
    .local v0, "down":Z
    :goto_15
    sparse-switch v1, :sswitch_data_19a

    :cond_18
    move v3, v4

    .line 185
    :cond_19
    :goto_19
    return v3

    .end local v0    # "down":Z
    :cond_1a
    move v0, v4

    .line 80
    goto :goto_15

    .line 84
    .restart local v0    # "down":Z
    :sswitch_1c
    if-nez v0, :cond_69

    .line 85
    iput-wide v10, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 86
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    if-eqz v5, :cond_2b

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-nez v5, :cond_2b

    .line 87
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    goto :goto_19

    .line 91
    :cond_2b
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-nez v4, :cond_33

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v4, :cond_4d

    .line 92
    :cond_33
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_19

    const-string v4, "MultitapKeyManager"

    const-string v5, "Home tripletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 97
    :cond_4d
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 99
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_19

    const-string v4, "MultitapKeyManager"

    const-string v5, "Home doubletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 104
    :cond_69
    if-nez v2, :cond_18

    .line 105
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 108
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_aa

    .line 109
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_a3

    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap wakeup time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_a3
    iput-wide v10, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    goto/16 :goto_19

    .line 116
    :cond_aa
    if-eqz p2, :cond_d5

    .line 117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x154

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 118
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_19

    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap first event time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 122
    :cond_d5
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v5, :cond_f5

    .line 123
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 124
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 126
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    goto/16 :goto_19

    .line 128
    :cond_ee
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    goto/16 :goto_19

    .line 132
    :cond_f5
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v5, :cond_18

    .line 133
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 134
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleTripleTapOnHome()V

    goto/16 :goto_19

    .line 141
    :sswitch_107
    if-nez v0, :cond_15e

    .line 142
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    if-eqz v5, :cond_111

    .line 143
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    goto/16 :goto_19

    .line 147
    :cond_111
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v5

    if-eqz v5, :cond_132

    .line 148
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    .line 150
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_132

    const-string v5, "MultitapKeyManager"

    const-string v6, "Power tripletap timeout posted!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_132
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    if-nez p2, :cond_18

    .line 153
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 155
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    sget-boolean v4, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_19

    const-string v4, "MultitapKeyManager"

    const-string v5, "Power doubletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 160
    :cond_15e
    if-nez v2, :cond_18

    .line 161
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 162
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    if-eqz v5, :cond_17b

    .line 163
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_190

    .line 165
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    if-eqz v5, :cond_18d

    .line 166
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    .line 167
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleTripleTapOnPower()V

    .line 176
    :cond_17b
    :goto_17b
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    if-eqz v5, :cond_18

    .line 177
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 178
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->handleDoubleTapOnPower()V

    goto/16 :goto_19

    .line 169
    :cond_18d
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_17b

    .line 172
    :cond_190
    const-string v5, "MultitapKeyManager"

    const-string v6, "mPowerTripleTap is timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_17b

    .line 82
    :sswitch_data_19a
    .sparse-switch
        0x3 -> :sswitch_1c
        0x1a -> :sswitch_107
    .end sparse-switch
.end method

.method public handleDoubleTapOnHome()V
    .registers 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 191
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 192
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in Sealed mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_15
    return-void

    .line 198
    :cond_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 199
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in kidsmode and container only mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 205
    :cond_26
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 206
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in access control"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 212
    :cond_37
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 213
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in LockTaskMode enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 218
    :cond_47
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCurrentUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_57

    .line 219
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in UserSetup not complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 223
    :cond_57
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 224
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in SimLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 228
    :cond_67
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 229
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in CarrierLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 233
    :cond_77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchDoubleTapOnHomeCommand()V

    goto :goto_15
.end method

.method public isHomeConsumed()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeConsumed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
