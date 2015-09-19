.class public Lcom/android/internal/policy/impl/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mLastTranslucents:[J

.field private mPendingShow:Z

.field private mPendingShows:[Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mState:I

.field private mStates:[I

.field private final mStatusBarManagerId:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private mTransientBarStates:[I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWins:[Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/internal/policy/impl/BarController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I

    .prologue
    const/4 v1, 0x4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 70
    new-array v0, v1, [Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWins:[Landroid/view/WindowManagerPolicy$WindowState;

    .line 71
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStates:[I

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarStates:[I

    .line 73
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShows:[Z

    .line 74
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucents:[J

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    .line 81
    iput p3, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    .line 82
    iput p4, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    .line 83
    iput p5, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I

    .line 84
    iput p6, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentWmFlag:I

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BarController;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BarController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BarController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/internal/policy/impl/BarController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/BarController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/BarController;Lcom/android/internal/statusbar/IStatusBarService;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/BarController;
    .param p1, "x1"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p1
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .registers 11
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    .line 348
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;ZI)I

    move-result v0

    return v0
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;ZI)I
    .registers 13
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z
    .param p5, "displayId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 355
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 359
    .local v1, "mState":I
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 360
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 361
    .local v2, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 362
    .local v0, "anim":Z
    if-ne v1, v5, :cond_1b

    if-nez p4, :cond_1b

    if-nez v2, :cond_1b

    move v1, v3

    .line 374
    .end local v0    # "anim":Z
    .end local v1    # "mState":I
    .end local v2    # "vis":Z
    :cond_1a
    :goto_1a
    return v1

    .line 364
    .restart local v0    # "anim":Z
    .restart local v1    # "mState":I
    .restart local v2    # "vis":Z
    :cond_1b
    if-ne v1, v3, :cond_21

    if-eqz v2, :cond_21

    move v1, v4

    .line 365
    goto :goto_1a

    .line 366
    :cond_21
    if-eqz p4, :cond_1a

    .line 367
    if-eqz p1, :cond_2d

    if-eqz v2, :cond_2d

    if-nez p2, :cond_2d

    if-eqz v0, :cond_2d

    move v1, v5

    .line 368
    goto :goto_1a

    :cond_2d
    move v1, v4

    .line 370
    goto :goto_1a
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 601
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 604
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 605
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private setTransientBarState(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "displayId"    # I

    .prologue
    const/4 v2, 0x2

    .line 568
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 569
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 573
    .local v0, "mTransientBarState":I
    if-eqz v1, :cond_3f

    if-eq p1, v0, :cond_3f

    .line 574
    if-eq v0, v2, :cond_d

    if-ne p1, v2, :cond_13

    .line 580
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    .line 591
    :cond_13
    iput p1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 594
    sget-boolean v2, Lcom/android/internal/policy/impl/BarController;->DEBUG:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTransientBarState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/policy/impl/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3f
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 609
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string v0, "TRANSIENT_BAR_HIDING"

    .line 612
    :goto_5
    return-object v0

    .line 610
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_5

    .line 611
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    goto :goto_5

    .line 612
    :cond_12
    if-nez p0, :cond_17

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_5

    .line 613
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(II)Z

    move-result v0

    return v0
.end method

.method private updateStateLw(II)Z
    .registers 7
    .param p1, "state"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 386
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 390
    .local v0, "mState":I
    if-eq p1, v0, :cond_3c

    .line 396
    iput p1, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    .line 400
    sget-boolean v1, Lcom/android/internal/policy/impl/BarController;->DEBUG:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/BarController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/BarController$1;-><init>(Lcom/android/internal/policy/impl/BarController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    const/4 v1, 0x1

    .line 428
    :goto_3b
    return v1

    :cond_3c
    const/4 v1, 0x0

    goto :goto_3b
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .registers 4
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(III)V

    .line 229
    return-void
.end method

.method public adjustSystemUiVisibilityLw(III)V
    .registers 8
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I
    .param p3, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 238
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 242
    .local v0, "mTransientBarState":I
    if-eqz v1, :cond_1e

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1e

    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    and-int/2addr v2, p2

    if-nez v2, :cond_1e

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 245
    const/4 v2, 0x3

    invoke-direct {p0, v2, p3}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(II)V

    .line 246
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(ZZI)Z

    .line 251
    :cond_1d
    :goto_1d
    return-void

    .line 247
    :cond_1e
    if-eqz v1, :cond_1d

    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    and-int/2addr v2, p2

    if-nez v2, :cond_1d

    .line 249
    invoke-virtual {p0, v3, v3, p3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(ZZI)Z

    goto :goto_1d
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;III)I

    move-result v0

    return v0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;III)I
    .registers 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I
    .param p4, "displayId"    # I

    .prologue
    const v5, 0x8000

    const v4, -0x8001

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 266
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_31

    .line 267
    if-eqz p1, :cond_3a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_3a

    .line 269
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 270
    .local v0, "fl":I
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentWmFlag:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_32

    .line 271
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v2

    .line 275
    :goto_23
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-nez v2, :cond_30

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_30

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_38

    .line 280
    :cond_30
    or-int/2addr p2, v5

    .line 289
    .end local v0    # "fl":I
    :cond_31
    :goto_31
    return p2

    .line 273
    .restart local v0    # "fl":I
    :cond_32
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr p2, v2

    goto :goto_23

    .line 282
    :cond_38
    and-int/2addr p2, v4

    goto :goto_31

    .line 285
    .end local v0    # "fl":I
    :cond_3a
    iget v2, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v3, p3

    or-int p2, v2, v3

    .line 286
    and-int v2, p2, v4

    and-int v3, p3, v5

    or-int p2, v2, v3

    goto :goto_31
.end method

.method public checkHiddenLw()Z
    .registers 2

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw(I)Z

    move-result v0

    return v0
.end method

.method public checkHiddenLw(I)Z
    .registers 8
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 444
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 445
    .local v2, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 446
    .local v1, "mTransientBarState":I
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    .line 450
    .local v0, "mPendingShow":Z
    if-eqz v2, :cond_34

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 451
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_20

    .line 452
    const/4 v5, 0x2

    invoke-direct {p0, v5, p1}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(II)Z

    .line 454
    :cond_20
    const/4 v5, 0x3

    if-ne v1, v5, :cond_34

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_34

    .line 456
    invoke-direct {p0, v4, p1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(II)V

    .line 457
    if-eqz v0, :cond_33

    .line 458
    invoke-virtual {p0, v3, v3, p1}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(ZZI)Z

    .line 464
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    .line 471
    :cond_33
    :goto_33
    return v3

    :cond_34
    move v3, v4

    goto :goto_33
.end method

.method public checkShowTransientBarLw()Z
    .registers 2

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw(I)Z

    move-result v0

    return v0
.end method

.method public checkShowTransientBarLw(I)Z
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 485
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 486
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 490
    .local v0, "mTransientBarState":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_15

    .line 491
    sget-boolean v3, Lcom/android/internal/policy/impl/BarController;->DEBUG:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, already shown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_14
    :goto_14
    return v2

    .line 493
    :cond_15
    if-ne v0, v3, :cond_23

    .line 494
    sget-boolean v3, Lcom/android/internal/policy/impl/BarController;->DEBUG:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, already requested"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 496
    :cond_23
    if-nez v1, :cond_31

    .line 497
    sget-boolean v3, Lcom/android/internal/policy/impl/BarController;->DEBUG:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, bar doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 499
    :cond_31
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 500
    sget-boolean v3, Lcom/android/internal/policy/impl/BarController;->DEBUG:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, bar already visible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_43
    move v2, v3

    .line 503
    goto :goto_14
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_40

    .line 632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 634
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 636
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/internal/policy/impl/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    :cond_40
    return-void
.end method

.method public hideTransient()V
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->hideTransient(I)V

    .line 133
    return-void
.end method

.method public hideTransient(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 143
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(II)V

    .line 144
    return-void
.end method

.method public isTransientHiding()Z
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->isTransientHiding(I)Z

    move-result v0

    return v0
.end method

.method public isTransientHiding(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 204
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTransientShowRequested()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested(I)Z

    move-result v0

    return v0
.end method

.method public isTransientShowRequested(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v0, 0x1

    .line 188
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTransientShowing()Z
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing(I)Z

    move-result v0

    return v0
.end method

.method public isTransientShowing(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public resetTransient()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->resetTransient(I)V

    .line 150
    return-void
.end method

.method public resetTransient(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 160
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(II)V

    .line 161
    return-void
.end method

.method public setBarShowingLw(Z)Z
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(ZZ)Z

    move-result v0

    return v0
.end method

.method public setBarShowingLw(ZZ)Z
    .registers 5
    .param p1, "show"    # Z
    .param p2, "hideAnimation"    # Z

    .prologue
    .line 300
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(ZZI)Z

    move-result v0

    return v0
.end method

.method public setBarShowingLw(ZZI)Z
    .registers 16
    .param p1, "show"    # Z
    .param p2, "hideAnimation"    # Z
    .param p3, "displayId"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 310
    .local v2, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v1, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 314
    .local v1, "mTransientBarState":I
    if-nez v2, :cond_a

    .line 343
    :cond_9
    :goto_9
    return v7

    .line 317
    :cond_a
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7d0

    if-ne v9, v10, :cond_26

    .line 318
    if-nez p1, :cond_26

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v9, v11, :cond_26

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v9, v11, :cond_9

    .line 325
    :cond_26
    if-eqz p1, :cond_2e

    const/4 v9, 0x3

    if-ne v1, v9, :cond_2e

    .line 331
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/BarController;->mPendingShow:Z

    goto :goto_9

    .line 337
    :cond_2e
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    .line 338
    .local v6, "wasVis":Z
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    .line 339
    .local v5, "wasAnim":Z
    if-eqz p1, :cond_4a

    invoke-interface {v2, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 341
    .local v0, "change":Z
    :goto_3c
    invoke-direct {p0, v6, v5, v2, v0}, Lcom/android/internal/policy/impl/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v3

    .line 342
    .local v3, "state":I
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/BarController;->updateStateLw(I)Z

    move-result v4

    .line 343
    .local v4, "stateChanged":Z
    if-nez v0, :cond_48

    if-eqz v4, :cond_9

    :cond_48
    move v7, v8

    goto :goto_9

    .line 339
    .end local v0    # "change":Z
    .end local v3    # "state":I
    .end local v4    # "stateChanged":Z
    :cond_4a
    invoke-interface {v2, p2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_3c
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;I)V

    .line 98
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;I)V
    .registers 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "displayId"    # I

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 109
    return-void
.end method

.method public showTransient()V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->showTransient(I)V

    .line 114
    return-void
.end method

.method public showTransient(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 125
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_8

    .line 126
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(II)V

    .line 128
    :cond_8
    return-void
.end method

.method public updateVisibilityLw(ZII)I
    .registers 5
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZIII)I

    move-result v0

    return v0
.end method

.method public updateVisibilityLw(ZIII)I
    .registers 11
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I
    .param p4, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 518
    iget-object v1, p0, Lcom/android/internal/policy/impl/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 519
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, Lcom/android/internal/policy/impl/BarController;->mTransientBarState:I

    .line 523
    .local v0, "mTransientBarState":I
    if-nez v1, :cond_9

    move v2, p3

    .line 556
    .end local p3    # "vis":I
    .local v2, "vis":I
    :goto_8
    return v2

    .line 524
    .end local v2    # "vis":I
    .restart local p3    # "vis":I
    :cond_9
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing(I)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 526
    :cond_15
    if-eqz p1, :cond_45

    .line 527
    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    or-int/2addr p3, v3

    .line 528
    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    and-int/2addr v3, p2

    if-nez v3, :cond_22

    .line 529
    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mUnhideFlag:I

    or-int/2addr p3, v3

    .line 531
    :cond_22
    const/4 v3, 0x2

    invoke-direct {p0, v3, p4}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(II)V

    .line 540
    :cond_26
    :goto_26
    if-eqz v0, :cond_2d

    .line 541
    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mTransientFlag:I

    or-int/2addr p3, v3

    .line 542
    and-int/lit8 p3, p3, -0x2

    .line 544
    :cond_2d
    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v3, p3

    if-nez v3, :cond_3d

    iget v3, p0, Lcom/android/internal/policy/impl/BarController;->mTranslucentFlag:I

    and-int/2addr v3, p2

    if-nez v3, :cond_3d

    or-int v3, p3, p2

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_43

    .line 551
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    :cond_43
    move v2, p3

    .line 556
    .end local p3    # "vis":I
    .restart local v2    # "vis":I
    goto :goto_8

    .line 533
    .end local v2    # "vis":I
    .restart local p3    # "vis":I
    :cond_45
    invoke-direct {p0, v4, p4}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(II)V

    goto :goto_26

    .line 536
    :cond_49
    if-nez p1, :cond_26

    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/BarController;->isTransientHiding(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 537
    invoke-direct {p0, v4, p4}, Lcom/android/internal/policy/impl/BarController;->setTransientBarState(II)V

    goto :goto_26
.end method

.method public wasRecentlyTranslucent()Z
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent(I)Z

    move-result v0

    return v0
.end method

.method public wasRecentlyTranslucent(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
