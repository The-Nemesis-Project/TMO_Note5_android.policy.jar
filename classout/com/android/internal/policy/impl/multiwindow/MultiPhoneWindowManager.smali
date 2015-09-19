.class public Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_ALWAYS_ON:Z = false

.field private static final MULTIWINDOW_SETTING_OFF:I = 0x0

.field private static final MULTIWINDOW_SETTING_ON:I = 0x1

.field static final SAFE_DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mCanBeForceHide:Z

.field private mConsumeBackKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mEnableMultiWindowUISetting:I

.field private mFirstMultiWindowSettingOn:Z

.field private mFirstRecentKeyClick:Z

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field private mForceHideCascade:Z

.field private mForceHideCenterbar:Z

.field private mForceHidePenWindowController:Z

.field private mForceHidePenWindowControllerStackId:I

.field private mForceHideStatusBar:Z

.field mHandler:Landroid/os/Handler;

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mIsMultiWindowTrayOpen:Z

.field private mIsRecentUI:Z

.field private mIsTrayBarUI:Z

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field private mMinimizeSize:I

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field private mScaleWindowResizableSize:I

.field mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field private mStatusBarTransient:Z

.field public mSystemBooted:Z

.field public mSystemReady:Z

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v2, 0x4000000

    const/4 v7, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 103
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    .line 109
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000

    const/4 v5, 0x1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    .line 117
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    .line 118
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    .line 121
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    .line 122
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    .line 123
    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 124
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    .line 132
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 133
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    .line 134
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    .line 135
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    .line 140
    iput v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 144
    iput-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 146
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    .line 147
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    .line 148
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    .line 152
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    .line 159
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 924
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method private applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    .line 986
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    .line 987
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    .line 988
    .local v0, "height":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v4, v5

    .line 989
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 991
    .local v1, "orientation":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_26

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2e

    :cond_26
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_45

    if-ne v1, v6, :cond_45

    :cond_2e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 994
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 995
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 1001
    :goto_44
    return-void

    .line 997
    :cond_45
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 998
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_44
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 872
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

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

.method private isIsolatedSplitUsed()Z
    .registers 5

    .prologue
    .line 854
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 855
    .local v1, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 856
    const/4 v2, 0x1

    .line 859
    .end local v1    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 864
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private keyguardOn()Z
    .registers 2

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "isPortrait"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1216
    if-nez p1, :cond_c

    .line 1217
    const-string v1, "MultiPhoneWindowManager"

    const-string v3, "shouldMoveUpWindow() return false -> win is null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_b
    :goto_b
    return v2

    .line 1221
    :cond_c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1222
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1223
    if-eqz p2, :cond_3f

    .line 1224
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_b

    .line 1235
    :cond_21
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_5b

    .line 1237
    const-string v2, "MultiPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldMoveUpWindow() return true -> win is mCurrentInputMethodTarget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1238
    goto :goto_b

    .line 1228
    :cond_3f
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v1, :cond_21

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_21

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_21

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_b

    .line 1239
    :cond_5b
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1241
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v4

    if-ne v3, v4, :cond_6f

    :goto_6d
    move v2, v1

    goto :goto_b

    :cond_6f
    move v1, v2

    goto :goto_6d
.end method


# virtual methods
.method public applyPostLayoutPolicyForRecenUI(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x82f

    if-ne p1, v0, :cond_b

    .line 1392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    .line 1395
    :cond_b
    return-void
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v5, 0x4000000

    const/4 v2, 0x1

    .line 655
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 656
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v2, :cond_15

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_59

    :cond_15
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_59

    move v0, v2

    .line 660
    .local v0, "isMultiWindowTarget":Z
    :goto_1c
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_26

    .line 661
    if-eqz v0, :cond_26

    .line 662
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 663
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 667
    :cond_26
    if-eqz v0, :cond_3e

    .line 668
    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 670
    :cond_3c
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    .line 681
    :cond_3e
    :goto_3e
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_4a

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_58

    :cond_4a
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 682
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    .line 683
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTargetAppTokenStackId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    .line 686
    :cond_58
    return-void

    .line 656
    .end local v0    # "isMultiWindowTarget":Z
    :cond_59
    const/4 v0, 0x0

    goto :goto_1c

    .line 671
    .restart local v0    # "isMultiWindowTarget":Z
    :cond_5b
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_6f

    .line 672
    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 673
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    .line 675
    :cond_69
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 676
    :cond_6f
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_3e

    .line 677
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_3e
.end method

.method public beginLayoutLw()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    .line 455
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    .line 456
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    .line 458
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 701
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    .line 702
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    .line 703
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    .line 704
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 706
    return-void
.end method

.method public checkAddPermission(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 1360
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_6

    .line 1361
    const/4 v0, 0x0

    .line 1364
    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .registers 6
    .param p1, "forceClose"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1030
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_30

    .line 1032
    :cond_9
    const-string v1, "MultiPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeMultiWindowTrayBar() failed -> mMultiWindowTrayBar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mMultiWindowEditMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_2f
    :goto_2f
    return v0

    .line 1038
    :cond_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1042
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    if-eqz v1, :cond_2f

    .line 1043
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$4;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1056
    if-eqz p1, :cond_4a

    .line 1057
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    .line 1059
    :cond_4a
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1412
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- MultiWindow Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentInputMethodTarget="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1417
    return-void
.end method

.method public existInputMethodInScreen(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 3
    .param p1, "targetWin"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawFinishedLw()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2f

    .line 1202
    if-nez p1, :cond_28

    const/4 v0, 0x1

    .line 1205
    :goto_27
    return v0

    .line 1202
    :cond_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_27

    .line 1205
    :cond_2f
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public finishPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 11
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 769
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 770
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_36

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 771
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_36

    .line 772
    :cond_20
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 773
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_36

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 774
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 784
    :cond_36
    :goto_36
    const/4 v1, 0x0

    .line 785
    .local v1, "showCenterBar":Z
    if-eqz p1, :cond_6f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-ne v6, v8, :cond_6f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v6

    if-nez v6, :cond_6f

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isIsolatedSplitUsed()Z

    move-result v6

    if-nez v6, :cond_6f

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    if-nez v6, :cond_6f

    .line 792
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    .line 793
    .local v3, "topFullAppZone":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_cd

    move v2, v5

    .line 796
    .local v2, "topAppZone":I
    :goto_60
    if-ne v3, v2, :cond_d8

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_d8

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 799
    const/4 v1, 0x0

    .line 805
    .end local v2    # "topAppZone":I
    .end local v3    # "topFullAppZone":I
    :cond_6f
    :goto_6f
    if-eqz v1, :cond_e6

    .line 806
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_dc

    iget v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v6, v8, :cond_dc

    .line 807
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 830
    :cond_83
    :goto_83
    if-eqz p1, :cond_8d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 831
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    .line 833
    :cond_8d
    if-eqz p1, :cond_9b

    .line 834
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_9b

    .line 836
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    .line 839
    :cond_9b
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a1
    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    .line 840
    .local v4, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a1

    .line 842
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    goto :goto_a1

    .line 779
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "showCenterBar":Z
    .end local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_ba
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_36

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_36

    .line 780
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_36

    .line 793
    .restart local v1    # "showCenterBar":Z
    .restart local v3    # "topFullAppZone":I
    :cond_cd
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    goto :goto_60

    .line 800
    .restart local v2    # "topAppZone":I
    :cond_d8
    if-eqz v2, :cond_6f

    .line 801
    const/4 v1, 0x1

    goto :goto_6f

    .line 821
    .end local v2    # "topAppZone":I
    .end local v3    # "topFullAppZone":I
    :cond_dc
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_83

    .line 822
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v5, v5, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(ZZZ)Z

    goto :goto_83

    .line 826
    :cond_e6
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_83

    .line 827
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v5, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto :goto_83

    .line 846
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_f0
    return-void
.end method

.method public forceHideCenterBar(Z)V
    .registers 2
    .param p1, "forceHide"    # Z

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCenterbar:Z

    .line 693
    return-void
.end method

.method public getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x0

    .line 941
    if-eqz p1, :cond_1e

    .line 942
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 943
    .local v1, "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_1f

    move-object v4, v1

    .line 944
    .local v4, "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_a
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 945
    .local v0, "fl":I
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    .line 946
    .local v3, "sysUiFl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 948
    .local v2, "multiWindowFl":I
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_21

    .line 961
    .end local v0    # "fl":I
    .end local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v2    # "multiWindowFl":I
    .end local v3    # "sysUiFl":I
    .end local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1e
    :goto_1e
    return v5

    .restart local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1f
    move-object v4, p1

    .line 943
    goto :goto_a

    .line 952
    .restart local v0    # "fl":I
    .restart local v2    # "multiWindowFl":I
    .restart local v3    # "sysUiFl":I
    .restart local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_21
    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_2a

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_32

    :cond_2a
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_1e

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_1e

    .line 957
    :cond_32
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    goto :goto_1e
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 932
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManagerPolicy$WindowState;)I
    .registers 9
    .param p1, "statusBar"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "lastSystemUiFlags"    # I
    .param p3, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1332
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1333
    const/4 v2, 0x4

    .line 1334
    .local v2, "visibility":I
    if-eqz p1, :cond_2f

    .line 1335
    const/4 v1, 0x0

    .line 1336
    .local v1, "topIsFullscreen":Z
    if-eqz p3, :cond_1e

    .line 1337
    :try_start_9
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1339
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_19

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1d

    :cond_19
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_34

    :cond_1d
    const/4 v1, 0x1

    .line 1343
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1e
    :goto_1e
    if-nez v1, :cond_2f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1345
    const/4 v2, 0x0

    .line 1347
    .end local v1    # "topIsFullscreen":Z
    :cond_2f
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 1348
    monitor-exit v4

    return v2

    .line 1339
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "topIsFullscreen":Z
    :cond_34
    const/4 v1, 0x0

    goto :goto_1e

    .line 1349
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "topIsFullscreen":Z
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw v3
.end method

.method public getMinimizeSize()I
    .registers 2

    .prologue
    .line 968
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    return v0
.end method

.method public getScaleWindowResizableSize()I
    .registers 2

    .prologue
    .line 977
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    return v0
.end method

.method public handleLongPressOnRecent()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 1452
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v5

    if-nez v5, :cond_80

    .line 1455
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    .line 1456
    .local v1, "isDeviceProvisioned":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    .line 1457
    .local v3, "needhideTrayBar":Z
    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v5, :cond_2b

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v5

    if-eqz v5, :cond_2b

    if-eqz v3, :cond_81

    .line 1461
    :cond_2b
    const-string v2, "RecentsMultiWindow couldn\'t execute"

    .line 1462
    .local v2, "logStr":Ljava/lang/String;
    sget-boolean v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_62

    .line 1463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isDeviceProvisioned : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  TopFullscreenOpaqueWindowState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  needHideTrayBar : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1470
    :cond_62
    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v5, :cond_7b

    .line 1471
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1472
    .local v0, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1484
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_7b
    const-string v5, "MultiPhoneWindowManager"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    .end local v1    # "isDeviceProvisioned":Z
    .end local v2    # "logStr":Ljava/lang/String;
    .end local v3    # "needhideTrayBar":Z
    :cond_80
    :goto_80
    return v4

    .line 1487
    .restart local v1    # "isDeviceProvisioned":Z
    .restart local v3    # "needhideTrayBar":Z
    :cond_81
    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v5, "recentapps"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->startMultiWindowRecentsActivity()V

    .line 1489
    const/4 v4, 0x1

    goto :goto_80
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_5
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 194
    iput-object p3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 195
    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 196
    iput-object p5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 197
    iput-object p4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const/4 v2, 0x1

    :goto_31
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    .line 202
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FlashBarService"

    const-string v4, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    .line 207
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 214
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarHeight:I

    .line 218
    return-void

    .line 200
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_6f
    const/4 v2, 0x0

    goto :goto_31
.end method

.method public interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I
    .registers 11
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z
    .param p4, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 307
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 340
    :cond_a
    :goto_a
    return v1

    .line 311
    :cond_b
    if-eqz p1, :cond_50

    .line 312
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_a

    .line 313
    const/4 v3, 0x7

    if-ne p2, v3, :cond_48

    if-nez p3, :cond_48

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsTrayBarUI:Z

    if-eqz v3, :cond_48

    .line 314
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 315
    const-string v3, "MultiPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiWindowTrayBar toggle / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_46
    move v1, v2

    .line 318
    goto :goto_a

    .line 319
    :cond_48
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_a

    if-lez p2, :cond_a

    move v1, v2

    .line 320
    goto :goto_a

    .line 325
    :cond_50
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_a

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_a

    .line 326
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_62

    .line 327
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mConsumeBackKeyUp:Z

    move v1, v2

    .line 328
    goto :goto_a

    .line 330
    :cond_62
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    .line 334
    goto :goto_a
.end method

.method public isEnabledTalkback()Z
    .registers 9

    .prologue
    .line 1426
    const/16 v1, 0x3a

    .line 1427
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 1428
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1430
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1433
    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 1434
    const-string v4, ""

    .line 1437
    :cond_1b
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1439
    :cond_1e
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1440
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 1441
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1443
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1e

    .line 1444
    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1445
    const/4 v6, 0x1

    .line 1448
    .end local v2    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :goto_3b
    return v6

    :cond_3c
    const/4 v6, 0x0

    goto :goto_3b
.end method

.method public isForceHideCascade()Z
    .registers 2

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    return v0
.end method

.method public isForceHideStatusBar()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideStatusBar:Z

    return v0
.end method

.method public isSplitTopApplicationWindow()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 644
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStatusBarTransient()Z
    .registers 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    return v0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;IIIIIIIIIIIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 46
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "unrestrictedScreenTop"    # I
    .param p4, "unrestrictedScreenWidth"    # I
    .param p5, "unrestrictedScreenHeight"    # I
    .param p6, "dockTop"    # I
    .param p7, "dockBottom"    # I
    .param p8, "stableTop"    # I
    .param p9, "stableBottom"    # I
    .param p10, "curTop"    # I
    .param p11, "curBottom"    # I
    .param p12, "contentBottom"    # I
    .param p13, "restrictedScreenLeft"    # I
    .param p14, "restrictedScreenTop"    # I
    .param p15, "restrictedScreenWidth"    # I
    .param p16, "restrictedScreenHeight"    # I
    .param p17, "pf"    # Landroid/graphics/Rect;
    .param p18, "df"    # Landroid/graphics/Rect;
    .param p19, "of"    # Landroid/graphics/Rect;
    .param p20, "cf"    # Landroid/graphics/Rect;
    .param p21, "vf"    # Landroid/graphics/Rect;
    .param p22, "canHideNavigationBar"    # Z

    .prologue
    .line 474
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 475
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/internal/policy/impl/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 476
    .local v10, "fl":I
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v4, v0, 0xf0

    .line 477
    .local v4, "adjust":I
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v17

    .line 479
    .local v17, "sysUiFl":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    .line 480
    .local v13, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v19

    .line 481
    .local v19, "typeSplit":Z
    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v18

    .line 482
    .local v18, "typeCascade":Z
    const/16 v20, 0x800

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v14

    .line 483
    .local v14, "optionScale":Z
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x8

    if-eqz v20, :cond_164

    const/4 v3, 0x1

    .line 484
    .local v3, "absLayout":Z
    :goto_39
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_167

    const/4 v12, 0x1

    .line 486
    .local v12, "isPortrait":Z
    :goto_40
    if-eqz v19, :cond_16a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v20

    if-eqz v20, :cond_16a

    .line 487
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mStatusBarTransient:Z

    .line 501
    :cond_50
    :goto_50
    if-nez p2, :cond_163

    if-nez v3, :cond_163

    .line 502
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const v21, 0x1fffffff

    and-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v20

    if-eqz v20, :cond_453

    .line 505
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 506
    .local v16, "stackBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 507
    .local v8, "currentWinLeft":I
    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 508
    .local v6, "currentWinBottom":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 509
    .local v9, "currentWinWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 510
    .local v7, "currentWinHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v15

    .line 512
    .local v15, "scale":Landroid/graphics/PointF;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_c9

    .line 513
    if-eqz v18, :cond_20a

    if-eqz v14, :cond_20a

    .line 514
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v9, v0

    .line 515
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v7, v0

    .line 520
    :goto_b9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v21

    sub-int v21, v21, v9

    div-int/lit8 v21, v21, 0x2

    add-int v8, v20, v21

    .line 523
    :cond_c9
    move/from16 v0, p12

    if-le v6, v0, :cond_163

    .line 524
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    if-gez v20, :cond_dd

    .line 525
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 528
    :cond_dd
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-nez v20, :cond_224

    if-eqz v12, :cond_224

    if-nez v18, :cond_224

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p7

    if-ne v0, v1, :cond_224

    move/from16 v0, p5

    if-ge v7, v0, :cond_224

    .line 531
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    if-gez v20, :cond_107

    .line 532
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 534
    :cond_107
    sub-int v20, p12, v7

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 535
    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 536
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, p15

    if-ge v0, v1, :cond_214

    .line 537
    move-object/from16 v0, p17

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 538
    add-int v20, v8, v9

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 543
    :goto_131
    const/16 v20, 0x10

    move/from16 v0, v20

    if-eq v4, v0, :cond_13d

    const/16 v20, 0x20

    move/from16 v0, v20

    if-ne v4, v0, :cond_143

    .line 544
    :cond_13d
    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 547
    :cond_143
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, -0x80000000

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 611
    .end local p8    # "stableTop":I
    :goto_14f
    const/16 v20, 0x30

    move/from16 v0, v20

    if-eq v4, v0, :cond_44a

    if-nez v14, :cond_44a

    .line 612
    move/from16 v0, p10

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 613
    move/from16 v0, p11

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 635
    .end local v6    # "currentWinBottom":I
    .end local v7    # "currentWinHeight":I
    .end local v8    # "currentWinLeft":I
    .end local v9    # "currentWinWidth":I
    .end local v15    # "scale":Landroid/graphics/PointF;
    .end local v16    # "stackBounds":Landroid/graphics/Rect;
    :cond_163
    :goto_163
    return-void

    .line 483
    .end local v3    # "absLayout":Z
    .end local v12    # "isPortrait":Z
    .restart local p8    # "stableTop":I
    :cond_164
    const/4 v3, 0x0

    goto/16 :goto_39

    .line 484
    .restart local v3    # "absLayout":Z
    :cond_167
    const/4 v12, 0x0

    goto/16 :goto_40

    .line 488
    .restart local v12    # "isPortrait":Z
    :cond_16a
    if-eqz v18, :cond_50

    .line 489
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x10

    if-nez v20, :cond_1ef

    const/4 v11, 0x1

    .line 490
    .local v11, "isMultiPhoneWindow":Z
    :goto_175
    if-nez v11, :cond_1f1

    .line 492
    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 497
    :cond_189
    :goto_189
    const/16 v20, -0x2710

    move/from16 v0, v20

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 498
    const/16 v20, 0x2710

    move/from16 v0, v20

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_50

    .line 489
    .end local v11    # "isMultiPhoneWindow":Z
    :cond_1ef
    const/4 v11, 0x0

    goto :goto_175

    .line 493
    .restart local v11    # "isMultiPhoneWindow":Z
    :cond_1f1
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-nez v20, :cond_189

    .line 494
    if-eqz p2, :cond_1fb

    if-eqz v3, :cond_207

    :cond_1fb
    move-object/from16 v20, p1

    :goto_1fd
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;)V

    goto :goto_189

    :cond_207
    move-object/from16 v20, p2

    goto :goto_1fd

    .line 517
    .end local v11    # "isMultiPhoneWindow":Z
    .restart local v6    # "currentWinBottom":I
    .restart local v7    # "currentWinHeight":I
    .restart local v8    # "currentWinLeft":I
    .restart local v9    # "currentWinWidth":I
    .restart local v15    # "scale":Landroid/graphics/PointF;
    .restart local v16    # "stackBounds":Landroid/graphics/Rect;
    :cond_20a
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v9

    .line 518
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v7

    goto/16 :goto_b9

    .line 540
    :cond_214
    move/from16 v0, p13

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 541
    add-int v20, p13, p15

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_131

    .line 548
    :cond_224
    if-eqz v18, :cond_292

    add-int v20, v7, p8

    :goto_228
    move/from16 v0, v20

    move/from16 v1, p12

    if-ge v0, v1, :cond_2e1

    .line 549
    if-eqz v18, :cond_295

    if-eqz v14, :cond_295

    .line 550
    sub-int v20, p12, v7

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v20, v20, p8

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 552
    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    mul-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f000000

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 565
    :goto_284
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, 0x20000000

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_14f

    :cond_292
    move/from16 v20, v7

    .line 548
    goto :goto_228

    .line 554
    :cond_295
    move/from16 v0, p3

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p3

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 555
    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 556
    if-eqz v19, :cond_2d4

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_2d4

    .line 557
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 558
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_284

    .line 560
    :cond_2d4
    move-object/from16 v0, p17

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 561
    add-int v20, v8, v9

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_284

    .line 567
    :cond_2e1
    if-eqz v18, :cond_393

    if-eqz v14, :cond_393

    .line 568
    move/from16 v0, p8

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 569
    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    mul-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f000000

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 571
    const/16 v20, 0x10

    move/from16 v0, v20

    if-eq v4, v0, :cond_335

    .line 572
    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 578
    :goto_327
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_14f

    .line 574
    :cond_335
    sub-int v20, p12, p8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    const/high16 v21, 0x3f800000

    mul-float v20, v20, v21

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f000000

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, p8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_327

    .line 580
    :cond_393
    if-eqz v18, :cond_42f

    .end local p8    # "stableTop":I
    :goto_395
    move/from16 v0, p8

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move/from16 v0, p8

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 581
    move-object/from16 v0, p17

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 582
    move-object/from16 v0, p17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 583
    if-eqz p22, :cond_433

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    if-eqz v20, :cond_433

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_433

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7cf

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_433

    .line 587
    add-int v20, p3, p5

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 593
    :goto_3e9
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_409

    .line 594
    move/from16 v0, p12

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p12

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 595
    move/from16 v0, p13

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 596
    add-int v20, p13, p15

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 600
    :cond_409
    const/16 v20, 0x10

    move/from16 v0, v20

    if-eq v4, v0, :cond_41b

    .line 601
    move/from16 v0, p7

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p7

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 603
    :cond_41b
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-eqz v20, :cond_442

    .line 604
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v20, v0

    const/high16 v21, 0x40000000

    or-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_14f

    .line 580
    .restart local p8    # "stableTop":I
    :cond_42f
    const/16 p8, 0x0

    goto/16 :goto_395

    .line 589
    .end local p8    # "stableTop":I
    :cond_433
    add-int v20, p14, p16

    move/from16 v0, v20

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v20

    move-object/from16 v1, p17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3e9

    .line 606
    :cond_442
    const/high16 v20, 0x40000000

    move/from16 v0, v20

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_14f

    .line 615
    :cond_44a
    move-object/from16 v0, p21

    move-object/from16 v1, p20

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_163

    .line 620
    .end local v6    # "currentWinBottom":I
    .end local v7    # "currentWinHeight":I
    .end local v8    # "currentWinLeft":I
    .end local v9    # "currentWinWidth":I
    .end local v15    # "scale":Landroid/graphics/PointF;
    .end local v16    # "stackBounds":Landroid/graphics/Rect;
    .restart local p8    # "stableTop":I
    :cond_453
    if-eqz v19, :cond_163

    if-eqz v12, :cond_163

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v20

    if-nez v20, :cond_163

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v20

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_163

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_163

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v20

    if-eqz v20, :cond_163

    .line 623
    move-object/from16 v0, p18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p9

    if-ge v0, v1, :cond_48f

    .line 624
    move/from16 v0, p9

    move-object/from16 v1, p18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 625
    :cond_48f
    move-object/from16 v0, p19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p9

    if-ge v0, v1, :cond_4a1

    .line 626
    move/from16 v0, p9

    move-object/from16 v1, p19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 627
    :cond_4a1
    move-object/from16 v0, p20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p9

    if-ge v0, v1, :cond_4b3

    .line 628
    move/from16 v0, p9

    move-object/from16 v1, p20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 629
    :cond_4b3
    move-object/from16 v0, p21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p9

    if-ge v0, v1, :cond_163

    .line 630
    move/from16 v0, p9

    move-object/from16 v1, p21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_163
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "windowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p4, "attachedWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "attachedWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1254
    if-eqz p2, :cond_1e

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v3, :cond_1e

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1e

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1d

    if-eqz p6, :cond_1e

    invoke-virtual {p6, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1314
    :cond_1d
    :goto_1d
    return v3

    .line 1262
    :cond_1e
    if-eqz p5, :cond_2c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_2c

    iget v5, p5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x898

    if-eq v5, v6, :cond_1d

    .line 1267
    :cond_2c
    invoke-virtual {p3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_3a

    if-eqz p6, :cond_88

    invoke-virtual {p6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_88

    :cond_3a
    move v0, v3

    .line 1268
    .local v0, "isCascade":Z
    :goto_3b
    if-eqz v0, :cond_a5

    .line 1269
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHideCascade:Z

    if-nez v5, :cond_1d

    .line 1273
    if-eqz p2, :cond_74

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ee

    if-eq v5, v6, :cond_4f

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ef

    if-ne v5, v6, :cond_74

    .line 1275
    :cond_4f
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowController:Z

    if-eqz v5, :cond_62

    if-eqz p2, :cond_62

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_62

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mForceHidePenWindowControllerStackId:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v6

    if-eq v5, v6, :cond_1d

    .line 1281
    :cond_62
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopPenWindowControllerInStack()Landroid/view/IApplicationToken;

    move-result-object v2

    .line 1282
    .local v2, "topPenWindowControllerToken":Landroid/view/IApplicationToken;
    if-eqz v2, :cond_74

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-eq v2, v5, :cond_74

    .line 1283
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isTopPenWindowControllerVisibleInStack()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 1289
    .end local v2    # "topPenWindowControllerToken":Landroid/view/IApplicationToken;
    :cond_74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->keyguardOn()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1290
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    if-nez v5, :cond_90

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-nez v5, :cond_90

    move v3, v4

    .line 1291
    goto :goto_1d

    .end local v0    # "isCascade":Z
    :cond_88
    move v0, v4

    .line 1267
    goto :goto_3b

    .line 1294
    .restart local v0    # "isCascade":Z
    :cond_8a
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    if-nez v5, :cond_90

    move v3, v4

    .line 1295
    goto :goto_1d

    .line 1299
    :cond_90
    const/high16 v1, 0x480000

    .line 1301
    .local v1, "mask":I
    if-eqz p2, :cond_9b

    .line 1302
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_9b

    move v3, v4

    .line 1303
    goto :goto_1d

    .line 1306
    :cond_9b
    if-eqz p5, :cond_1d

    .line 1307
    iget v5, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_1d

    move v3, v4

    .line 1308
    goto/16 :goto_1d

    .end local v1    # "mask":I
    :cond_a5
    move v3, v4

    .line 1314
    goto/16 :goto_1d
.end method

.method public needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 11
    .param p1, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x1

    .line 1107
    const-string v6, "true"

    const-string v7, "dev.knoxapp.running"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1177
    :cond_11
    :goto_11
    return v5

    .line 1110
    :cond_12
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1114
    :cond_1e
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_47

    .line 1115
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1116
    .local v2, "lpApp":Landroid/view/WindowManager$LayoutParams;
    move-object v3, v2

    .line 1118
    .local v3, "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_33

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v6, v5, :cond_33

    .line 1120
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1123
    :cond_33
    if-eqz v3, :cond_47

    .line 1139
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_47

    .line 1140
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_11

    .line 1142
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1149
    .end local v2    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_47
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    .line 1150
    .local v4, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_11

    .line 1153
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_11

    .line 1158
    .end local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_70
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v6, :cond_92

    .line 1159
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1167
    :cond_92
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_a4

    .line 1168
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1169
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_a4

    .line 1170
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_11

    .line 1177
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a4
    const/4 v5, 0x0

    goto/16 :goto_11
.end method

.method public notifySystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1191
    return-void
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .registers 2
    .param p1, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 884
    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 738
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_1a

    .line 756
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 740
    :pswitch_7
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 743
    :pswitch_a
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 746
    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_13

    .line 747
    const/4 v0, -0x7

    goto :goto_6

    .line 749
    :cond_13
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 752
    :pswitch_16
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 738
    nop

    :pswitch_data_1a
    .packed-switch 0x898
        :pswitch_7
        :pswitch_d
        :pswitch_16
        :pswitch_a
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 713
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 714
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 723
    :cond_7
    :goto_7
    return-void

    .line 715
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 716
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 717
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_16

    .line 718
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 719
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 720
    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public setCanBeForceHide(Z)V
    .registers 2
    .param p1, "forceHide"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCanBeForceHide:Z

    .line 237
    return-void
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_20

    .line 917
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 919
    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mCurrentInputMethodTarget : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_20
    return-void
.end method

.method public setInitialDisplaySize()V
    .registers 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 286
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    const v2, 0x105022e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 289
    :cond_19
    const v1, 0x105022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMinimizeSize:I

    .line 290
    const v1, 0x1050241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mScaleWindowResizableSize:I

    .line 292
    return-void
.end method

.method public setInputMethodWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "inputMethodWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_20

    .line 255
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 256
    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mInputMehtodWindow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_20
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 2
    .param p1, "open"    # Z

    .prologue
    .line 1322
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsMultiWindowTrayOpen:Z

    .line 1324
    return-void
.end method

.method public shouldEnableLayoutInsetsBySoftInput(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 8
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1525
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_d

    .line 1551
    :cond_c
    :goto_c
    return v1

    .line 1529
    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_35

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1531
    .local v0, "targetWindow":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_13
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1535
    :cond_23
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_33

    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_37

    :cond_33
    move v1, v2

    .line 1539
    goto :goto_c

    .end local v0    # "targetWindow":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_35
    move-object v0, p1

    .line 1529
    goto :goto_13

    .line 1544
    .restart local v0    # "targetWindow":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_37
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v3

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v4

    if-ne v3, v4, :cond_c

    move v1, v2

    .line 1545
    goto :goto_c
.end method

.method startMultiWindowRecentsActivity()V
    .registers 3

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1522
    return-void
.end method

.method public stopDragDropService()V
    .registers 3

    .prologue
    .line 1402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1403
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.action.ACTION_RECENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1406
    return-void
.end method

.method public toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 6
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 1007
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1009
    :cond_15
    const-string v2, "MultiPhoneWindowManager"

    const-string v3, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :goto_1c
    return v1

    .line 1013
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1016
    :try_start_23
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2c

    .line 1020
    :goto_2a
    const/4 v1, 0x1

    goto :goto_1c

    .line 1017
    :catch_2c
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public toggleRecentApps()V
    .registers 4

    .prologue
    .line 1372
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v2, :cond_21

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    if-nez v2, :cond_21

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v2, :cond_21

    .line 1374
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstRecentKeyClick:Z

    .line 1376
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1377
    .local v1, "recentIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.multiwindow.recentkey.start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_22

    .line 1384
    .end local v1    # "recentIntent":Landroid/content/Intent;
    :cond_21
    :goto_21
    return-void

    .line 1379
    :catch_22
    move-exception v0

    .line 1380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public updateMultiWindowTrayBar(Z)V
    .registers 4
    .param p1, "forceShow"    # Z

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1100
    return-void
.end method

.method public updateSettings()V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 404
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 405
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 406
    :try_start_b
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportBezelUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 407
    :cond_17
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    .line 410
    :cond_1a
    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 411
    .local v4, "prevEnableMultiWindowUISetting":I
    const-string v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v5, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 413
    const-string v9, "MultiPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSetting mEnableMultiWindowUISetting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z

    if-eqz v9, :cond_b9

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSystemReady:Z

    if-eqz v9, :cond_b9

    .line 415
    iget v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-ne v9, v4, :cond_54

    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportBezelUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b9

    .line 417
    :cond_54
    const/4 v2, 0x1

    .line 418
    .local v2, "isUpdateMultiWindowTrayNeeded":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 419
    .local v6, "versionInfo":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 420
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 421
    .local v3, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v0

    .line 422
    .local v0, "currUser":I
    const/16 v9, 0x64

    if-lt v0, v9, :cond_7a

    .line 423
    const/4 v2, 0x0

    .line 425
    .end local v0    # "currUser":I
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :cond_7a
    if-eqz v2, :cond_b9

    .line 426
    iget-object v9, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_tray_shown"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_bb

    .line 428
    .local v1, "forceShow":Z
    :goto_8c
    if-nez v1, :cond_9b

    .line 429
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "multi_window_tray_shown"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 431
    :cond_9b
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 432
    const/4 v1, 0x0

    .line 434
    :cond_a8
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 435
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mSystemBooted:Z

    if-eqz v7, :cond_b9

    .line 436
    iget-object v7, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    .end local v1    # "forceShow":Z
    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_b9
    monitor-exit v8

    .line 447
    return-void

    .restart local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .restart local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_bb
    move v1, v7

    .line 426
    goto :goto_8c

    .line 445
    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v4    # "prevEnableMultiWindowUISetting":I
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :catchall_bd
    move-exception v7

    monitor-exit v8
    :try_end_bf
    .catchall {:try_start_b .. :try_end_bf} :catchall_bd

    throw v7
.end method

.method public windowTypeToLayerLw(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 268
    const/16 v0, 0x899

    if-ne p1, v0, :cond_6

    .line 269
    const/4 v0, 0x5

    .line 276
    :goto_5
    return v0

    .line 270
    :cond_6
    const/16 v0, 0x89a

    if-eq p1, v0, :cond_e

    const/16 v0, 0x89b

    if-ne p1, v0, :cond_10

    .line 271
    :cond_e
    const/4 v0, 0x4

    goto :goto_5

    .line 272
    :cond_10
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_17

    .line 273
    const/16 v0, 0xb

    goto :goto_5

    .line 276
    :cond_17
    const/4 v0, -0x1

    goto :goto_5
.end method
