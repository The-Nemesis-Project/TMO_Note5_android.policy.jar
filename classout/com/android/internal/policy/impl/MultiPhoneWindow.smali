.class public Lcom/android/internal/policy/impl/MultiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;,
        Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final DEBUG_FLOATING_BGCOLOR:Z

.field static final DEBUG_FLOATING_CYCLE:Z

.field static final DEBUG_FLOATING_SIZE:Z

.field static final DEBUG_GUIDEVIEW:Z = false

.field public static final DEBUG_MINIMIZE_ANIM:Z

.field static final DEBUG_ORIENTATION:Z

.field static final DEBUG_RESIZE_VISUAL_CUE:Z

.field static final DEBUG_TAB:Z

.field private static final DRAG_AND_DROP_TIMER_TIME:I = 0x2bc

.field public static final FEATURE_DISABLE_LEFT_RESIZE:Z = true

.field public static final FEATURE_GUIDE_MOVE_LAYOUT_ENABLED:Z = true

.field private static final LOGGING_REASON_DOCKING:I = 0x1

.field private static final MESSAGE_REQUEST_MAXIMIZE:I = 0x68

.field private static final MESSAGE_REQUEST_STATE:I = 0x64

.field private static final MESSAGE_REQUEST_STATE_CASCADE:I = 0x66

.field private static final MESSAGE_SEND_TOUCH_EVENT:I = 0x67

.field private static final STATE_FLOATING:I = 0x2

.field private static final STATE_MINIMIZED_FLOATING:I = 0x4

.field private static final STATE_NONE:I = -0x1

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_SCALED_FLOATING:I = 0x3

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindow"


# instance fields
.field private final NOT_SET:I

.field protected final TEMP_TOAST_HEIGHT:I

.field private mActivity:Landroid/app/Activity;

.field private mBlackColor:Landroid/graphics/drawable/ColorDrawable;

.field private mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

.field private mConsumeTouchEvent:Z

.field private mContentLayoutGenerated:Z

.field private mContentRootBackground:Landroid/graphics/drawable/Drawable;

.field private mContentRootContainer:Landroid/view/ViewGroup;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomMinimizeView:Landroid/view/View;

.field private mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

.field private mDecorBackground:Landroid/graphics/drawable/Drawable;

.field private mDismissGuideByDockingCanceled:Z

.field private mDisplayGapRatio:F

.field private mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

.field private mDragMode:Z

.field mDragModeReceiver:Landroid/content/BroadcastReceiver;

.field private mFloatingFlag:I

.field private mFloatingMenuRightMargin:I

.field private mFocusedViewId:I

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHScale:F

.field mHandler:Landroid/os/Handler;

.field private mHasStackFocus:Z

.field private mHeaderButtonSoundId:I

.field private mInitialFlag:I

.field private mIsAttachedToWindow:Z

.field private mIsBorderShown:Z

.field private mIsFinishing:Z

.field private mIsFullScreen:Z

.field private mIsMinimizeDisabled:Z

.field private mIsPenButtonPressed:Z

.field private mIsSecure:Z

.field private final mIsSupportDiagonalResizable:Z

.field private final mIsSupportMinimizeAnimation:Z

.field private final mIsSupportResizeVisualCue:Z

.field private final mIsSupportSelective1Orientation:Z

.field private mIvt:[B

.field private mLastHoverIcon:I

.field private mLastOrientation:I

.field private mLastRealDisplayFrame:Landroid/graphics/Rect;

.field private mLastRotated:Z

.field private mLastStackBound:Landroid/graphics/Rect;

.field private mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

.field private mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

.field private mMaxSizeRatio:F

.field private mMinStackBoundForLand:Landroid/graphics/Rect;

.field private mMinStackBoundForPort:Landroid/graphics/Rect;

.field private mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

.field private mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

.field private mMinimizedIcon:Landroid/graphics/drawable/Drawable;

.field private mMinimizedLabel:Ljava/lang/CharSequence;

.field private mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStackBound:Landroid/graphics/Rect;

.field private mStatusBarHeight:I

.field private mSubWindow:Landroid/view/Window;

.field private mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

.field private mTargetSdkVersion:I

.field private mThickness:I

.field private mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

.field private mTitleBarHeight:I

.field private mTmpBound:Landroid/graphics/Rect;

.field private mToken:Landroid/os/IBinder;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mUndesirableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVScale:F

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVideoCapabilityDialog:Landroid/app/AlertDialog;

.field private mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

.field private mWindowIconic:Landroid/view/View;

.field private mWindowIconicFrame:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 122
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_3b

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    .line 123
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_3d

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    .line 124
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_3f

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_SIZE:Z

    .line 125
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_41

    move v0, v1

    :goto_1e
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_BGCOLOR:Z

    .line 126
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_43

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    .line 127
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_45

    move v0, v1

    :goto_2c
    sput-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    .line 129
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_47

    :goto_32
    sput-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    .line 130
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-nez v0, :cond_38

    :cond_38
    sput-boolean v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    return-void

    :cond_3b
    move v0, v2

    .line 122
    goto :goto_9

    :cond_3d
    move v0, v2

    .line 123
    goto :goto_10

    :cond_3f
    move v0, v2

    .line 124
    goto :goto_17

    :cond_41
    move v0, v2

    .line 125
    goto :goto_1e

    :cond_43
    move v0, v2

    .line 126
    goto :goto_25

    :cond_45
    move v0, v2

    .line 127
    goto :goto_2c

    :cond_47
    move v1, v2

    .line 129
    goto :goto_32
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v13, 0x3f800000

    const/4 v12, -0x1

    const/high16 v11, 0x447a0000

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 142
    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 144
    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 145
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFinishing:Z

    .line 153
    iput v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->NOT_SET:I

    .line 154
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSecure:Z

    .line 163
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    .line 172
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    .line 174
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    .line 175
    iput v13, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    .line 182
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    .line 186
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    .line 188
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    .line 189
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    .line 190
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    .line 191
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    .line 193
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    .line 195
    const v7, 0x3f666666

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDisplayGapRatio:F

    .line 198
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    .line 210
    const/16 v7, 0x28

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->TEMP_TOAST_HEIGHT:I

    .line 214
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsAttachedToWindow:Z

    .line 215
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    .line 217
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z

    .line 218
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mConsumeTouchEvent:Z

    .line 220
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    .line 221
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v8, -0x1000000

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;

    .line 228
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z

    .line 229
    iput v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I

    .line 232
    iput v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeaderButtonSoundId:I

    .line 241
    const/16 v7, 0x1a

    new-array v7, v7, [B

    fill-array-data v7, :array_262

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    .line 248
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    .line 249
    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    .line 599
    new-instance v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    .line 643
    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragModeReceiver:Landroid/content/BroadcastReceiver;

    .line 2080
    iput v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    .line 2268
    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2269
    iput-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2549
    iput v13, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    .line 2550
    iput v13, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    .line 2915
    iput v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 2916
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 3177
    new-instance v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    .line 254
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    .line 255
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v8, "multiwindow_facade"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 256
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/SystemVibrator;

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 257
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    .line 258
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    .line 259
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    .line 260
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    .line 261
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportResizeVisualCue(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z

    .line 262
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTargetSdkVersion:I

    .line 264
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_12d

    .line 265
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 266
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 267
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 268
    new-instance v7, Lcom/android/internal/policy/impl/multiwindow/Docking;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-direct {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    .line 269
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    new-instance v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;)V

    .line 292
    :cond_12d
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 293
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 295
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 296
    const/4 v6, 0x0

    .line 297
    .local v6, "toggle":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_210

    .line 298
    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_155

    .line 299
    const/4 v6, 0x1

    .line 306
    :cond_155
    :goto_155
    if-eqz v6, :cond_15f

    .line 307
    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 308
    .local v5, "temp":I
    iget v7, v0, Landroid/graphics/Point;->y:I

    iput v7, v0, Landroid/graphics/Point;->x:I

    .line 309
    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 313
    .end local v5    # "temp":I
    :cond_15f
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 315
    .local v1, "floatingMinimumSizeRatioPercentage":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00dc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 317
    .local v2, "floatingMinimumSizeSelectiveRatioPercentage":I
    new-instance v4, Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v1

    int-to-float v7, v7

    div-float/2addr v7, v11

    float-to-int v7, v7

    iget v8, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v1

    int-to-float v8, v8

    div-float/2addr v8, v11

    float-to-int v8, v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 319
    .local v4, "minSize":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v2

    int-to-float v7, v7

    div-float/2addr v7, v11

    float-to-int v7, v7

    iget v8, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v2

    int-to-float v8, v8

    div-float/2addr v8, v11

    float-to-int v8, v8

    invoke-direct {v3, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 321
    .local v3, "maxSize":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_228

    .line 322
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 323
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 325
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 326
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    :goto_1e2
    sget-boolean v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_SIZE:Z

    if-eqz v7, :cond_20c

    const-string v7, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MultiPhoneWindow : mMinStackBoundForPort"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mMinStackBoundForLand="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_20c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initResource()V

    .line 340
    return-void

    .line 301
    .end local v1    # "floatingMinimumSizeRatioPercentage":I
    .end local v2    # "floatingMinimumSizeSelectiveRatioPercentage":I
    .end local v3    # "maxSize":Landroid/graphics/Rect;
    .end local v4    # "minSize":Landroid/graphics/Rect;
    :cond_210
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_155

    .line 302
    iget v7, v0, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    if-le v7, v8, :cond_155

    .line 303
    const/4 v6, 0x1

    goto/16 :goto_155

    .line 329
    .restart local v1    # "floatingMinimumSizeRatioPercentage":I
    .restart local v2    # "floatingMinimumSizeSelectiveRatioPercentage":I
    .restart local v3    # "maxSize":Landroid/graphics/Rect;
    .restart local v4    # "minSize":Landroid/graphics/Rect;
    :cond_228
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 331
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 332
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 334
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1e2

    .line 241
    nop

    :array_262
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsPenButtonPressed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Point;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Point;
    .param p2, "x2"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastHoverIcon:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isInputMethodShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityReceiver:Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    return-void
.end method

.method static synthetic access$4402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBlackColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeIconPressed(ZZ)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkDecorViewChildVisibility()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mConsumeTouchEvent:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mConsumeTouchEvent:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/MultiPhoneWindow;ILandroid/graphics/Rect;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFinishing:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFinishing:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeaderButtonSoundId:I

    return v0
.end method

.method static synthetic access$8300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return v0
.end method

.method static synthetic access$8302(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingMenuRightMargin:I

    return p1
.end method

.method static synthetic access$9100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTargetSdkVersion:I

    return v0
.end method

.method static synthetic access$9200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method private adjustMinimizedStackBound(Landroid/graphics/Rect;)Z
    .registers 10
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 2135
    const/4 v2, 0x0

    .line 2136
    .local v2, "outOfBound":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105022d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2138
    .local v1, "originPixelSize":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 2139
    .local v4, "screenSize":Landroid/graphics/Point;
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 2141
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int v3, v5, v1

    .line 2142
    .local v3, "right":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v1

    .line 2144
    .local v0, "bottom":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_37

    .line 2145
    iget v5, p1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2146
    const/4 v2, 0x1

    .line 2152
    :cond_2b
    :goto_2b
    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le v0, v5, :cond_43

    .line 2153
    iget v5, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2154
    const/4 v2, 0x1

    .line 2159
    :cond_36
    :goto_36
    return v2

    .line 2147
    :cond_37
    iget v5, v4, Landroid/graphics/Point;->x:I

    if-le v3, v5, :cond_2b

    .line 2148
    iget v5, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2149
    const/4 v2, 0x1

    goto :goto_2b

    .line 2155
    :cond_43
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    if-ge v5, v6, :cond_36

    .line 2156
    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2157
    const/4 v2, 0x1

    goto :goto_36
.end method

.method private adjustScaleFactor()V
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000

    .line 1770
    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    .line 1771
    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    .line 1772
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_91

    .line 1773
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1774
    .local v1, "size":Landroid/graphics/Point;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 1775
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_46

    .line 1776
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_3e

    :cond_28
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_36

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-lt v3, v4, :cond_3e

    :cond_36
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1779
    :cond_3e
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 1780
    .local v2, "temp":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 1781
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 1785
    .end local v2    # "temp":I
    :cond_46
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    .line 1786
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    .line 1787
    sget-boolean v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_91

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor mStackBound="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_91
    sget-boolean v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v3, :cond_bb

    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustScaleFactor result hScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",vScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_bb
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/WindowManagerGlobal;->setMultiWindowScale(FF)V

    .line 1794
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1795
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    if-eqz v3, :cond_dd

    .line 1796
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHScale:F

    iget v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVScale:F

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setMultiWindowScale(FF)V

    .line 1798
    :cond_dd
    return-void
.end method

.method private adjustStackBound(Landroid/graphics/Rect;)V
    .registers 16
    .param p1, "stackBound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v13, 0x0

    .line 2163
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v0, v11, 0x3

    .line 2164
    .local v0, "boundaryX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v1, v11, 0x3

    .line 2165
    .local v1, "boundaryY":I
    const/4 v6, 0x0

    .line 2166
    .local v6, "headerWindowMargin":I
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v11, :cond_35

    .line 2167
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    iget-object v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v12

    add-int v0, v11, v12

    .line 2168
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x105024a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2169
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getControllerHeight()I

    move-result v11

    div-int/lit8 v6, v11, 0x2

    .line 2171
    :cond_35
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 2172
    .local v9, "maxSize":Landroid/graphics/Point;
    const/4 v11, 0x1

    invoke-direct {p0, v9, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 2174
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    if-eqz v11, :cond_8f

    .line 2175
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v11, :cond_8f

    .line 2176
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    .line 2177
    .local v10, "preferredOrientation":I
    iget v5, v9, Landroid/graphics/Point;->x:I

    .line 2178
    .local v5, "displayWidth":I
    iget v4, v9, Landroid/graphics/Point;->y:I

    .line 2180
    .local v4, "displayHeight":I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v11

    if-eqz v11, :cond_8f

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-eq v11, v5, :cond_8f

    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eq v11, v4, :cond_8f

    .line 2184
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 2185
    .local v7, "lastCenterX":I
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 2186
    .local v8, "lastCenterY":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2187
    .local v3, "currentWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2189
    .local v2, "currentHeight":I
    div-int/lit8 v11, v3, 0x2

    sub-int v11, v8, v11

    div-int/lit8 v12, v2, 0x2

    sub-int v12, v7, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2192
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v13, v13, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2209
    .end local v2    # "currentHeight":I
    .end local v3    # "currentWidth":I
    .end local v4    # "displayHeight":I
    .end local v5    # "displayWidth":I
    .end local v7    # "lastCenterX":I
    .end local v8    # "lastCenterY":I
    .end local v10    # "preferredOrientation":I
    :cond_8e
    :goto_8e
    return-void

    .line 2198
    :cond_8f
    iget v11, p1, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v0

    if-le v11, v12, :cond_ae

    .line 2199
    iget v11, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v0

    iget v12, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2204
    :cond_9e
    :goto_9e
    iget v11, p1, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v1

    if-le v11, v12, :cond_be

    .line 2205
    iget v11, p1, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v1

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_8e

    .line 2200
    :cond_ae
    iget v11, p1, Landroid/graphics/Rect;->right:I

    if-ge v11, v0, :cond_9e

    .line 2201
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int v11, v0, v11

    iget v12, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_9e

    .line 2206
    :cond_be
    iget v11, p1, Landroid/graphics/Rect;->top:I

    iget v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v12, v6

    if-ge v11, v12, :cond_8e

    .line 2207
    iget v11, p1, Landroid/graphics/Rect;->left:I

    iget v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    add-int/2addr v12, v6

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_8e
.end method

.method private checkDecorViewChildVisibility()V
    .registers 6

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1857
    .local v0, "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_42

    .line 1858
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 1859
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1860
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 1864
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1869
    .end local v1    # "i":I
    .end local v2    # "view":Landroid/view/View;
    :cond_42
    return-void
.end method

.method private checkMaxStackSize(Landroid/graphics/Rect;I)Z
    .registers 27
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .prologue
    .line 343
    const/4 v11, 0x0

    .line 344
    .local v11, "isFixed":Z
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 345
    .local v5, "d":Landroid/graphics/Point;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v16

    .local v16, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 348
    .local v10, "h":I
    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v9, v0

    .local v9, "dw":I
    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    .line 351
    .local v7, "dh":I
    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_14b

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 353
    .local v13, "mw":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 359
    .local v12, "mh":I
    :goto_5b
    const/4 v15, 0x0

    .line 360
    .local v15, "shouldFake":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c7

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c7

    .line 362
    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_161

    const/4 v8, 0x1

    .line 363
    .local v8, "displayOrientation":I
    :goto_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v14

    .line 364
    .local v14, "preferredOrientation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v8, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v15

    .line 365
    if-eqz v15, :cond_c7

    .line 366
    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_164

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxPortStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 374
    :goto_b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .local v6, "decor":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    move-object/from16 v17, v6

    .line 375
    check-cast v17, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    move-object/from16 v0, v17

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxWidth:I
    invoke-static {v0, v13}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->access$802(Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;I)I

    .line 376
    check-cast v6, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    .end local v6    # "decor":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->mMaxHeight:I
    invoke-static {v6, v12}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->access$902(Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;I)I

    .line 381
    .end local v8    # "displayOrientation":I
    .end local v14    # "preferredOrientation":I
    :cond_c7
    move/from16 v0, v16

    if-lt v0, v13, :cond_d7

    if-lt v10, v12, :cond_d7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_100

    if-eqz v15, :cond_100

    .line 382
    :cond_d7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v12

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 384
    :cond_100
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 387
    move/from16 v0, v16

    if-le v0, v9, :cond_17a

    .line 388
    const/4 v11, 0x1

    .line 389
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 394
    :cond_14a
    :goto_14a
    return v11

    .line 355
    .end local v12    # "mh":I
    .end local v13    # "mw":I
    .end local v15    # "shouldFake":Z
    :cond_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 356
    .restart local v13    # "mw":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    .restart local v12    # "mh":I
    goto/16 :goto_5b

    .line 362
    .restart local v15    # "shouldFake":Z
    :cond_161
    const/4 v8, 0x2

    goto/16 :goto_7b

    .line 370
    .restart local v8    # "displayOrientation":I
    .restart local v14    # "preferredOrientation":I
    :cond_164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxLandStackBoundForSelectiveOrientation:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    goto/16 :goto_b3

    .line 390
    .end local v8    # "displayOrientation":I
    .end local v14    # "preferredOrientation":I
    :cond_17a
    if-le v10, v7, :cond_14a

    .line 391
    const/4 v11, 0x1

    .line 392
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_14a
.end method

.method private checkRotationNeeded(I)Z
    .registers 9
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v6, -0x1

    .line 3105
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getExpectedOrientation()I

    move-result v1

    .line 3106
    .local v1, "expectedOrientation":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v0

    .line 3107
    .local v0, "expectedExplicitOrientation":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v3

    .line 3108
    .local v3, "rotated":Z
    const/4 v4, 0x0

    .line 3109
    .local v4, "rotationNeeded":Z
    if-eq v0, v6, :cond_28

    .line 3110
    const/4 v5, 0x1

    if-ne v1, v5, :cond_23

    if-nez v3, :cond_27

    :cond_23
    if-nez v1, :cond_28

    if-nez v3, :cond_28

    .line 3112
    :cond_27
    const/4 v4, 0x1

    .line 3115
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getExplicitOrientation(I)I

    move-result v2

    .line 3116
    .local v2, "requestedExplicitOrientation":I
    if-nez v4, :cond_33

    if-eq v2, v6, :cond_33

    if-eq v2, v0, :cond_33

    .line 3119
    const/4 v4, 0x0

    .line 3121
    .end local v4    # "rotationNeeded":Z
    :cond_33
    return v4
.end method

.method private dismissGuide()V
    .registers 2

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_e

    .line 2544
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->hide()V

    .line 2545
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 2547
    :cond_e
    return-void
.end method

.method private dismissWritingBuddy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2460
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v2, :cond_6

    .line 2472
    :cond_5
    :goto_5
    return-void

    .line 2463
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2464
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2465
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2466
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v1

    .line 2467
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2468
    invoke-virtual {v1, v3}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->finish()V

    goto :goto_5
.end method

.method private forceHideInputMethod()Z
    .registers 3

    .prologue
    .line 2104
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2105
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 2106
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 2108
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private generatePenWindowLayout()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 553
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v4, :cond_e

    .line 554
    new-instance v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    .line 557
    :cond_e
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 591
    :goto_16
    return-void

    .line 561
    :cond_17
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 562
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x109008f

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    .line 564
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 565
    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    .line 566
    const v4, 0x1090091

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    .line 567
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 568
    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomTabLayout:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    .line 571
    :cond_56
    new-instance v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    .line 572
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->generateLayout()V

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .local v1, "decor":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    move-object v4, v1

    .line 575
    check-cast v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;->updateMultiPhoneWindowLayout()V

    .line 576
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    .line 577
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_76
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_90

    .line 578
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 579
    .local v0, "content":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeView(Landroid/view/View;)V

    .line 581
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 583
    .end local v0    # "content":Landroid/view/View;
    :cond_90
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 584
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$ContentFrameDragListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 585
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    .line 587
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initMinimizeView()V

    .line 588
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 590
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    goto/16 :goto_16
.end method

.method private getDisplaySize(Landroid/graphics/Point;)Z
    .registers 3
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v0

    return v0
.end method

.method private getDisplaySize(Landroid/graphics/Point;Z)Z
    .registers 9
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 403
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 404
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 406
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_38

    .line 407
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 412
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    if-eqz v4, :cond_37

    if-eqz p2, :cond_37

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v4, :cond_37

    .line 414
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 415
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_37

    .line 416
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    .line 417
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 418
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 422
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_37
    :goto_37
    return v3

    :cond_38
    move v3, v4

    .line 409
    goto :goto_37
.end method

.method private getExplicitOrientation(I)I
    .registers 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 3125
    packed-switch p1, :pswitch_data_a

    .line 3139
    :pswitch_3
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 3130
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 3136
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_4

    .line 3125
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_15

    .line 443
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 444
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 446
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_15
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method private getState()I
    .registers 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 459
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 460
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_22

    .line 471
    :goto_d
    :pswitch_d
    return v1

    .line 464
    :pswitch_e
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    .line 465
    goto :goto_d

    .line 466
    :cond_16
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 467
    const/4 v1, 0x3

    goto :goto_d

    .line 469
    :cond_20
    const/4 v1, 0x2

    goto :goto_d

    .line 460
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private initFocusedView()V
    .registers 2

    .prologue
    .line 2100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    .line 2101
    return-void
.end method

.method private initMinimizeView()V
    .registers 3

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    if-nez v0, :cond_b

    .line 2716
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    .line 2718
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v1, 0x10203c9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    .line 2719
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2720
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2721
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 2723
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    const v1, 0x10203c8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    .line 2724
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->resetResolvedLayoutDirection()V

    .line 2725
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 2726
    return-void
.end method

.method private initResource()V
    .registers 5

    .prologue
    const v2, 0x1050241

    const/4 v3, 0x1

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTitleBarHeight:I

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 428
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportDiagonalResizable:Z

    if-eqz v0, :cond_53

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMaxSizeRatio:F

    .line 433
    :cond_53
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 434
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mResizablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThickness:I

    .line 437
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v2, 0x110001a

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHeaderButtonSoundId:I

    .line 439
    return-void
.end method

.method private initStackBound(ZZ)V
    .registers 13
    .param p1, "force"    # Z
    .param p2, "arrange"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1705
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz p1, :cond_60

    .line 1706
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1708
    .local v0, "bound":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1709
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v1, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1710
    iget v7, v1, Landroid/graphics/Point;->y:I

    iget v8, v1, Landroid/graphics/Point;->x:I

    if-le v7, v8, :cond_61

    move v2, v5

    .line 1713
    .local v2, "isDisplayHasPortRatio":Z
    :goto_25
    if-eqz v0, :cond_60

    .line 1714
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v7, v8, :cond_63

    move v3, v5

    .line 1716
    .local v3, "isStackHasPortRatio":Z
    :goto_32
    if-eqz v2, :cond_65

    .line 1717
    const/4 v4, 0x1

    .line 1722
    .local v4, "orientation":I
    :goto_35
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v7, :cond_69

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v4, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 1725
    if-nez v2, :cond_67

    move v2, v5

    .line 1729
    :cond_4b
    :goto_4b
    if-eq v3, v2, :cond_58

    .line 1730
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1732
    :cond_58
    if-eqz v2, :cond_6d

    :goto_5a
    invoke-direct {p0, v0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    .line 1733
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1736
    .end local v0    # "bound":Landroid/graphics/Rect;
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v2    # "isDisplayHasPortRatio":Z
    .end local v3    # "isStackHasPortRatio":Z
    .end local v4    # "orientation":I
    :cond_60
    return-void

    .restart local v0    # "bound":Landroid/graphics/Rect;
    .restart local v1    # "displaySize":Landroid/graphics/Point;
    :cond_61
    move v2, v6

    .line 1710
    goto :goto_25

    .restart local v2    # "isDisplayHasPortRatio":Z
    :cond_63
    move v3, v6

    .line 1714
    goto :goto_32

    .line 1719
    .restart local v3    # "isStackHasPortRatio":Z
    :cond_65
    const/4 v4, 0x2

    .restart local v4    # "orientation":I
    goto :goto_35

    :cond_67
    move v2, v6

    .line 1725
    goto :goto_4b

    .line 1726
    :cond_69
    if-nez p2, :cond_4b

    .line 1727
    move v2, v3

    goto :goto_4b

    .line 1732
    :cond_6d
    const/4 v5, 0x2

    goto :goto_5a
.end method

.method private isInputMethodShown()Z
    .registers 3

    .prologue
    .line 2112
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2113
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 2114
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    .line 2116
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isRotated(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 2919
    packed-switch p1, :pswitch_data_8

    .line 2927
    :goto_4
    :pswitch_4
    return v0

    .line 2922
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 2919
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private minimizeIconPressed(ZZ)V
    .registers 5
    .param p1, "pressed"    # Z
    .param p2, "soundOnly"    # Z

    .prologue
    .line 1688
    if-eqz p1, :cond_17

    if-nez p2, :cond_17

    .line 1689
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 1690
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1702
    :cond_16
    :goto_16
    return-void

    .line 1693
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    .line 1694
    if-nez p2, :cond_16

    .line 1695
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_16
.end method

.method private moveStackBound(IIZ)Z
    .registers 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "moving"    # Z

    .prologue
    .line 2120
    const/4 v0, 0x0

    .line 2121
    .local v0, "outOfBound":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2122
    .local v1, "stackBound":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 2124
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 2125
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBound(Landroid/graphics/Rect;)Z

    move-result v0

    .line 2130
    :cond_18
    :goto_18
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 2131
    return v0

    .line 2126
    :cond_1c
    if-nez p3, :cond_18

    .line 2127
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    goto :goto_18
.end method

.method private playBubbleAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2475
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v3, :cond_6

    .line 2540
    :cond_5
    :goto_5
    return-void

    .line 2480
    :cond_6
    sget-boolean v3, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v3, :cond_11

    const-string v3, "MultiPhoneWindow"

    const-string v4, "playBubbleAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_11
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v3, :cond_23

    .line 2482
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2483
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z

    if-eqz v3, :cond_23

    .line 2484
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 2487
    :cond_23
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->saveFocusedView()V

    .line 2489
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    if-eqz v3, :cond_44

    .line 2490
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2491
    .local v1, "contents":Landroid/view/View;
    if-eqz v1, :cond_30

    .line 2492
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_30

    .line 2496
    .end local v1    # "contents":Landroid/view/View;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_44
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eq v3, v4, :cond_58

    .line 2497
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizedDrawable(Landroid/widget/ImageView;)V

    .line 2499
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2501
    :cond_58
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2502
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_66

    .line 2503
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2505
    :cond_66
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 2507
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const v4, 0x10a0048

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2508
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$3;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2530
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v3, :cond_9e

    .line 2531
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2532
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2533
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2537
    :goto_93
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v3, :cond_5

    .line 2538
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->addWindow()Landroid/view/Window;

    goto/16 :goto_5

    .line 2535
    :cond_9e
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_93
.end method

.method private refreshBorder()V
    .registers 3

    .prologue
    .line 3155
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 3156
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_10

    .line 3157
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateBackground()V

    .line 3159
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    if-eqz v0, :cond_29

    .line 3160
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Border;->setFocus(Z)V

    .line 3161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 3162
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3167
    :cond_29
    :goto_29
    return-void

    .line 3164
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3165
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_29
.end method

.method private refreshUI(I)V
    .registers 14
    .param p1, "forceState"    # I

    .prologue
    .line 1872
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-nez v8, :cond_5

    .line 2078
    :cond_4
    :goto_4
    return-void

    .line 1876
    :cond_5
    const/4 v6, -0x1

    .line 1877
    .local v6, "state":I
    const/4 v8, -0x1

    if-eq p1, v8, :cond_3e

    .line 1878
    move v6, p1

    .line 1882
    :goto_a
    sget-boolean v8, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v8, :cond_26

    const-string v8, "MultiPhoneWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshUI state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_26
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_43

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_43

    .line 1885
    sget-boolean v8, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "MultiPhoneWindow"

    const-string v9, "token is null"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1880
    :cond_3e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v6

    goto :goto_a

    .line 1889
    :cond_43
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z

    .line 1890
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1891
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x4

    if-eq v6, v8, :cond_71

    .line 1892
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSecure:Z

    if-eqz v8, :cond_57

    .line 1893
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x2000

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1905
    :cond_57
    :goto_57
    const/4 v8, 0x1

    if-ne v6, v8, :cond_94

    .line 1906
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1907
    .local v7, "view":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_60

    .line 1896
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "view":Landroid/view/View;
    :cond_71
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_57

    .line 1897
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, -0x2001

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1898
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSecure:Z

    goto :goto_57

    .line 1909
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_81
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mUndesirableViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1924
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_86
    :goto_86
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1926
    .local v3, "flags":I
    packed-switch v6, :pswitch_data_2d2

    .line 2075
    :cond_8b
    :goto_8b
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v8, :cond_4

    .line 2076
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_4

    .line 1911
    .end local v3    # "flags":I
    :cond_94
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1912
    .local v2, "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_86

    .line 1913
    const-string v8, "MultiPhoneWindow"

    const-string v9, "It has DecorView child views"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkDecorViewChildVisibility()V

    .line 1915
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_86

    .line 1928
    .end local v2    # "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .restart local v3    # "flags":I
    :pswitch_ba
    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 1929
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_ee

    .line 1930
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_df

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_df

    .line 1931
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 1932
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    .line 1934
    :cond_df
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 1935
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z

    if-eqz v8, :cond_ee

    .line 1937
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->removeResizeVisualCue()V

    .line 1940
    :cond_ee
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    if-eqz v8, :cond_f8

    .line 1941
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setVisibility(Z)V

    .line 1943
    :cond_f8
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_fe
    :goto_fe
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_111

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1944
    .local v1, "contents":Landroid/view/View;
    if-eqz v1, :cond_fe

    .line 1945
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_fe

    .line 1947
    .end local v1    # "contents":Landroid/view/View;
    :cond_111
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initFocusedView()V

    .line 1948
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1949
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_124

    .line 1950
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1953
    :cond_124
    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_130

    .line 1954
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, -0x201

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1956
    :cond_130
    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-nez v8, :cond_143

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_14d

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_14d

    .line 1958
    :cond_143
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x4000000

    or-int/2addr v8, v9

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1959
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    .line 1962
    :cond_14d
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v8, :cond_15f

    .line 1963
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 1964
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 1965
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    .line 1966
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    .line 1968
    :cond_15f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    .line 1969
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_8b

    .line 1974
    .end local v5    # "i$":Ljava/util/Iterator;
    :pswitch_16f
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v8, :cond_17c

    .line 1975
    const-string v8, "MultiPhoneWindow"

    const-string v9, "minimize function is disabled. do not minimize."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1978
    :cond_17c
    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_183

    .line 1979
    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    .line 1982
    :cond_183
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    if-eqz v8, :cond_18d

    .line 1983
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setVisibility(Z)V

    .line 1986
    :cond_18d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1987
    .restart local v2    # "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    if-eqz v2, :cond_1cb

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_1cb

    .line 1988
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19d
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_1cb

    .line 1989
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1990
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_1b4

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b4

    .line 1988
    .end local v7    # "view":Landroid/view/View;
    :cond_1b1
    :goto_1b1
    add-int/lit8 v4, v4, 0x1

    goto :goto_19d

    .line 1993
    .restart local v7    # "view":Landroid/view/View;
    :cond_1b4
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1b1

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b1

    .line 1994
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    check-cast v7, Landroid/view/ViewGroup;

    .end local v7    # "view":Landroid/view/View;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b1

    .line 1998
    .end local v4    # "i":I
    :cond_1cb
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1999
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 2001
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2002
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x4000001

    and-int/2addr v8, v9

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2003
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->playBubbleAnimation()V

    .line 2004
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    goto/16 :goto_8b

    .line 2009
    .end local v2    # "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    :pswitch_1ea
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsBorderShown:Z

    .line 2010
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2012
    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 2013
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_1ff

    .line 2014
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2016
    :cond_1ff
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_223

    .line 2017
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    if-eqz v8, :cond_216

    .line 2018
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setVisibility(Z)V

    .line 2019
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->refresh()V

    .line 2021
    :cond_216
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->removeTab(I)Z

    .line 2024
    :cond_223
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    if-eqz v8, :cond_240

    .line 2025
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_22d
    :goto_22d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_240

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2026
    .restart local v1    # "contents":Landroid/view/View;
    if-eqz v1, :cond_22d

    .line 2027
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22d

    .line 2031
    .end local v1    # "contents":Landroid/view/View;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_240
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->restoreFocusedView()V

    .line 2032
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2033
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_253

    .line 2034
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2037
    :cond_253
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2038
    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_270

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-nez v8, :cond_270

    .line 2039
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x4000001

    and-int/2addr v8, v9

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2040
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    .line 2042
    :cond_270
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v8, :cond_279

    .line 2043
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeWindow()V

    .line 2046
    :cond_279
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshBorder()V

    goto/16 :goto_8b

    .line 2051
    :pswitch_27e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2052
    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setMinimizeViewVisibility(I)V

    .line 2053
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2055
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_295

    .line 2056
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2058
    :cond_295
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_29b
    :goto_29b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2059
    .restart local v1    # "contents":Landroid/view/View;
    if-eqz v1, :cond_29b

    .line 2060
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29b

    .line 2062
    .end local v1    # "contents":Landroid/view/View;
    :cond_2ae
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initFocusedView()V

    .line 2063
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2064
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_2c1

    .line 2065
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2067
    :cond_2c1
    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2068
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v8, :cond_8b

    .line 2069
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->removeWindow()V

    goto/16 :goto_8b

    .line 1926
    :pswitch_data_2d2
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_27e
        :pswitch_1ea
        :pswitch_16f
    .end packed-switch
.end method

.method private requestState(I)V
    .registers 11
    .param p1, "state"    # I

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1801
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1802
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 1803
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v1, :cond_4e

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_4e
    packed-switch p1, :pswitch_data_b8

    .line 1845
    :cond_51
    :goto_51
    return-void

    .line 1807
    :pswitch_52
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1808
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_51

    .line 1812
    :pswitch_5d
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1813
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1814
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1815
    invoke-virtual {v0, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1816
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1817
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_51

    .line 1821
    :pswitch_76
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1822
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1823
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1824
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1825
    invoke-virtual {v0, v7, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1826
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_51

    .line 1830
    :pswitch_8f
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z

    if-eqz v1, :cond_9b

    .line 1831
    const-string v1, "MultiPhoneWindow"

    const-string v2, "minimize function is disabled. do not minimize"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 1835
    :cond_9b
    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_51

    .line 1836
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v5, :cond_ad

    .line 1837
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 1838
    invoke-virtual {v0, v8, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1840
    :cond_ad
    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1841
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_51

    .line 1805
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_52
        :pswitch_5d
        :pswitch_76
        :pswitch_8f
    .end packed-switch
.end method

.method private restoreFocusedView()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 2083
    iget v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    if-eq v1, v3, :cond_16

    .line 2084
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2085
    .local v0, "needsFocus":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 2086
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2088
    :cond_14
    iput v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    .line 2090
    .end local v0    # "needsFocus":Landroid/view/View;
    :cond_16
    return-void
.end method

.method private saveFocusedView()V
    .registers 3

    .prologue
    .line 2093
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2094
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 2095
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFocusedViewId:I

    .line 2097
    :cond_10
    return-void
.end method

.method private setMinimizeViewVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 2792
    sparse-switch p1, :sswitch_data_4e

    .line 2803
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2806
    .local v0, "visibleStr":Ljava/lang/String;
    :goto_7
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_32

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinimizeViewVisibility() visibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :cond_32
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v1, :cond_44

    .line 2808
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3f

    .line 2809
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2811
    :cond_3f
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2813
    :cond_44
    return-void

    .line 2794
    .end local v0    # "visibleStr":Ljava/lang/String;
    :sswitch_45
    const-string v0, "VISIBLE"

    .line 2795
    .restart local v0    # "visibleStr":Ljava/lang/String;
    goto :goto_7

    .line 2797
    .end local v0    # "visibleStr":Ljava/lang/String;
    :sswitch_48
    const-string v0, "INVISIBLE"

    .line 2798
    .restart local v0    # "visibleStr":Ljava/lang/String;
    goto :goto_7

    .line 2800
    .end local v0    # "visibleStr":Ljava/lang/String;
    :sswitch_4b
    const-string v0, "GONE"

    .line 2801
    .restart local v0    # "visibleStr":Ljava/lang/String;
    goto :goto_7

    .line 2792
    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_45
        0x4 -> :sswitch_48
        0x8 -> :sswitch_4b
    .end sparse-switch
.end method

.method private setMinimizedDrawable(Landroid/widget/ImageView;)V
    .registers 5
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 2688
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_46

    .line 2689
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v0, :cond_53

    .line 2690
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_14

    .line 2691
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 2693
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2694
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2696
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->makeMinimizeIcons(Z)Landroid/widget/ImageView;

    .line 2705
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    .line 2706
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    .line 2708
    :cond_46
    if-eqz p1, :cond_52

    .line 2709
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2710
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2712
    :cond_52
    return-void

    .line 2698
    :cond_53
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    if-nez v0, :cond_5f

    .line 2699
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 2701
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->isUsedTheme()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2702
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_36
.end method

.method private setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 2253
    if-nez p2, :cond_3

    .line 2262
    :cond_2
    :goto_2
    return-void

    .line 2256
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 2257
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 2259
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2260
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBoundByStackId(ILandroid/graphics/Rect;)V

    goto :goto_2
.end method

.method private setStackBoundInScreen(IIZ)V
    .registers 10
    .param p1, "leftBoundary"    # I
    .param p2, "topBoundary"    # I
    .param p3, "isMinimizing"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1739
    const/4 v0, 0x0

    .line 1741
    .local v0, "adjustBound":Z
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1742
    .local v2, "screenSize":Landroid/graphics/Point;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 1743
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1745
    .local v1, "currStackBound":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ge v3, p1, :cond_20

    .line 1746
    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int v3, p1, v3

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1747
    const/4 v0, 0x1

    .line 1749
    :cond_20
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-ge v3, p2, :cond_2c

    .line 1750
    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1751
    const/4 v0, 0x1

    .line 1754
    :cond_2c
    if-nez p3, :cond_4c

    .line 1755
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-le v3, v4, :cond_3d

    .line 1756
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1757
    const/4 v0, 0x1

    .line 1759
    :cond_3d
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_4c

    .line 1760
    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1761
    const/4 v0, 0x1

    .line 1765
    :cond_4c
    if-eqz v0, :cond_51

    .line 1766
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 1767
    :cond_51
    return-void
.end method

.method private setStackFocus(Z)V
    .registers 4
    .param p1, "focus"    # Z

    .prologue
    .line 3144
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_5

    .line 3152
    :goto_4
    return-void

    .line 3147
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    .line 3148
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    if-eqz v0, :cond_12

    .line 3149
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Landroid/view/Window;->changeStackFocus(Z)V

    .line 3151
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshBorder()V

    goto :goto_4
.end method

.method private showGuide(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2560
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 2561
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setMultiWindowFlags(I)V

    .line 2564
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2590
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .line 2591
    return-void
.end method

.method private showGuide(Landroid/graphics/Rect;I)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "type"    # I

    .prologue
    .line 2552
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z

    if-eqz v0, :cond_13

    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_13

    .line 2554
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0, p2}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 2555
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V

    .line 2557
    :cond_13
    return-void
.end method

.method private updateLastRealDisplayFrame()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2213
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2214
    .local v2, "maxSize":Landroid/graphics/Point;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 2215
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_27

    .line 2216
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 2217
    .local v1, "displayWidth":I
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 2219
    .local v0, "displayHeight":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v3, v1, :cond_27

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v3, v0, :cond_27

    .line 2220
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRealDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2223
    .end local v0    # "displayHeight":I
    .end local v1    # "displayWidth":I
    :cond_27
    return-void
.end method

.method private updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 5
    .param p1, "newStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 450
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v0, :cond_2a

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMultiWindowStyle style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 453
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 454
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissWritingBuddy()V

    .line 456
    :cond_3f
    return-void
.end method

.method private validateStackBound(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 3063
    if-nez p1, :cond_5

    move v1, v2

    .line 3077
    :goto_4
    return v1

    .line 3067
    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3068
    .local v0, "screenSize":Landroid/graphics/Point;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 3069
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v3, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v1, v3, :cond_2d

    :cond_1d
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-le v1, v3, :cond_2f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v1, v3, :cond_2f

    .line 3071
    :cond_2d
    const/4 v1, 0x1

    goto :goto_4

    .line 3073
    :cond_2f
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_85

    const-string v3, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateStackBound "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_88

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_4e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", bound=Point("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", screenSize="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    move v1, v2

    .line 3077
    goto/16 :goto_4

    .line 3073
    :cond_88
    const-string v1, ""

    goto :goto_4e
.end method


# virtual methods
.method public arrangeScaleStackBound()V
    .registers 15

    .prologue
    const/4 v1, 0x2

    const/4 v8, 0x1

    .line 2816
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isResumed()Z

    move-result v9

    if-nez v9, :cond_b

    .line 2889
    :cond_a
    :goto_a
    return-void

    .line 2820
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2824
    const/4 v0, 0x0

    .line 2825
    .local v0, "bChangedStack":Z
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v7

    .line 2826
    .local v7, "stackBound":Landroid/graphics/Rect;
    if-eqz v7, :cond_2f

    .line 2827
    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    if-ne v9, v1, :cond_b1

    .line 2828
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_2f

    const/4 v0, 0x1

    .line 2834
    :cond_2f
    :goto_2f
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkRotationNeeded(I)Z

    move-result v9

    if-nez v9, :cond_3d

    if-eqz v0, :cond_a

    .line 2838
    :cond_3d
    if-eqz v7, :cond_a

    .line 2839
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    .line 2840
    .local v6, "requestedOrientation":I
    packed-switch v6, :pswitch_data_de

    .line 2859
    :cond_48
    :goto_48
    :pswitch_48
    if-eqz v0, :cond_a

    .line 2860
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v4

    .line 2861
    .local v4, "oldRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2862
    .local v3, "newRect":Landroid/graphics/Rect;
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    if-eqz v9, :cond_98

    .line 2864
    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2866
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2867
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v2, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;Z)Z

    .line 2868
    iget v9, v2, Landroid/graphics/Point;->y:I

    iget v10, v2, Landroid/graphics/Point;->x:I

    if-le v9, v10, :cond_83

    move v1, v8

    .line 2870
    .local v1, "displayOrientation":I
    :cond_83
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v5

    .line 2871
    .local v5, "preferredOrientation":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_95

    .line 2873
    if-ne v1, v8, :cond_dc

    .line 2874
    const/4 v1, 0x2

    .line 2879
    :cond_95
    :goto_95
    invoke-direct {p0, v3, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    .line 2881
    .end local v1    # "displayOrientation":I
    .end local v2    # "displaySize":Landroid/graphics/Point;
    .end local v5    # "preferredOrientation":I
    :cond_98
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 2882
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    .line 2883
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 2884
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    if-eqz v8, :cond_a

    .line 2885
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->updatePosition()V

    goto/16 :goto_a

    .line 2829
    .end local v3    # "newRect":Landroid/graphics/Rect;
    .end local v4    # "oldRect":Landroid/graphics/Rect;
    .end local v6    # "requestedOrientation":I
    :cond_b1
    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    if-ne v9, v8, :cond_2f

    .line 2830
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ge v9, v10, :cond_2f

    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 2845
    .restart local v6    # "requestedOrientation":I
    :pswitch_c2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_48

    const/4 v0, 0x1

    goto/16 :goto_48

    .line 2852
    :pswitch_cf
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_48

    const/4 v0, 0x1

    goto/16 :goto_48

    .line 2876
    .restart local v1    # "displayOrientation":I
    .restart local v2    # "displaySize":Landroid/graphics/Point;
    .restart local v3    # "newRect":Landroid/graphics/Rect;
    .restart local v4    # "oldRect":Landroid/graphics/Rect;
    .restart local v5    # "preferredOrientation":I
    :cond_dc
    const/4 v1, 0x1

    goto :goto_95

    .line 2840
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_cf
        :pswitch_c2
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_cf
        :pswitch_c2
        :pswitch_cf
        :pswitch_c2
        :pswitch_48
        :pswitch_cf
        :pswitch_c2
    .end packed-switch
.end method

.method public disableMultiWindowTrayBar(Z)V
    .registers 4
    .param p1, "disable"    # Z

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2676
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_10

    .line 2677
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 2681
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2682
    return-void

    .line 2679
    :cond_10
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    goto :goto_c
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2282
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2283
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_20

    .line 2284
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2288
    :cond_20
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2289
    return-void
.end method

.method public exitByCloseBtn()V
    .registers 5

    .prologue
    .line 2441
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_17

    .line 2442
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2444
    const-string v1, "MultiPhoneWindow"

    const-string v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    :cond_17
    :goto_17
    return-void

    .line 2448
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1d} :catch_27

    .line 2452
    :goto_1d
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "SPLW"

    const-string v3, "CLOSE"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 2449
    :catch_27
    move-exception v0

    .line 2450
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1d
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .registers 4

    .prologue
    .line 523
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .registers 6
    .param p1, "decor"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 528
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 530
    .local v0, "ret":Landroid/view/ViewGroup;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    .line 533
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mInitialFlag:I

    .line 534
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingFlag:I

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 536
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 538
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    if-nez v1, :cond_45

    .line 539
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/Border;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;

    .line 541
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->generatePenWindowLayout()V

    .line 543
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v1, :cond_59

    .line 544
    new-instance v1, Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8d4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 547
    :cond_59
    return-object v0
.end method

.method public getContentRootContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMultiPhoneWindowEvent()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 492
    return-object p0
.end method

.method public getOptionsPanelGravity()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 476
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_3c

    .line 477
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 478
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 479
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    .line 480
    .local v2, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 481
    .local v1, "requestOrientation":I
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    if-ne v1, v5, :cond_3c

    if-eqz v0, :cond_3c

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-eq v3, v5, :cond_39

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3c

    .line 484
    :cond_39
    const/16 v3, 0x51

    .line 487
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "requestOrientation":I
    .end local v2    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_3b
    return v3

    :cond_3c
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    goto :goto_3b
.end method

.method public getScaleInfo()Landroid/graphics/PointF;
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000

    .line 2650
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2651
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 2652
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v1

    .line 2654
    :goto_16
    return-object v1

    :cond_17
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_16
.end method

.method public getStackBound()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handlePause()V
    .registers 7

    .prologue
    const/4 v3, 0x2

    .line 2892
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    if-eqz v2, :cond_39

    .line 2895
    const/4 v1, 0x1

    .line 2896
    .local v1, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 2897
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2898
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_23

    .line 2899
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v2

    if-ne v2, v3, :cond_3a

    const/4 v1, 0x1

    .line 2903
    .end local v0    # "display":Landroid/view/Display;
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v3, :cond_39

    if-eqz v1, :cond_39

    .line 2904
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$4;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2913
    .end local v1    # "isScreenOn":Z
    :cond_39
    return-void

    .line 2899
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "isScreenOn":Z
    :cond_3a
    const/4 v1, 0x0

    goto :goto_23
.end method

.method protected isFloatingWindow()Z
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 1848
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_13

    .line 1850
    const/4 v0, 0x1

    .line 1852
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public isTouchBlocked()Z
    .registers 8

    .prologue
    const v6, 0x3e4ccccd

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 497
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1b

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v5, 0x1000

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1b
    move v2, v3

    .line 518
    :goto_1c
    return v2

    .line 501
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 502
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_48

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_5b

    move v2, v4

    .line 504
    goto :goto_1c

    .line 507
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_5b

    move v2, v4

    .line 508
    goto :goto_1c

    .line 511
    :cond_5b
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v5, 0x800000

    invoke-virtual {v2, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 512
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 513
    .local v1, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multiwindow/MultiWindowTab;>;"
    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8f

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowTab;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v5

    if-eq v2, v5, :cond_8f

    move v2, v4

    .line 515
    goto :goto_1c

    .end local v1    # "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multiwindow/MultiWindowTab;>;"
    :cond_8f
    move v2, v3

    .line 518
    goto :goto_1c
.end method

.method public minimizeWindow(IZ)V
    .registers 6
    .param p1, "windowMode"    # I
    .param p2, "hide"    # Z

    .prologue
    .line 2627
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v0

    .line 2628
    .local v0, "state":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 2635
    :cond_7
    :goto_7
    return-void

    .line 2632
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_7

    .line 2633
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V

    goto :goto_7
.end method

.method public moveWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2610
    return-void
.end method

.method public multiWindow(IZ)V
    .registers 4
    .param p1, "windowMode"    # I
    .param p2, "pinup"    # Z

    .prologue
    .line 2618
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 2619
    return-void
.end method

.method protected needTitleBar(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 4
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v0, 0x0

    .line 2594
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2597
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isFloatingWindow()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public normalWindow(I)V
    .registers 3
    .param p1, "windowMode"    # I

    .prologue
    .line 2642
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 2643
    return-void
.end method

.method public onMultiWindowConfigurationChanged(I)V
    .registers 24
    .param p1, "configDiff"    # I

    .prologue
    .line 2934
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 3060
    :cond_8
    :goto_8
    return-void

    .line 2938
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 2942
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v7

    .line 2943
    .local v7, "mwState":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4d

    .line 2944
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_4d

    .line 2945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPreferredOrientation()I

    move-result v10

    .line 2946
    .local v10, "preferredOrientation":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isFakeTarget(I)Z

    move-result v18

    if-eqz v18, :cond_4d

    .line 2947
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 2948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_8

    .line 2955
    .end local v10    # "preferredOrientation":I
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 2956
    .local v9, "oldRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2957
    .local v8, "newRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    .line 2959
    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_ORIENTATION:Z

    if-eqz v18, :cond_b6

    const-string v19, "MultiPhoneWindow"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onMultiWindowConfigurationChanged "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    if-eqz v18, :cond_122

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    :goto_93
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "oldRect="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_b6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getRotation()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->isRotated(I)Z

    move-result v15

    .line 2963
    .local v15, "rotated":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v15, :cond_e2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_e2

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_8

    .line 2966
    :cond_e2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastRotated:Z

    .line 2968
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_104

    .line 2969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 2970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 2973
    :cond_104
    packed-switch v7, :pswitch_data_366

    goto/16 :goto_8

    .line 2975
    :pswitch_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_8

    .line 2959
    .end local v15    # "rotated":Z
    :cond_122
    const-string v18, ""

    goto/16 :goto_93

    .line 2980
    .restart local v15    # "rotated":Z
    :pswitch_126
    const/4 v11, 0x0

    .line 2981
    .local v11, "relativeL":F
    const/4 v13, 0x0

    .line 2982
    .local v13, "relativeT":F
    const/4 v12, 0x0

    .line 2983
    .local v12, "relativeR":F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 2984
    .local v6, "maxSize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 2986
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    .line 2989
    .local v14, "requestOrientation":I
    if-eqz v14, :cond_14d

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2aa

    :cond_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v19, 0x400000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_2aa

    .line 2992
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v17

    .line 2993
    .local v17, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v17, :cond_16f

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v18

    if-eqz v18, :cond_18d

    :cond_16f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    if-eqz v18, :cond_18d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-nez v18, :cond_8

    .line 3004
    :cond_18d
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 3005
    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v12, v18, v19

    .line 3006
    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-lez v18, :cond_1ed

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    if-lez v18, :cond_1ed

    .line 3007
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    mul-float v18, v18, v11

    add-float v19, v11, v12

    div-float v11, v18, v19

    .line 3009
    :cond_1ed
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 3010
    iget v0, v6, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3851b717

    add-float v19, v19, v11

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3851b717

    add-float v20, v20, v13

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3011
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 3012
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 3017
    .end local v17    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :goto_24e
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_26f

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_26f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_26f

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 3021
    :cond_26f
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v7, v0, :cond_2c8

    .line 3022
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustMinimizedStackBound(Landroid/graphics/Rect;)Z

    .line 3026
    :cond_27a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastOrientation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->checkMaxStackSize(Landroid/graphics/Rect;I)Z

    .line 3027
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 3028
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustScaleFactor()V

    .line 3029
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 3030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto/16 :goto_8

    .line 3014
    :cond_2aa
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "newRect":Landroid/graphics/Rect;
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "newRect":Landroid/graphics/Rect;
    goto :goto_24e

    .line 3023
    :cond_2c8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->validateStackBound(Landroid/graphics/Rect;)Z

    move-result v18

    if-nez v18, :cond_27a

    goto/16 :goto_8

    .line 3035
    .end local v6    # "maxSize":Landroid/graphics/Point;
    .end local v11    # "relativeL":F
    .end local v12    # "relativeR":F
    .end local v13    # "relativeT":F
    .end local v14    # "requestOrientation":I
    :pswitch_2d2
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    .line 3036
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 3038
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 3039
    .local v16, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDisplaySize(Landroid/graphics/Point;)Z

    .line 3040
    const/4 v4, 0x0

    .line 3041
    .local v4, "dx":I
    const/4 v5, 0x0

    .line 3042
    .local v5, "dy":I
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3044
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-gez v18, :cond_32b

    .line 3045
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v4, v0

    .line 3049
    :cond_301
    :goto_301
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_348

    .line 3050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 3054
    :cond_31d
    :goto_31d
    if-nez v4, :cond_321

    if-eqz v5, :cond_324

    .line 3055
    :cond_321
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 3057
    :cond_324
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto/16 :goto_8

    .line 3046
    :cond_32b
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_301

    .line 3047
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    goto :goto_301

    .line 3051
    :cond_348
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_31d

    .line 3052
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    goto :goto_31d

    .line 2973
    nop

    :pswitch_data_366
    .packed-switch 0x1
        :pswitch_109
        :pswitch_2d2
        :pswitch_126
        :pswitch_126
    .end packed-switch
.end method

.method public onMultiWindowFocusChanged(IZ)V
    .registers 8
    .param p1, "notifyReason"    # I
    .param p2, "focus"    # Z

    .prologue
    const/4 v4, -0x1

    .line 2416
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_43

    if-eqz p2, :cond_43

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiWindowFocusChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_43
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_4f

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_4f

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_52

    .line 2421
    :cond_4f
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackFocus(Z)V

    .line 2423
    :cond_52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_64

    if-nez p2, :cond_64

    .line 2424
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->closeAllPanels()V

    .line 2425
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z

    .line 2429
    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_b6

    .line 2430
    const/4 v0, 0x0

    .line 2431
    .local v0, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v4, :cond_b7

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_b7

    const/4 v0, 0x1

    .line 2433
    :goto_88
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    if-eq v1, v0, :cond_b6

    .line 2434
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_b4

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FocusChanged Refresh mIsFullScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :cond_b4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    .line 2438
    .end local v0    # "isFullScreen":Z
    :cond_b6
    return-void

    .line 2431
    .restart local v0    # "isFullScreen":Z
    :cond_b7
    const/4 v0, 0x0

    goto :goto_88
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .registers 16
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x4

    .line 2292
    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v5, :cond_39

    const-string v5, "MultiPhoneWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMultiWindowStyleChanged style:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",notifyReason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",OldStyle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :cond_39
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_61

    .line 2296
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2297
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    if-eqz v5, :cond_49

    .line 2298
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTabContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->refresh()V

    .line 2300
    :cond_49
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/high16 v5, 0x800000

    invoke-virtual {p1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_60

    .line 2302
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    :cond_60
    :goto_60
    return-void

    .line 2307
    :cond_61
    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_6c

    .line 2308
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 2309
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_60

    .line 2314
    :cond_6c
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_bb

    .line 2316
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v12, :cond_a6

    .line 2317
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 2320
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_86

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getStopped()Z

    move-result v5

    if-eqz v5, :cond_8e

    :cond_86
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_60

    .line 2321
    :cond_8e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v3

    .line 2322
    .local v3, "state":I
    if-eq v3, v10, :cond_60

    .line 2325
    if-eq v3, v12, :cond_99

    const/4 v5, 0x3

    if-ne v3, v5, :cond_60

    .line 2326
    :cond_99
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_a2

    .line 2327
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 2329
    :cond_a2
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_60

    .line 2333
    .end local v3    # "state":I
    .end local v4    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_a6
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_60

    const/high16 v5, 0x20000

    invoke-virtual {p1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 2335
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V

    .line 2336
    invoke-direct {p0, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    goto :goto_60

    .line 2342
    :cond_bb
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v5, :cond_d9

    .line 2343
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-eq v5, v8, :cond_121

    .line 2344
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eqz v5, :cond_11f

    move v5, v6

    :goto_d6
    invoke-interface {v8, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onModeChanged(Z)V

    .line 2351
    :cond_d9
    :goto_d9
    invoke-virtual {p1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_145

    .line 2352
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-eq v5, v8, :cond_f0

    .line 2353
    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    .line 2355
    :cond_f0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v3

    .line 2356
    .restart local v3    # "state":I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2357
    if-ne v3, v6, :cond_139

    .line 2358
    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    .line 2365
    :cond_fc
    :goto_fc
    invoke-direct {p0, v7, v7, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V

    .line 2366
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    .line 2368
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_10e

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconicFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_11a

    :cond_10e
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v5, :cond_60

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_60

    .line 2370
    :cond_11a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->playBubbleAnimation()V

    goto/16 :goto_60

    .end local v3    # "state":I
    :cond_11f
    move v5, v7

    .line 2344
    goto :goto_d6

    .line 2345
    :cond_121
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    if-eq v5, v8, :cond_d9

    .line 2346
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    invoke-interface {v5, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onZoneChanged(I)V

    goto :goto_d9

    .line 2360
    .restart local v3    # "state":I
    :cond_139
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2361
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_fc

    .line 2362
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_fc

    .line 2376
    .end local v1    # "decorView":Landroid/view/View;
    .end local v3    # "state":I
    :cond_145
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2379
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    .line 2382
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_160

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_160

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_160

    .line 2383
    invoke-direct {p0, v6, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    .line 2386
    :cond_160
    const/4 v0, 0x0

    .line 2387
    .local v0, "currStackBound":Landroid/graphics/Rect;
    invoke-virtual {p1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1d4

    .line 2388
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2393
    :goto_16f
    if-eqz v0, :cond_174

    .line 2394
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    .line 2398
    :cond_174
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_180

    .line 2399
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->invalidate()V

    .line 2400
    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->refreshUI(I)V

    .line 2404
    :cond_180
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 2405
    const/4 v2, 0x0

    .line 2406
    .local v2, "isFullScreen":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v5, v11, :cond_1dd

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v11, :cond_1dd

    move v2, v6

    .line 2408
    :goto_1a4
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    if-eq v5, v2, :cond_60

    .line 2409
    sget-boolean v5, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_1d0

    const-string v5, "MultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Refresh mIsFullScreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_1d0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFullScreen:Z

    goto/16 :goto_60

    .line 2390
    .end local v2    # "isFullScreen":Z
    :cond_1d4
    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_16f

    .restart local v2    # "isFullScreen":Z
    :cond_1dd
    move v2, v7

    .line 2406
    goto :goto_1a4
.end method

.method public onVisibilityChanged(Z)V
    .registers 6
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3081
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_e

    .line 3102
    :cond_d
    :goto_d
    return-void

    .line 3083
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    goto :goto_d

    .line 3086
    :pswitch_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 3087
    if-nez p1, :cond_21

    .line 3088
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V

    goto :goto_d

    .line 3089
    :cond_21
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3090
    invoke-direct {p0, v2, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V

    goto :goto_d

    .line 3094
    :pswitch_31
    if-eqz p1, :cond_d

    .line 3095
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3096
    .local v0, "stackBound":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_d

    .line 3083
    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_16
        :pswitch_16
        :pswitch_31
    .end packed-switch
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .prologue
    .line 2277
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    .line 2278
    const/4 v0, 0x1

    return v0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 2662
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2663
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_13

    .line 2664
    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2665
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2666
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V

    .line 2668
    :cond_13
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    .line 2734
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z

    if-eqz v0, :cond_40

    .line 2735
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 2740
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2741
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    .line 2742
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    .line 2743
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eq v0, v1, :cond_3f

    .line 2744
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2745
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2747
    :cond_3f
    return-void

    .line 2737
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    goto :goto_10
.end method

.method public setMinimizeView(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2754
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2788
    :goto_d
    return-void

    .line 2757
    :cond_e
    if-nez p1, :cond_40

    .line 2758
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    if-eqz v3, :cond_22

    .line 2759
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2760
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2761
    iput-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    .line 2763
    :cond_22
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->initMinimizeView()V

    .line 2764
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105022d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2765
    .local v1, "minimizeSize":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    new-array v5, v8, [I

    aput v1, v5, v6

    aput v1, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    goto :goto_d

    .line 2767
    .end local v1    # "minimizeSize":I
    :cond_40
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 2768
    const-string v3, "MultiPhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMinimizeView : request view is already added >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2771
    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_6f

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v4, :cond_77

    .line 2773
    :cond_6f
    const-string v3, "MultiPhoneWindow"

    const-string v4, "setMinimizeView : view width and height must be WRAP_CONTENT."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2776
    :cond_77
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    .line 2777
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2778
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeWindowListener:Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2779
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    if-eqz v3, :cond_8e

    .line 2780
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2782
    :cond_8e
    invoke-virtual {p1, v6, v6}, Landroid/view/View;->measure(II)V

    .line 2783
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2784
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2785
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    new-array v5, v8, [I

    aput v2, v5, v6

    aput v0, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V

    .line 2786
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;

    goto/16 :goto_d
.end method

.method protected setStackBound(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "requestBound"    # Landroid/graphics/Rect;

    .prologue
    .line 2226
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2250
    :cond_8
    :goto_8
    return-void

    .line 2229
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_17

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_78

    .line 2231
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->adjustStackBound(Landroid/graphics/Rect;)V

    .line 2235
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2237
    const/4 v0, 0x0

    .line 2238
    .local v0, "sizeChanged":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_45

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_46

    .line 2240
    :cond_45
    const/4 v0, 0x1

    .line 2242
    :cond_46
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2243
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 2244
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mLastStackBound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2245
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2246
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    if-eqz v1, :cond_8

    .line 2247
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;->onSizeChanged(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 2232
    .end local v0    # "sizeChanged":Z
    :cond_78
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportSelective1Orientation:Z

    if-eqz v1, :cond_1a

    .line 2233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->updateLastRealDisplayFrame()V

    goto :goto_1a
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;)Z
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .prologue
    .line 2272
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    .line 2273
    const/4 v0, 0x1

    return v0
.end method

.method public setSubWindow(Landroid/view/Window;)V
    .registers 2
    .param p1, "subWindow"    # Landroid/view/Window;

    .prologue
    .line 3353
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mSubWindow:Landroid/view/Window;

    .line 3354
    return-void
.end method
