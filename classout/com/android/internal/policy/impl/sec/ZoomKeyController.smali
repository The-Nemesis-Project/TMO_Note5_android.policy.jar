.class public Lcom/android/internal/policy/impl/sec/ZoomKeyController;
.super Ljava/lang/Object;
.source "ZoomKeyController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LAUNCH_ZOOM_MOVE_REPEAT_COUNT:I = 0x4

.field private static final SAFE_DEBUG:Z

.field private static final SCANCODE_ZOOM_RING_IN:I = 0x225

.field private static final SCANCODE_ZOOM_RING_OUT:I = 0x226

.field private static final TAG:Ljava/lang/String; = "ZoomRingController"


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field private mControlZoomRingKey:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mZoomMoveActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mControlZoomRingKey:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 110
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private isControlZoomRing()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mControlZoomRingKey:Z

    return v0
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isRotateZoomRingtoLaunchApp()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    monitor-enter p0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 180
    .local v0, "size":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2f

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2f

    .line 184
    monitor-exit p0

    move v1, v2

    .line 189
    :goto_2e
    return v1

    .line 187
    :cond_2f
    monitor-exit p0

    move v1, v3

    .line 189
    goto :goto_2e

    .line 187
    .end local v0    # "size":I
    :catchall_32
    move-exception v1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private isZoomRingKeyEvent(II)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "scanCode"    # I

    .prologue
    .line 140
    const/16 v0, 0xa8

    if-ne p1, v0, :cond_8

    const/16 v0, 0x225

    if-eq p2, v0, :cond_10

    :cond_8
    const/16 v0, 0xa9

    if-ne p1, v0, :cond_12

    const/16 v0, 0x226

    if-ne p2, v0, :cond_12

    .line 142
    :cond_10
    const/4 v0, 0x1

    .line 144
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private launchModeDialApp()V
    .registers 6

    .prologue
    .line 193
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "ZoomRingController"

    const-string v3, "launch ModeDial App"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_b
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.modedialapplication"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3f

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 198
    :try_start_1f
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_24} :catch_25

    .line 205
    :goto_24
    return-void

    .line 199
    :catch_25
    move-exception v0

    .line 200
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ZoomRingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t found component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 203
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3f
    const-string v2, "ZoomRingController"

    const-string v3, "Can\'t found launch intent for mode dial application"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private onInputZoomRingMoveAction(IIZ)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 152
    monitor-enter p0

    .line 153
    if-ne p1, v2, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 154
    monitor-exit p0

    .line 168
    :goto_d
    return-void

    .line 156
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->isControlZoomRing()Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez p3, :cond_18

    if-eqz p2, :cond_20

    .line 157
    :cond_18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->resetZoomMoveActionList()V

    .line 158
    monitor-exit p0

    goto :goto_d

    .line 167
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v0

    .line 160
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    if-ne p1, v2, :cond_35

    .line 163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->isRotateZoomRingtoLaunchApp()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 164
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->launchModeDialApp()V

    .line 167
    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_1d

    goto :goto_d
.end method

.method private resetZoomMoveActionList()V
    .registers 3

    .prologue
    .line 171
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ZoomRingController"

    const-string v1, "reset ZoomMoveActionList"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_b
    monitor-enter p0

    .line 173
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    monitor-exit p0

    .line 175
    return-void

    .line 174
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method

.method private setStateControlZoomRing(I)V
    .registers 3
    .param p1, "action"    # I

    .prologue
    .line 125
    if-nez p1, :cond_6

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mControlZoomRingKey:Z

    .line 134
    :goto_5
    return-void

    .line 128
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mControlZoomRingKey:Z

    .line 129
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->resetZoomMoveActionList()V

    goto :goto_5
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 55
    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->handleKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "streamType"    # I

    .prologue
    const/4 v5, 0x1

    .line 59
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 60
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 61
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    .line 62
    .local v4, "scanCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 64
    .local v3, "repeatCount":I
    sparse-switch v2, :sswitch_data_66

    .line 102
    :cond_14
    const/4 v5, 0x0

    :cond_15
    :goto_15
    return v5

    .line 67
    :sswitch_16
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->isZoomRingKeyEvent(II)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_14

    .line 74
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->setStateControlZoomRing(I)V

    goto :goto_15

    .line 76
    :cond_2a
    if-nez v0, :cond_34

    .line 77
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_15

    .line 79
    :cond_34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_15

    .line 80
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 82
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_15

    .line 83
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    goto :goto_15

    .line 92
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :sswitch_4e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_14

    .line 96
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->isControlZoomRing()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    invoke-direct {p0, v0, v3, v6}, Lcom/android/internal/policy/impl/sec/ZoomKeyController;->onInputZoomRingMoveAction(IIZ)V

    goto :goto_15

    .line 64
    :sswitch_data_66
    .sparse-switch
        0xa8 -> :sswitch_16
        0xa9 -> :sswitch_16
        0x126 -> :sswitch_4e
    .end sparse-switch
.end method
