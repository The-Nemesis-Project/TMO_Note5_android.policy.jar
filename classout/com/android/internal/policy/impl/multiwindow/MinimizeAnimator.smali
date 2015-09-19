.class public Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"


# instance fields
.field private final TOUCH_DOWN_MOVEMENT_LOOP:I

.field private final TRASH_DIRECTION_LEFT:I

.field private final TRASH_DIRECTION_NONE:I

.field private final TRASH_DIRECTION_RIGHT:I

.field private coveredTrash:Landroid/widget/ImageView;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrMoveDistance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field mHandler:Landroid/os/Handler;

.field private mIsLongPressed:Z

.field private mIsShowingTrash:Z

.field mIsSupportResizeVisualCue:Z

.field private mIsTouchDown:Z

.field private mMinimizeIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mNeedAnimation:Z

.field private mOldPositionX:F

.field private mOldPositionY:F

.field private mRemoveLayoutHeight:I

.field mShiftPosition:Ljava/lang/Runnable;

.field private mShowTrashDirection:I

.field private mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

.field private mToken:Landroid/os/IBinder;

.field mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;

.field private removeLayout:Landroid/view/View;

.field private statusBarHeight:I

.field private topBgFoucsEffect:Landroid/widget/ImageView;

.field private trash:Landroid/view/View;

.field private trashBody:Landroid/widget/ImageView;

.field private trashCover:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TOUCH_DOWN_MOVEMENT_LOOP:I

    .line 54
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    .line 56
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    .line 60
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    .line 68
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    .line 70
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    .line 72
    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    .line 90
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    .line 92
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    .line 94
    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    .line 96
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mH:Landroid/os/Handler;

    .line 104
    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TRASH_DIRECTION_NONE:I

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TRASH_DIRECTION_LEFT:I

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->TRASH_DIRECTION_RIGHT:I

    .line 389
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    .line 599
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_55

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    .line 121
    :cond_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportResizeVisualCue(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsSupportResizeVisualCue:Z

    .line 127
    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->openTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->shakeTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->closeTrashCoverAnimation()V

    return-void
.end method

.method private closeTrashCoverAnimation()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 700
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, -0x42b33333

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 702
    .local v0, "transAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 703
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 704
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$8;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 713
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 714
    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 341
    sget-boolean v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v2, :cond_c

    .line 342
    const-string v2, "MultiPhoneWindow"

    const-string v3, "MinimizeAnimator::createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_c
    const/4 v1, 0x2

    .line 347
    .local v1, "windowType":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1000578

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 355
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 356
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit16 v2, v2, 0x209

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 361
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 362
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 364
    return-object v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;Z)Z
    .registers 9
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 224
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 226
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_3c

    .line 227
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 232
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3b

    if-eqz p2, :cond_3b

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v4, :cond_3b

    .line 234
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 235
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_3b

    .line 236
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    .line 237
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 238
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 242
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3b
    :goto_3b
    return v3

    :cond_3c
    move v3, v4

    .line 229
    goto :goto_3b
.end method

.method private getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    .line 333
    .local v0, "mThumbnail":Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v12, 0x105022c

    const/high16 v11, 0x40400000

    const/high16 v10, 0x40000000

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 455
    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v5, :cond_25

    .line 456
    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MinimizeAnimator::handleTouchDown : event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    .line 459
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_8e

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v5

    sub-float v5, v6, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sub-float v1, v5, v6

    .line 464
    .local v1, "totalMoveDistanceX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getY()F

    move-result v5

    sub-float v5, v6, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    sub-float v2, v5, v6

    .line 469
    .local v2, "totalMoveDistanceY":F
    div-float v3, v1, v11

    .line 470
    .local v3, "unitMoveDistanceX":F
    div-float v4, v2, v11

    .line 472
    .local v4, "unitMoveDistanceY":F
    const/4 v0, 0x0

    .local v0, "loop":I
    :goto_7e
    const/4 v5, 0x3

    if-ge v0, v5, :cond_8e

    .line 473
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v6, v3, v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(FF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 476
    .end local v0    # "loop":I
    .end local v1    # "totalMoveDistanceX":F
    .end local v2    # "totalMoveDistanceY":F
    .end local v3    # "unitMoveDistanceX":F
    .end local v4    # "unitMoveDistanceY":F
    :cond_8e
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    .line 477
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    .line 478
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 479
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_ac

    .line 480
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    :cond_ac
    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 485
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_15

    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_15

    .line 559
    :cond_14
    :goto_14
    return-void

    .line 488
    :cond_15
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    if-eqz v8, :cond_9d

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getX()F

    move-result v8

    sub-float v8, v9, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105022c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float v2, v8, v9

    .line 493
    .local v2, "totalMoveDistanceX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getY()F

    move-result v8

    sub-float v8, v9, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105022c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float v3, v8, v9

    .line 498
    .local v3, "totalMoveDistanceY":F
    const/high16 v8, 0x40400000

    div-float v4, v2, v8

    .line 499
    .local v4, "unitMoveDistanceX":F
    const/high16 v8, 0x40400000

    div-float v5, v3, v8

    .line 501
    .local v5, "unitMoveDistanceY":F
    const/4 v1, 0x0

    .local v1, "loop":I
    :goto_6e
    const/4 v8, 0x3

    if-ge v1, v8, :cond_7e

    .line 502
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v9, v4, v5}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(FF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 504
    :cond_7e
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 505
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 507
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    .line 509
    .end local v1    # "loop":I
    .end local v2    # "totalMoveDistanceX":F
    .end local v3    # "totalMoveDistanceY":F
    .end local v4    # "unitMoveDistanceX":F
    .end local v5    # "unitMoveDistanceY":F
    :cond_9d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    sub-float v6, v8, v9

    .line 510
    .local v6, "xdiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    sub-float v7, v8, v9

    .line 511
    .local v7, "ydiff":F
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_147

    .line 512
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v9, v6, v7}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(FF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :goto_c0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionX:F

    .line 518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mOldPositionY:F

    .line 520
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-eqz v8, :cond_14

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_184

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iget v10, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_184

    .line 522
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsSupportResizeVisualCue:Z

    if-eqz v8, :cond_131

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_17d

    const/4 v0, 0x1

    .line 530
    .local v0, "currentDirection":I
    :goto_118
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const v9, 0x3fe66666

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 531
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const v9, 0x3fe66666

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 532
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    if-eq v8, v0, :cond_131

    .line 533
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    .line 534
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    .line 538
    .end local v0    # "currentDirection":I
    :cond_131
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    if-eqz v8, :cond_14

    .line 539
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    .line 540
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsSupportResizeVisualCue:Z

    if-eqz v8, :cond_17f

    .line 541
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    if-eqz v8, :cond_14

    .line 542
    iget v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShowTrashDirection:I

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->openRedCircleTrashCoverAnimation(I)V

    goto/16 :goto_14

    .line 514
    :cond_147
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getX()F

    move-result v9

    add-float/2addr v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setX(F)V

    .line 515
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getY()F

    move-result v9

    add-float/2addr v9, v7

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_c0

    .line 529
    :cond_17d
    const/4 v0, 0x2

    goto :goto_118

    .line 545
    :cond_17f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->scaleTrashAnimation()V

    goto/16 :goto_14

    .line 549
    :cond_184
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->clearAnimation()V

    .line 555
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 556
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    goto/16 :goto_14
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 562
    sget-boolean v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v2, :cond_1e

    .line 563
    const-string v2, "MultiPhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MinimizeAnimator::handleTouchUp : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1e
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z

    .line 565
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->hide()V

    .line 567
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-nez v2, :cond_28

    .line 583
    :goto_27
    return-void

    .line 571
    :cond_28
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 572
    .local v1, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5e

    invoke-virtual {v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5e

    .line 575
    :try_start_56
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->removeAllTasks(Landroid/os/IBinder;I)V
    :try_end_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_5e} :catch_64

    .line 581
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->hideTrash()V

    .line 582
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    goto :goto_27

    .line 576
    :catch_64
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_5e
.end method

.method private hide()V
    .registers 3

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_b

    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_21
    return-void
.end method

.method private openRedCircleTrashCoverAnimation(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->shakeRedCircleTrashCoverAnimation(I)V

    .line 604
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->scaleRedCircleTrashCoverAnimation()V

    .line 605
    return-void
.end method

.method private openTrashCoverAnimation()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 663
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, -0x42b33333

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 665
    .local v0, "transAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 666
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 667
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 668
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 677
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 678
    return-void
.end method

.method private scaleRedCircleTrashCoverAnimation()V
    .registers 10

    .prologue
    const v2, 0x3fa66666

    const/high16 v1, 0x3f800000

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 629
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 631
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 632
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 633
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 634
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 635
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_32

    .line 636
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    :cond_32
    return-void
.end method

.method private scaleTrashAnimation()V
    .registers 10

    .prologue
    const v2, 0x3f8ccccd

    const/high16 v1, 0x3f800000

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 646
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 648
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 649
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 650
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 659
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 660
    return-void
.end method

.method private shakeRedCircleTrashCoverAnimation(I)V
    .registers 10
    .param p1, "direction"    # I

    .prologue
    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 608
    const/16 v7, 0xf

    .line 609
    .local v7, "degreeByDirection":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 610
    mul-int/lit8 v7, v7, -0x1

    .line 612
    :cond_a
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v7

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 614
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 615
    const-wide/16 v4, 0x10a

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 616
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 617
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 618
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_34

    .line 619
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;Landroid/view/animation/RotateAnimation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    :cond_34
    return-void
.end method

.method private shakeTrashCoverAnimation()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 681
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f600000

    const/high16 v2, 0x40a00000

    const/high16 v4, 0x3f000000

    const v6, 0x3f4ccccd

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 683
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x3c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 684
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 685
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 686
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 687
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$7;-><init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 696
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 697
    return-void
.end method

.method private show()V
    .registers 3

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_b

    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_21
    return-void
.end method


# virtual methods
.method public addWindow()Landroid/view/Window;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 190
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-nez v4, :cond_69

    .line 191
    sget-boolean v4, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v4, :cond_24

    .line 192
    const-string v4, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MinimizeAnimator::addWindow(), token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_24
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 196
    .local v2, "newWindowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    .line 197
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v4, :cond_61

    .line 198
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 199
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v4, v5, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "newDecor":Landroid/view/View;
    if-eqz v1, :cond_61

    .line 205
    const/4 v3, 0x0

    :try_start_54
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 206
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_5c} :catch_64

    .line 210
    :goto_5c
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    .end local v1    # "newDecor":Landroid/view/View;
    :cond_61
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    .line 218
    .end local v2    # "newWindowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_63
    :goto_63
    return-object v3

    .line 207
    .restart local v1    # "newDecor":Landroid/view/View;
    .restart local v2    # "newWindowAttributes":Landroid/view/WindowManager$LayoutParams;
    :catch_64
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5c

    .line 215
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "newDecor":Landroid/view/View;
    .end local v2    # "newWindowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_69
    sget-boolean v4, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v4, :cond_63

    .line 216
    const-string v4, "MultiPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MinimizeAnimator::addWindow(), MinimizeAnimator already has mWindow, failed addWindow(), token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public handleLongClick()V
    .registers 3

    .prologue
    .line 448
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_b

    .line 449
    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::handleLongClick"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsLongPressed:Z

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public hideTrash()V
    .registers 3

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    if-eqz v0, :cond_e

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_e
    return-void
.end method

.method public initialize(II)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v8, 0x0

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 138
    .local v1, "rootView":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "idx":I
    :goto_29
    if-ltz v0, :cond_7c

    .line 141
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105022c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105022d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 147
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 148
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    invoke-direct {v3, v8, v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 150
    :cond_7c
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 151
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->show()V

    .line 153
    return-void
.end method

.method public isShowingTrash()Z
    .registers 2

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    return v0
.end method

.method public makeMinimizeIcons(Z)Landroid/widget/ImageView;
    .registers 10
    .param p1, "bTabMode"    # Z

    .prologue
    .line 297
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 298
    if-eqz p1, :cond_59

    .line 299
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_bb

    .line 300
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 301
    .local v4, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 302
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 303
    .local v3, "iv":Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 304
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v5, :cond_19

    .line 307
    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeMinimizeIcons componentName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 311
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_59
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v5, :cond_65

    .line 312
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 314
    :cond_65
    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 315
    .restart local v3    # "iv":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v5, :cond_78

    .line 316
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 318
    :cond_78
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 319
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :cond_8b
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 322
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v5, :cond_bb

    .line 325
    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeMinimizeIcons componentName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iv":Landroid/widget/ImageView;
    :cond_bb
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    return-object v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 387
    :goto_8
    return-void

    .line 375
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    goto :goto_8

    .line 377
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 380
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 384
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 375
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_19
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method

.method public removeWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 173
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v0, :cond_c

    .line 174
    const-string v0, "MultiPhoneWindow"

    const-string v1, "MinimizeAnimator::removeWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1d

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 178
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    .line 181
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-eqz v0, :cond_23

    .line 182
    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 184
    :cond_23
    return-void
.end method

.method public showTrash()V
    .registers 15

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 246
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 247
    .local v10, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x1090090

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    .line 248
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;

    .line 249
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->coveredTrash:Landroid/widget/ImageView;

    .line 250
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;

    .line 251
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203cf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashBody:Landroid/widget/ImageView;

    .line 252
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsSupportResizeVisualCue:Z

    if-eqz v3, :cond_d8

    .line 253
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    .line 258
    :goto_58
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 259
    .local v9, "fullscreen":Landroid/graphics/Point;
    invoke-direct {p0, v9, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 261
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    .line 262
    .local v12, "rootView":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, v9, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 265
    const/4 v3, 0x0

    :try_start_7e
    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    .line 266
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v13

    .line 267
    .local v13, "wm":Landroid/view/IWindowManager;
    invoke-interface {v13}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 268
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_9f} :catch_e7

    .line 273
    .end local v13    # "wm":Landroid/view/IWindowManager;
    :cond_9f
    :goto_9f
    new-instance v11, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .local v11, "removeLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->statusBarHeight:I

    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 275
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 279
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsShowingTrash:Z

    .line 283
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mNeedAnimation:Z

    .line 284
    return-void

    .line 255
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "fullscreen":Landroid/graphics/Point;
    .end local v11    # "removeLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "rootView":Landroid/widget/FrameLayout;
    :cond_d8
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeLayout:Landroid/view/View;

    const v4, 0x10203d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->topBgFoucsEffect:Landroid/widget/ImageView;

    goto/16 :goto_58

    .line 270
    .restart local v9    # "fullscreen":Landroid/graphics/Point;
    .restart local v12    # "rootView":Landroid/widget/FrameLayout;
    :catch_e7
    move-exception v3

    goto :goto_9f
.end method
