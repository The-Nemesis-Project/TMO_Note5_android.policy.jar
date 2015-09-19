.class public Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;
.super Ljava/lang/Object;
.source "CocktailPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;,
        Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_LAYOUT:Z = true

.field private static final MSG_EDGE_SCREEN_WAKEUP:I = 0x1

.field private static final MSG_UPDATE_GRIP_STATE:I = 0x2

.field static final TAG:Ljava/lang/String; = "CocktailPhoneWindowManager"

.field static final mTmpCocktailDiffFrame:Landroid/graphics/Rect;

.field static final mTmpCocktailFrame:Landroid/graphics/Rect;

.field static final mTmpSubWindowFrame:Landroid/graphics/Rect;


# instance fields
.field private mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailBarDirection:I

.field private mCocktailCurrentSize:I

.field private mCocktailDeltaBottom:I

.field private mCocktailDeltaLeft:I

.field private mCocktailDeltaRight:I

.field private mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCocktailShiftSize:I

.field private mCocktailSize:I

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mHandler:Landroid/os/Handler;

.field private mHideBackgroundWindow:Z

.field private mInitCocktailBar:Z

.field private mOverscanScreenHeight:I

.field private mOverscanScreenLeft:I

.field private mOverscanScreenTop:I

.field private mOverscanScreenWidth:I

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mPolicyWindowType:I

.field private mPolicyWindowVisiblity:Z

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field private final mServiceAquireLock:Ljava/lang/Object;

.field mStatusBarHeight:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mWakeupKeyCode:I

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailDiffFrame:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mTmpSubWindowFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    .line 89
    const/16 v0, 0x14a

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mWakeupKeyCode:I

    .line 91
    iput v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mStatusBarHeight:I

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mInitCocktailBar:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHideBackgroundWindow:Z

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method private checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "bCheckedNonOpaqueWindow"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v1, 0x1

    .line 784
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-nez v2, :cond_14

    .line 785
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x62

    if-ne v2, v3, :cond_15

    .line 809
    :cond_14
    :goto_14
    return v0

    .line 789
    :cond_15
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_14

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_14

    .line 790
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v4, :cond_27

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v4, :cond_27

    move v0, v1

    .line 792
    goto :goto_14

    .line 795
    :cond_27
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->getNonDecorDisplayWidth(II)I

    move-result v3

    if-ne v2, v3, :cond_41

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mDisplayHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->getNonDecorDisplayHeight(II)I

    move-result v3

    if-ne v2, v3, :cond_41

    move v0, v1

    .line 797
    goto :goto_14

    .line 800
    :cond_41
    if-eqz p3, :cond_14

    .line 801
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, v5, :cond_4b

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v5, :cond_14

    :cond_4b
    move v0, v1

    .line 803
    goto :goto_14
.end method

.method private getPolicyWindowType()I
    .registers 11

    .prologue
    const/high16 v9, 0x20000000

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 718
    iget-object v7, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_82

    .line 719
    iget-object v7, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 721
    .local v3, "policyLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    .line 722
    .local v2, "isStatusBarExpand":Z
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_1f

    .line 724
    :try_start_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    .line 725
    .local v4, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v4, :cond_1f

    .line 726
    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandState()Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_48

    move-result v2

    .line 735
    .end local v4    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1f
    :goto_1f
    iget-object v7, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_54

    iget-object v7, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_54

    .line 736
    iget-object v7, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 737
    .local v0, "appPolicyLp":Landroid/view/WindowManager$LayoutParams;
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_54

    .line 738
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/2addr v7, v9

    if-nez v7, :cond_46

    iget-object v7, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v3, v8}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v7

    if-eqz v7, :cond_46

    if-eqz v2, :cond_54

    .line 741
    :cond_46
    const/4 v5, 0x2

    .line 780
    .end local v0    # "appPolicyLp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "isStatusBarExpand":Z
    .end local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_47
    :goto_47
    :sswitch_47
    return v5

    .line 728
    .restart local v2    # "isStatusBarExpand":Z
    .restart local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :catch_48
    move-exception v1

    .line 729
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "CocktailPhoneWindowManager"

    const-string v8, "RemoteException when call the getPanelExpandState"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1f

    .line 746
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_54
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v7, :sswitch_data_86

    .line 770
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v6, :cond_63

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v5, v7, :cond_80

    .line 772
    :cond_63
    const/4 v5, 0x6

    goto :goto_47

    .line 748
    :sswitch_65
    const/16 v5, 0x8

    goto :goto_47

    .line 754
    :sswitch_68
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_47

    .line 756
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_77

    .line 757
    const/4 v5, 0x7

    goto :goto_47

    .line 759
    :cond_77
    if-eqz v2, :cond_7b

    .line 760
    const/4 v5, 0x3

    goto :goto_47

    .line 762
    :cond_7b
    iget v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    goto :goto_47

    .line 767
    :sswitch_7e
    const/4 v5, 0x4

    goto :goto_47

    :cond_80
    move v5, v6

    .line 777
    goto :goto_47

    .line 780
    .end local v2    # "isStatusBarExpand":Z
    .end local v3    # "policyLp":Landroid/view/WindowManager$LayoutParams;
    :cond_82
    iget v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    goto :goto_47

    .line 746
    nop

    :sswitch_data_86
    .sparse-switch
        0x7d0 -> :sswitch_68
        0x7d4 -> :sswitch_47
        0x7db -> :sswitch_7e
        0x7dc -> :sswitch_7e
        0x8ad -> :sswitch_65
    .end sparse-switch
.end method

.method private isTransientShowing()Z
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    return v0
.end method


# virtual methods
.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "opaqueWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 626
    return-void
.end method

.method public beginLayoutLw(IIIIIII)V
    .registers 8
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I
    .param p4, "overscanScreenLeft"    # I
    .param p5, "overscanScreenTop"    # I
    .param p6, "overscanScreenWidth"    # I
    .param p7, "overscanScreenHeight"    # I

    .prologue
    .line 391
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 555
    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 556
    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHideBackgroundWindow:Z

    .line 558
    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 559
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 971
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- Cocktail Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1e

    .line 974
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 978
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2f

    .line 979
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailBarBackground="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 983
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_40

    .line 984
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCocktailNightClock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 988
    :cond_40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 991
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyAppWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 994
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 995
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 996
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPolicyWindowVisiblity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 997
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 998
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 2

    .prologue
    .line 629
    const/4 v0, 0x0

    .line 686
    .local v0, "changes":I
    return v0
.end method

.method public getCocktailBarFrame(Landroid/view/WindowManagerPolicy$WindowState;Z)Landroid/graphics/Rect;
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "policy"    # Z

    .prologue
    const/4 v4, 0x0

    .line 813
    const/4 v1, 0x0

    .line 814
    .local v1, "diff":I
    if-nez p2, :cond_12

    .line 815
    if-eqz p1, :cond_2a

    .line 816
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasSubWindow()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 817
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v1, v2, v3

    .line 828
    :cond_12
    :goto_12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 829
    .local v0, "cocktailFrame":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v2, :pswitch_data_4c

    .line 840
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v4, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 842
    :goto_22
    return-object v0

    .line 819
    .end local v0    # "cocktailFrame":Landroid/graphics/Rect;
    :cond_23
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v1, v2, v3

    goto :goto_12

    .line 822
    :cond_2a
    invoke-direct {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isTransientShowing()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 823
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    sub-int v1, v2, v3

    goto :goto_12

    .line 831
    .restart local v0    # "cocktailFrame":Landroid/graphics/Rect;
    :pswitch_37
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22

    .line 834
    :pswitch_3e
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22

    .line 837
    :pswitch_45
    iget v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22

    .line 829
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_37
        :pswitch_3e
        :pswitch_45
    .end packed-switch
.end method

.method public getNonDecorAlphaScreenDisplayHeight(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 712
    if-le p1, p2, :cond_5

    .line 713
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p2, v0

    .line 715
    :cond_5
    return p2
.end method

.method public getNonDecorAlphaScreenDisplayWidth(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 705
    if-ge p1, p2, :cond_5

    .line 706
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    sub-int/2addr p1, v0

    .line 708
    :cond_5
    return p1
.end method

.method public getNonDecorDisplayHeight(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 698
    if-le p1, p2, :cond_5

    .line 699
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr p2, v0

    .line 701
    :cond_5
    return p2
.end method

.method public getNonDecorDisplayWidth(II)I
    .registers 4
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I

    .prologue
    .line 691
    if-ge p1, p2, :cond_5

    .line 692
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    sub-int/2addr p1, v0

    .line 694
    :cond_5
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 961
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 962
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 963
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 966
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 967
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 152
    iput-object p3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 153
    iput-object p4, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 154
    iput-object p5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 156
    new-instance v0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;-><init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 161
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailShiftSize:I

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    .line 166
    :goto_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mStatusBarHeight:I

    .line 167
    return-void

    .line 163
    :cond_4c
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailSize:I

    iput v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailCurrentSize:I

    goto :goto_3c
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;II)I
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 258
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2d

    move v0, v2

    .line 259
    .local v0, "down":Z
    :goto_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 261
    .local v1, "keyCode":I
    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2c

    .line 262
    packed-switch v1, :pswitch_data_36

    .line 270
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_1f

    if-ne v1, v5, :cond_2c

    .line 271
    :cond_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->isEdgeScreenWaked()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 272
    invoke-virtual {p0, v3, v3}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZI)V

    .line 273
    if-ne v1, v5, :cond_2c

    .line 274
    and-int/lit8 p2, p2, -0x2

    .line 282
    :cond_2c
    :goto_2c
    return p2

    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_2d
    move v0, v3

    .line 258
    goto :goto_a

    .line 266
    .restart local v0    # "down":Z
    .restart local v1    # "keyCode":I
    :pswitch_2f
    iput v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mWakeupKeyCode:I

    .line 267
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->requestEdgeScreenWakeup(ZI)V

    goto :goto_2c

    .line 262
    nop

    :pswitch_data_36
    .packed-switch 0x149
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public isCocktailRotationAnimationNeeded()Z
    .registers 2

    .prologue
    .line 861
    const/4 v0, 0x0

    return v0
.end method

.method public isEdgeScreenWaked()Z
    .registers 3

    .prologue
    .line 865
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 866
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_d

    .line 867
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v1

    .line 870
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isNightClockVisible()Z
    .registers 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_16

    .line 954
    const/4 v0, 0x1

    .line 957
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p5, "pf"    # Landroid/graphics/Rect;
    .param p6, "df"    # Landroid/graphics/Rect;
    .param p7, "of"    # Landroid/graphics/Rect;
    .param p8, "cf"    # Landroid/graphics/Rect;
    .param p9, "vf"    # Landroid/graphics/Rect;
    .param p10, "dcf"    # Landroid/graphics/Rect;

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    .line 548
    if-eqz p1, :cond_12

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_12

    .line 549
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mFocusedFloatingSubWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v1, :cond_12

    const/4 v0, 0x1

    .line 551
    :cond_12
    return v0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x7

    .line 214
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v1, :pswitch_data_a0

    .line 254
    :goto_6
    :pswitch_6
    const/4 v0, 0x0

    :cond_7
    return v0

    .line 216
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1d

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 224
    :cond_1d
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 225
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 229
    :pswitch_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_4f

    .line 233
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 237
    :cond_4f
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    .line 238
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL BAR BACKGROUND : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 242
    :pswitch_6c
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_81

    .line 246
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_7

    .line 250
    :cond_81
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    .line 251
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COCKTAIL NIGHTCLOCK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 214
    nop

    :pswitch_data_a0
    .packed-switch 0x8ac
        :pswitch_8
        :pswitch_3a
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6c
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 205
    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 211
    :cond_7
    :goto_7
    return-void

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 207
    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 208
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 209
    iput-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public requestEdgeScreenWakeup(ZI)V
    .registers 8
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 846
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 847
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 849
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v4, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 850
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 851
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 852
    return-void
.end method

.method public requestTransientCocktailBar()V
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 184
    :cond_c
    :goto_c
    return-void

    .line 175
    :cond_d
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 176
    :cond_21
    const-string v1, "CocktailPhoneWindowManager"

    const-string v2, "Not showing transient bar, becuase Factory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 180
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 181
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_c

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktailBarVisibility(I)V

    goto :goto_c
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 909
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_6d

    .line 910
    iget v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarDirection:I

    packed-switch v0, :pswitch_data_70

    .line 939
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_61

    .line 941
    :cond_15
    const v0, 0x10a0024

    .line 949
    :goto_18
    return v0

    .line 912
    :pswitch_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_21

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_25

    .line 914
    :cond_21
    const v0, 0x10a0026

    goto :goto_18

    .line 915
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_2d

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 917
    :cond_2d
    const v0, 0x10a0025

    goto :goto_18

    .line 921
    :pswitch_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_39

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_3d

    .line 923
    :cond_39
    const v0, 0x10a0022

    goto :goto_18

    .line 924
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_45

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 926
    :cond_45
    const v0, 0x10a0021

    goto :goto_18

    .line 930
    :pswitch_49
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v2, :cond_51

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v4, :cond_55

    .line 932
    :cond_51
    const v0, 0x10a0020

    goto :goto_18

    .line 933
    :cond_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_5d

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 935
    :cond_5d
    const v0, 0x10a001f

    goto :goto_18

    .line 942
    :cond_61
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eq p2, v1, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-ne p2, v3, :cond_6d

    .line 944
    :cond_69
    const v0, 0x10a0023

    goto :goto_18

    .line 949
    :cond_6d
    const/4 v0, 0x0

    goto :goto_18

    .line 910
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_19
        :pswitch_31
        :pswitch_49
    .end packed-switch
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq v0, p1, :cond_20

    .line 287
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 289
    const-string v0, "CocktailPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed -> mCurrentInputMethodTarget : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_20
    return-void
.end method

.method public updateCocktailBarVisibility(Z)Z
    .registers 8
    .param p1, "visibility"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, "changes":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_4d

    .line 885
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eq v3, p1, :cond_39

    move v0, v2

    .line 886
    :goto_c
    if-eqz v0, :cond_4d

    .line 887
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    .line 888
    const-string v3, "CocktailPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCocktailBarVisibility : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 890
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_3b

    .line 891
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 905
    :cond_38
    :goto_38
    return v1

    :cond_39
    move v0, v1

    .line 885
    goto :goto_c

    .line 893
    :cond_3b
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_38

    .line 897
    :cond_41
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPolicyWindowVisiblity:Z

    if-eqz v3, :cond_4d

    .line 898
    iget-object v3, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v2

    if-nez v2, :cond_38

    :cond_4d
    move v1, v0

    .line 905
    goto :goto_38
.end method

.method public updateGripState(ZI)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v3, 0x2

    .line 874
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 875
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 878
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 879
    iget-object v1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 880
    return-void
.end method

.method public windowTypeToLayerLw(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 190
    packed-switch p1, :pswitch_data_c

    .line 200
    :pswitch_3
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 193
    :pswitch_5
    const/16 v0, 0x19

    goto :goto_4

    .line 197
    :pswitch_8
    const/16 v0, 0x1a

    goto :goto_4

    .line 190
    nop

    :pswitch_data_c
    .packed-switch 0x8ac
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
