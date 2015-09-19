.class public Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_COCKTAIL:I = 0x4

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_LEFT_CENTER_LEFT:I = 0x65

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_RIGHT_CENTER_RIGHT:I = 0x64

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private enableCocktailBar:Z

.field private final mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

.field private mCanStartEasyOneHand:Z

.field private mCocktailExtent:I

.field private mCurrentRotation:I

.field private mDebugFireable:Z

.field private final mDisplayId:I

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mFirstDownTime:J

.field private mFirstDownX:I

.field private mFirstDownY:I

.field private mIwm:Landroid/view/IWindowManager;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mStartFromLeft:Z

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 84
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    .line 85
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    .line 86
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 110
    const-string v1, "callbacks"

    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    .line 111
    const-string v1, "context"

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 113
    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 118
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 119
    new-instance v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v1, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 129
    :cond_46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 130
    .local v0, "density":F
    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I

    .line 131
    const/high16 v1, 0x40a00000

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    .line 135
    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDisplayId:I

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;
    .param p3, "displayId"    # I

    .prologue
    const/16 v2, 0x20

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 84
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    .line 85
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    .line 86
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 141
    const-string v1, "callbacks"

    invoke-static {v1, p2}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    .line 142
    const-string v1, "context"

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 144
    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 149
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 150
    new-instance v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v1, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 160
    :cond_45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 161
    .local v0, "density":F
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I

    .line 162
    const/high16 v1, 0x40a00000

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCocktailExtent:I

    .line 165
    iput p3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDisplayId:I

    .line 166
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 309
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 310
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    .line 313
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 320
    :cond_23
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1b

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1b
    return-object p1
.end method

.method private detectEasyOneHandGesture(Landroid/view/MotionEvent;)I
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    .line 448
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v9

    if-eqz v9, :cond_179

    .line 449
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v4, v9, 0x3

    .line 451
    .local v4, "triggerDistance":I
    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v9

    if-eqz v9, :cond_148

    move v9, v10

    :goto_14
    div-int v3, v11, v9

    .line 452
    .local v3, "startPosX":I
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v11

    if-eqz v11, :cond_14b

    :goto_1e
    div-int v2, v9, v10

    .line 453
    .local v2, "endPosX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v5, v9

    .line 454
    .local v5, "upX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v8, v9

    .line 457
    .local v8, "upY":I
    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "detectEasyOneHandGesture() isRunning="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mStartFromLeft="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mStartFromLeft:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MoveDistanceX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MoveDistanceY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iget v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mFirstDownX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mFirstDownY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMaxX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMinX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upX-DownX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    sub-int v11, v5, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upY-DownY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    sub-int v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v9, v10

    if-le v9, v4, :cond_179

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iget v11, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_179

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    if-ltz v9, :cond_179

    .line 467
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    sub-int v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 468
    .local v0, "diffX":I
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 469
    .local v1, "diffY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 471
    .local v6, "upTime":J
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v9, v9, 0x4

    if-ge v0, v9, :cond_179

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    div-int/lit8 v9, v9, 0x8

    if-ge v1, v9, :cond_179

    iget-wide v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1f4

    cmp-long v9, v10, v12

    if-gez v9, :cond_179

    .line 472
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    if-ge v9, v3, :cond_14e

    if-ge v5, v2, :cond_14e

    .line 473
    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "detectEasyOneHandGesture() success left. t1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/16 v9, 0x65

    .line 484
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    .end local v2    # "endPosX":I
    .end local v3    # "startPosX":I
    .end local v4    # "triggerDistance":I
    .end local v5    # "upX":I
    .end local v6    # "upTime":J
    .end local v8    # "upY":I
    :goto_147
    return v9

    .line 451
    .restart local v4    # "triggerDistance":I
    :cond_148
    const/4 v9, 0x5

    goto/16 :goto_14

    .line 452
    .restart local v3    # "startPosX":I
    :cond_14b
    const/4 v10, 0x4

    goto/16 :goto_1e

    .line 476
    .restart local v0    # "diffX":I
    .restart local v1    # "diffY":I
    .restart local v2    # "endPosX":I
    .restart local v5    # "upX":I
    .restart local v6    # "upTime":J
    .restart local v8    # "upY":I
    :cond_14e
    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v10, v3

    if-le v9, v10, :cond_179

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v9, v2

    if-le v5, v9, :cond_179

    .line 477
    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "detectEasyOneHandGesture() success right. t1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v9, 0x64

    goto :goto_147

    .line 484
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    .end local v2    # "endPosX":I
    .end local v3    # "startPosX":I
    .end local v4    # "triggerDistance":I
    .end local v5    # "upX":I
    .end local v6    # "upTime":J
    .end local v8    # "upY":I
    :cond_179
    const/4 v9, -0x1

    goto :goto_147
.end method

.method private detectSwipe(IJFF)I
    .registers 16
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const-wide/16 v8, 0x1f4

    .line 361
    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownX:[F

    aget v2, v5, p1

    .line 362
    .local v2, "fromX":F
    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownY:[F

    aget v3, v5, p1

    .line 363
    .local v3, "fromY":F
    iget-object v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v6, v5, p1

    sub-long v0, p2, v6

    .line 368
    .local v0, "elapsed":J
    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 376
    .local v4, "swipeStartThreshold":I
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_25

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p5, v5

    if-lez v5, :cond_25

    cmp-long v5, v0, v8

    if-gez v5, :cond_25

    .line 391
    const/4 v5, 0x1

    .line 443
    :goto_24
    return v5

    .line 394
    :cond_25
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_3e

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    cmpg-float v5, p5, v5

    if-gez v5, :cond_3e

    cmp-long v5, v0, v8

    if-gez v5, :cond_3e

    .line 409
    const/4 v5, 0x2

    goto :goto_24

    .line 412
    :cond_3e
    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_57

    iget v5, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    cmpg-float v5, p4, v5

    if-gez v5, :cond_57

    cmp-long v5, v0, v8

    if-gez v5, :cond_57

    .line 427
    const/4 v5, 0x3

    goto :goto_24

    .line 443
    :cond_57
    const/4 v5, 0x0

    goto :goto_24
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .registers 22
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 337
    .local v15, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 338
    .local v17, "pointerCount":I
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_a
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_68

    .line 339
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 340
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v3

    .line 341
    .local v3, "i":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_65

    .line 342
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_24
    if-ge v14, v15, :cond_48

    .line 343
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    .line 344
    .local v4, "time":J
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 345
    .local v6, "x":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .local v7, "y":F
    move-object/from16 v2, p0

    .line 346
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 347
    .local v19, "swipe":I
    if-eqz v19, :cond_45

    .line 357
    .end local v3    # "i":I
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v14    # "h":I
    .end local v18    # "pointerId":I
    .end local v19    # "swipe":I
    :cond_44
    :goto_44
    return v19

    .line 342
    .restart local v3    # "i":I
    .restart local v4    # "time":J
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    .restart local v14    # "h":I
    .restart local v18    # "pointerId":I
    .restart local v19    # "swipe":I
    :cond_45
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 351
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v19    # "swipe":I
    :cond_48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 352
    .restart local v19    # "swipe":I
    if-nez v19, :cond_44

    .line 338
    .end local v14    # "h":I
    .end local v19    # "swipe":I
    :cond_65
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 357
    .end local v3    # "i":I
    .end local v18    # "pointerId":I
    :cond_68
    const/16 v19, 0x0

    goto :goto_44
.end method

.method private findIndex(I)I
    .registers 6
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v2, :cond_10

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_d

    .line 332
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 323
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 328
    :cond_10
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_18

    if-ne p1, v1, :cond_1a

    :cond_18
    move v0, v1

    .line 329
    goto :goto_c

    .line 331
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    .line 332
    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_c
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    if-nez v0, :cond_10

    .line 491
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    .line 493
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private updateCocktailBarInfo()V
    .registers 2

    .prologue
    .line 498
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCurrentRotation:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 501
    :goto_a
    return-void

    .line 499
    :catch_b
    move-exception v0

    goto :goto_a
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 188
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v6, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 306
    :cond_11
    :goto_11
    return-void

    .line 194
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_142

    :pswitch_19
    goto :goto_11

    .line 197
    :pswitch_1a
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v6

    if-eqz v6, :cond_90

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v6

    if-ge v6, v10, :cond_90

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-eq v6, v9, :cond_90

    .line 201
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v0

    .line 202
    .local v0, "eohRunning":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    .line 204
    if-eqz v0, :cond_9b

    .line 206
    .local v4, "sideMargin":I
    :goto_41
    if-nez v0, :cond_55

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    div-int/lit8 v9, v9, 0x3

    if-le v6, v9, :cond_55

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    if-lt v6, v9, :cond_61

    :cond_55
    if-eqz v0, :cond_90

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    if-ge v6, v9, :cond_90

    :cond_61
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v9, v4

    if-lt v6, v9, :cond_72

    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    iget v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v10, v4

    sub-int/2addr v9, v10

    if-le v6, v9, :cond_90

    .line 208
    :cond_72
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    .line 209
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iput v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    iput v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    .line 210
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownY:I

    iput v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    iput v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownTime:J

    .line 212
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v9, v4

    if-ge v6, v9, :cond_9e

    move v6, v7

    :goto_8e
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mStartFromLeft:Z

    .line 222
    .end local v0    # "eohRunning":Z
    .end local v4    # "sideMargin":I
    :cond_90
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 223
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 224
    iput v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 225
    invoke-direct {p0, p1, v8}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    goto/16 :goto_11

    .line 204
    .restart local v0    # "eohRunning":Z
    :cond_9b
    const/16 v4, 0x8

    goto :goto_41

    .restart local v4    # "sideMargin":I
    :cond_9e
    move v6, v8

    .line 212
    goto :goto_8e

    .line 235
    .end local v0    # "eohRunning":Z
    .end local v4    # "sideMargin":I
    :pswitch_a0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 236
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v6, :cond_11

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v9, 0x5

    if-ge v6, v9, :cond_bf

    :goto_b2
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 238
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v6, :cond_11

    .line 240
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto/16 :goto_11

    :cond_bf
    move v7, v8

    .line 237
    goto :goto_b2

    .line 246
    :pswitch_c1
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v6, :cond_ed

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v2, v6

    .line 248
    .local v2, "pointX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v3, v6

    .line 250
    .local v3, "pointY":I
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    if-le v6, v2, :cond_103

    move v6, v2

    :goto_d4
    iput v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    .line 251
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    if-le v6, v2, :cond_dc

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    .end local v2    # "pointX":I
    :cond_dc
    iput v2, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxX:I

    .line 252
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    if-le v6, v3, :cond_106

    move v6, v3

    :goto_e3
    iput v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    .line 253
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    if-le v6, v3, :cond_eb

    iget v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    .end local v3    # "pointY":I
    :cond_eb
    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMaxY:I

    .line 257
    :cond_ed
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v6, :cond_11

    .line 258
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v5

    .line 259
    .local v5, "swipe":I
    if-nez v5, :cond_f8

    move v8, v7

    :cond_f8
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 260
    if-ne v5, v7, :cond_109

    .line 262
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto/16 :goto_11

    .line 250
    .end local v5    # "swipe":I
    .restart local v2    # "pointX":I
    .restart local v3    # "pointY":I
    :cond_103
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinX:I

    goto :goto_d4

    .line 252
    .end local v2    # "pointX":I
    :cond_106
    iget v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mMinY:I

    goto :goto_e3

    .line 263
    .end local v3    # "pointY":I
    .restart local v5    # "swipe":I
    :cond_109
    if-ne v5, v9, :cond_112

    .line 265
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto/16 :goto_11

    .line 266
    :cond_112
    if-ne v5, v10, :cond_11b

    .line 268
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto/16 :goto_11

    .line 271
    :cond_11b
    if-ne v5, v4, :cond_11

    goto/16 :goto_11

    .line 287
    .end local v5    # "swipe":I
    :pswitch_11f
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v6, :cond_130

    .line 288
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->detectEasyOneHandGesture(Landroid/view/MotionEvent;)I

    move-result v1

    .line 289
    .local v1, "gesture":I
    const/16 v6, 0x65

    if-ne v1, v6, :cond_138

    .line 291
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeLeftCenterLeft()V

    .line 297
    .end local v1    # "gesture":I
    :cond_130
    :goto_130
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    .line 300
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 301
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mDebugFireable:Z

    goto/16 :goto_11

    .line 292
    .restart local v1    # "gesture":I
    :cond_138
    const/16 v6, 0x64

    if-ne v1, v6, :cond_130

    .line 294
    iget-object v6, p0, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;->onSwipeRightCenterRight()V

    goto :goto_130

    .line 194
    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_11f
        :pswitch_c1
        :pswitch_11f
        :pswitch_19
        :pswitch_a0
    .end packed-switch
.end method
