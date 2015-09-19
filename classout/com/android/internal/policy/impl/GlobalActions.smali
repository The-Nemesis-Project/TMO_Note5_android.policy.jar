.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$LongPressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;,
        Lcom/android/internal/policy/impl/GlobalActions$RebootAction;,
        Lcom/android/internal/policy/impl/GlobalActions$PowerAction;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field private static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final GLOBAL_ACTION_KEY_DATAMODE:Ljava/lang/String; = "datamode"

.field private static final GLOBAL_ACTION_KEY_EMERGENCYMODE:Ljava/lang/String; = "emergencymode"

.field private static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field private static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field private static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field private static final GLOBAL_ACTION_KEY_RESTART:Ljava/lang/String; = "restart"

.field private static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_REFRESH_RINGER:I = 0x5

.field private static final MESSAGE_SHOW:I = 0x2

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final SURVEY_LOG:Z

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TW_GLOBALACTIONS_MSG_DELAY:I = 0x96

.field private static mClearCoverWidth:I

.field private static mCountyCode:Ljava/lang/String;

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsAirplaneConfirmDialogExist:Z

.field private static mIsClearCover:Z

.field private static mIsCoverOpen:Z

.field private static mIsFirstCreated:Z

.field private static mIsMiniCoverOpened:Z

.field private static mIsMiniDialogMode:Z

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mProKioskMenuPosition:I

.field private static mProKioskOptionShown:Z

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSViewCoverAppLevel:I

.field private static mSViewCoverHeight:I

.field private static mSViewCoverWidth:I

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field public static mSilentModeView:Landroid/view/View;

.field private static mStatusHeight:I

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z


# instance fields
.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field private isLGTOperator:Z

.field private isPHSalesCode:Z

.field private isSKTOperator:Z

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneMsg:Landroid/widget/TextView;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private mDontShowCheckbox:Landroid/widget/CheckBox;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mIsSecureKeyguard:Z

.field private mIsSetAirplaneOnMessageCHINA:Z

.field private mIsSetAirplaneOnMessageVZW:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardShowing:Z

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMSimServiceState:[I

.field private mPhoneCount:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenshot:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mShowOnAirplaneConfirm:Z

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mTempStringArray:[Ljava/lang/String;

.field private mUnablePowerOff:Ljava/lang/String;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_79

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    .line 235
    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskMenuPosition:I

    .line 237
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskOptionShown:Z

    .line 238
    sput-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 239
    sput-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 245
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 246
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    .line 253
    sput-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 258
    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    .line 259
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    .line 261
    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverAppLevel:I

    .line 263
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    .line 264
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z

    .line 267
    sput-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 268
    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverWidth:I

    .line 269
    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverHeight:I

    .line 270
    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mClearCoverWidth:I

    .line 271
    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mStatusHeight:I

    .line 273
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    .line 274
    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafeShot:Ljava/lang/String;

    .line 275
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mProductName:Ljava/lang/String;

    .line 276
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    .line 277
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCountyCode:Ljava/lang/String;

    .line 289
    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsFirstCreated:Z

    .line 302
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 305
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SURVEY_LOG:Z

    .line 3487
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_79
    move v0, v2

    .line 174
    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 212
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 213
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 215
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 219
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 226
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    .line 233
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 234
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 236
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 249
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 254
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 255
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 256
    iput v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    .line 260
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 279
    const-string v1, "LGT"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "LUC"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "LUO"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    :cond_48
    move v1, v3

    :goto_49
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->isLGTOperator:Z

    .line 280
    const-string v1, "SKT"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "SKC"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const-string v1, "SKO"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    :cond_69
    move v1, v3

    :goto_6a
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->isSKTOperator:Z

    .line 281
    const-string v1, "SMA"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "GLB"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "XTC"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "XTE"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b6

    :cond_94
    move v1, v3

    :goto_95
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->isPHSalesCode:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    .line 283
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 296
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    .line 297
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    .line 298
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    .line 299
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 300
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    .line 301
    new-array v1, v3, [Ljava/lang/String;

    const-string v4, "temp"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    .line 308
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 309
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSecureKeyguard:Z

    .line 310
    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    .line 312
    iput v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I

    .line 633
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 2024
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$19;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$19;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2030
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$20;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$20;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2047
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$21;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$21;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2900
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$22;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$22;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2942
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$23;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$23;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 2953
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$24;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$24;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2993
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$25;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$25;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 3007
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$26;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/internal/policy/impl/GlobalActions$26;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 3028
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$27;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$27;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 3498
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    .line 321
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 323
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 325
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 330
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 331
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 338
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    .line 343
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 345
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 349
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 354
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_1b9

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_1b9

    move v1, v3

    :goto_182
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    .line 356
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x112007b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1bb

    :goto_193
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    .line 359
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const v3, 0x104093a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    .line 363
    const-string v1, "TMB"

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ac

    .line 364
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    .line 369
    :cond_1ac
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    .line 371
    return-void

    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1b0
    move v1, v2

    .line 279
    goto/16 :goto_49

    :cond_1b3
    move v1, v2

    .line 280
    goto/16 :goto_6a

    :cond_1b6
    move v1, v2

    .line 281
    goto/16 :goto_95

    .restart local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1b9
    move v1, v2

    .line 354
    goto :goto_182

    :cond_1bb
    move v3, v2

    .line 356
    goto :goto_193
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 170
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isSKTOperator:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isTSafeLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSecureKeyguard:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUnablePowerOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/hardware/usb/UsbManager;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isCHINA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    return p1
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSupportVoLte()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 170
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isUSA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isLGTOperator:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isKOREA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z

    return v0
.end method

.method static synthetic access$3000()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 170
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/ProKioskManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/GlobalActions;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Landroid/app/AlertDialog$Builder;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    return v0
.end method

.method static synthetic access$4002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 170
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200()Landroid/widget/ListView;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$4400()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskOptionShown:Z

    return v0
.end method

.method static synthetic access$4402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 170
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskOptionShown:Z

    return p0
.end method

.method static synthetic access$4500()I
    .registers 1

    .prologue
    .line 170
    sget v0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskMenuPosition:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4800()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$4902(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 170
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$5300()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    return v0
.end method

.method static synthetic access$5400()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$6700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCountyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/internal/policy/impl/GlobalActions;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions;->confirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isMSim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/internal/policy/impl/GlobalActions;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimServiceState:[I

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/internal/policy/impl/GlobalActions;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I

    return v0
.end method

.method static synthetic access$7300(Lcom/android/internal/policy/impl/GlobalActions;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->isSimCardInserted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isPHSalesCode:Z

    return v0
.end method

.method private addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
    .registers 14
    .param p1, "iconDraw"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "messageChars"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1554
    .local p5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1555
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v6

    return v0

    .line 1597
    :catchall_15
    move-exception v0

    monitor-exit v6
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z
    .registers 7
    .param p1, "valueToCheck"    # I
    .param p2, "actionToAdd"    # Lcom/android/internal/policy/impl/GlobalActions$Action;
    .param p4, "ifEnabledMoveIncrementPosition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1541
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    if-eqz p2, :cond_1c

    if-eqz p3, :cond_1c

    .line 1542
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string v1, "getSealedPowerDialogItems"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1c

    .line 1543
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    if-eqz p4, :cond_1a

    .line 1545
    sget v0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskMenuPosition:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskMenuPosition:I

    .line 1547
    :cond_1a
    const/4 v0, 0x1

    .line 1550
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1870
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .line 1871
    .local v9, "um":Landroid/os/UserManager;
    invoke-virtual {v9}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1872
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 1873
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1874
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1875
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1876
    if-nez v6, :cond_6b

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_69

    move v8, v11

    .line 1878
    .local v8, "isCurrentUser":Z
    :goto_37
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_75

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1880
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_41
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$18;

    const v2, 0x1080476

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_77

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_7a

    const-string v1, " \u2714"

    :goto_59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$18;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 1906
    .local v0, "switchToUser":Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .end local v0    # "switchToUser":Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_69
    move v8, v12

    .line 1876
    goto :goto_37

    :cond_6b
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_73

    move v8, v11

    goto :goto_37

    :cond_73
    move v8, v12

    goto :goto_37

    .line 1878
    .restart local v8    # "isCurrentUser":Z
    :cond_75
    const/4 v3, 0x0

    goto :goto_41

    .line 1880
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_77
    const-string v1, "Primary"

    goto :goto_51

    :cond_7a
    const-string v1, ""

    goto :goto_59

    .line 1910
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7d
    return-void
.end method

.method private awakenIfNecessary()V
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_11

    .line 449
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 456
    :cond_11
    :goto_11
    return-void

    .line 452
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 8
    .param p1, "on"    # Z

    .prologue
    .line 3148
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_42

    const/4 v1, 0x1

    :goto_b
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3154
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    if-eqz p1, :cond_44

    .line 3155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3157
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3158
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$28;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$28;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3173
    :goto_37
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_41

    .line 3174
    if-eqz p1, :cond_5d

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_3f
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 3176
    :cond_41
    return-void

    .line 3148
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_42
    const/4 v1, 0x0

    goto :goto_b

    .line 3167
    :cond_44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3168
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3169
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3170
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_37

    .line 3174
    :cond_5d
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_3f
.end method

.method private checkAirplaneModeOnOff()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3131
    const-string v2, "GlobalActions"

    const-string v3, "===== Start checkAirplaneModeOnOff ====="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_45

    .line 3137
    .local v0, "airplaneModeOn":Z
    :goto_17
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAirplaneModeOnOff : airplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    if-eqz v0, :cond_47

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_33
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 3140
    const-string v1, "GlobalActions"

    const-string v2, "checkAirplaneModeOnOff : sendEmptyMessageDelayed MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3142
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_45
    move v0, v1

    .line 3133
    goto :goto_17

    .line 3138
    .restart local v0    # "airplaneModeOn":Z
    :cond_47
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_33
.end method

.method private clearCustomDialogItems()Z
    .registers 5

    .prologue
    .line 1601
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1602
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1603
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1604
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$Action;

    .line 1605
    .local v1, "obj":Lcom/android/internal/policy/impl/GlobalActions$Action;
    instance-of v2, v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    if-eqz v2, :cond_9

    .line 1606
    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .end local v1    # "obj":Lcom/android/internal/policy/impl/GlobalActions$Action;
    iget-boolean v2, v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    if-eqz v2, :cond_9

    .line 1607
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 1611
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    :cond_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 1612
    const/4 v2, 0x1

    return v2
.end method

.method private clearSCoverRequestStatus()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 3500
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3501
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3502
    :cond_e
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3503
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3505
    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_14

    .line 3507
    .end local v1    # "sender":Ljava/lang/String;
    :cond_24
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 3508
    return-void
.end method

.method private confirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    .registers 25
    .param p1, "action"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    .line 2053
    const/4 v4, 0x0

    .line 2054
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v14, 0x0

    .line 2056
    .local v14, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v13, 0x0

    .line 2057
    .local v13, "mConfirmDialogSViewCover":Landroid/app/GlobalActionsSViewCoverDialog;
    const/4 v6, 0x0

    .line 2058
    .local v6, "dialog":Landroid/app/AlertDialog;
    const/4 v15, 0x0

    .line 2059
    .local v15, "positiveButtonStringId":I
    const/4 v2, 0x0

    .line 2060
    .local v2, "abuilder":Landroid/app/AlertDialog$Builder;
    const/4 v12, 0x0

    .line 2061
    .local v12, "isStateOff":Z
    const/4 v8, 0x0

    .line 2062
    .local v8, "isActionAirplaneModeOn":Z
    const/4 v11, 0x0

    .line 2063
    .local v11, "isSetAirplaneOnMessageVZW":Z
    const/4 v10, 0x0

    .line 2064
    .local v10, "isSetAirplaneOnMessageCHINA":Z
    const/4 v9, 0x0

    .line 2065
    .local v9, "isRunnigWithoutConfirmMessage":Z
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 2066
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_116

    .line 2067
    const v15, 0x10407e9

    .line 2068
    const/4 v12, 0x1

    .line 2073
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_11b

    .line 2074
    const/4 v8, 0x1

    .line 2075
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2082
    :goto_32
    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_13e

    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-nez v16, :cond_13e

    .line 2083
    new-instance v16, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_136

    move/from16 v16, p3

    :goto_5d
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_13a

    const v16, 0x1040947

    :goto_7e
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v16

    const v17, 0x1040009

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v13

    .line 2137
    :goto_97
    new-instance v16, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    .line 2139
    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_259

    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-nez v16, :cond_259

    .line 2140
    if-eqz v13, :cond_10b

    .line 2141
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x833

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120013

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-nez v16, :cond_d7

    .line 2145
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 2148
    :cond_d7
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2150
    .local v3, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2151
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2152
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2153
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 2154
    invoke-virtual {v13}, Landroid/app/GlobalActionsSViewCoverDialog;->show()V

    .line 2155
    const-string v16, "GlobalActions$ConfirmDialog"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 2156
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    .line 2198
    .end local v3    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_10b
    :goto_10b
    if-nez v9, :cond_115

    .line 2199
    sget-object v17, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v17

    .line 2200
    const/16 v16, 0x1

    :try_start_112
    sput-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 2201
    monitor-exit v17
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_369

    .line 2203
    :cond_115
    return-void

    .line 2070
    :cond_116
    const v15, 0x10407e8

    goto/16 :goto_21

    .line 2076
    :cond_11b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_12d

    .line 2077
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_32

    .line 2079
    :cond_12d
    const-string v16, "GlobalActions"

    const-string v17, "Cannot find ClickListener."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_136
    move/from16 v16, p4

    .line 2083
    goto/16 :goto_5d

    :cond_13a
    move/from16 v16, v15

    goto/16 :goto_7e

    .line 2092
    :cond_13e
    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_1fc

    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-eqz v16, :cond_1fc

    .line 2093
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10304e7

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2097
    .restart local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    :goto_158
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2098
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v16, v0

    if-nez v16, :cond_16d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_21c

    :cond_16d
    if-eqz v8, :cond_21c

    if-eqz v12, :cond_21c

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 2101
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v16, 0x1090115

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2102
    .local v5, "content":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20b

    .line 2103
    const/4 v11, 0x1

    .line 2104
    const-string v16, "GlobalActions"

    const-string v17, "confirmDialog : set airplane mode on message for VZW"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_19c
    :goto_19c
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2110
    const v16, 0x102047d

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    .line 2111
    const v16, 0x102000b

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneMsg:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2118
    .end local v5    # "content":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :goto_1ce
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    move/from16 v16, v0

    if-eqz v16, :cond_235

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_235

    .line 2119
    const v15, 0x1040947

    .line 2133
    :goto_1e7
    invoke-virtual {v2, v15, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2134
    const v16, 0x1040009

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2135
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_97

    .line 2095
    :cond_1fc
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .end local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v2    # "abuilder":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_158

    .line 2105
    .restart local v5    # "content":Landroid/view/View;
    .restart local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_20b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    move/from16 v16, v0

    if-eqz v16, :cond_19c

    .line 2106
    const/4 v10, 0x1

    .line 2107
    const-string v16, "GlobalActions"

    const-string v17, "confirmDialog : set airplane mode on message for CHINA"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19c

    .line 2115
    .end local v5    # "content":Landroid/view/View;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    :cond_21c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_232

    move/from16 v16, p3

    :goto_22c
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1ce

    :cond_232
    move/from16 v16, p4

    goto :goto_22c

    .line 2121
    :cond_235
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_255

    .line 2122
    const-string v16, "VZW"

    sget-object v17, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_251

    .line 2123
    const v15, 0x104000a

    goto :goto_1e7

    .line 2125
    :cond_251
    const v15, 0x10407e9

    goto :goto_1e7

    .line 2128
    :cond_255
    const v15, 0x10407e8

    goto :goto_1e7

    .line 2159
    :cond_259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2161
    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v16, :cond_346

    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-eqz v16, :cond_346

    .line 2162
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x833

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 2169
    :goto_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1120013

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    if-nez v16, :cond_29b

    .line 2170
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 2172
    :cond_29b
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->checkOnAirplaneConfirmShow()V

    .line 2175
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    move/from16 v16, v0

    if-nez v16, :cond_364

    if-nez v11, :cond_2b1

    if-eqz v10, :cond_364

    .line 2176
    :cond_2b1
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->airplaneModeClickAction(Z)V

    .line 2177
    const/4 v9, 0x1

    .line 2182
    :goto_2bb
    sget-boolean v16, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v16, :cond_340

    .line 2183
    const-string v16, "GlobalActions"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "in confirmDialog action = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " resON = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "resOFF = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " config_sf_slowBlur = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1120013

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " resTitle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mAirplaneModeOn = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mDataModeToggle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    :cond_340
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_10b

    .line 2163
    :cond_346
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    move/from16 v16, v0

    if-eqz v16, :cond_359

    .line 2164
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d9

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_27f

    .line 2166
    :cond_359
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7de

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_27f

    .line 2179
    :cond_364
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2bb

    .line 2201
    :catchall_369
    move-exception v16

    :try_start_36a
    monitor-exit v17
    :try_end_36b
    .catchall {:try_start_36a .. :try_end_36b} :catchall_369

    throw v16
.end method

.method private createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .registers 27

    .prologue
    .line 700
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskOptionShown:Z

    .line 704
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    .line 706
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v4, 0x1080936

    const v5, 0x1080935

    const v6, 0x1040964

    const v7, 0x1040965

    const v8, 0x1040966

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 828
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v4, 0x1080933

    const v5, 0x1080934

    const v6, 0x104011b

    const v7, 0x104011c

    const v8, 0x104011d

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 990
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    .line 993
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v4, 0x108093b

    const v5, 0x108093c

    const v6, 0x1040950

    const v7, 0x104094e

    const v8, 0x104094f

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 1087
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1088
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x1040a59

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1089
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x1040a5a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1091
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 1092
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1093
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1094
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1095
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1121
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1130
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$7;

    const v4, 0x1080425

    const v5, 0x1080424

    const v6, 0x1040a56

    const v7, 0x1040a57

    const v8, 0x1040a58

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 1227
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$99;

    const v3, 0x1080939

    const v4, 0x1040897

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$99;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$Screenshot;

    const v3, 0x1080a20

    const v4, 0x1040b97

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$Screenshot;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshot:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 1269
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 1273
    const/4 v10, 0x1

    .line 1275
    .local v10, "add":Z
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskMenuPosition:I

    .line 1276
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v3, "getSealedState"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b0

    .line 1279
    const/4 v2, 0x4

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$PowerAction;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$PowerAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1281
    const/16 v2, 0x20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1282
    const/16 v2, 0x40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1283
    const/16 v2, 0x80

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1284
    const/16 v2, 0x100

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->getBugReportAction()Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    const/16 v2, 0x200

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshot:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1287
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v3, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_19f

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v2, :cond_19f

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_19f
    const/16 v2, 0x200

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->addDialogItemsIfEnabled(ILcom/android/internal/policy/impl/GlobalActions$Action;Ljava/util/ArrayList;Z)Z

    .line 1294
    const/4 v10, 0x0

    .line 1297
    :cond_1b0
    if-eqz v10, :cond_326

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 1302
    .local v14, "defaultActions":[Ljava/lang/String;
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1304
    .local v11, "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1c8
    array-length v2, v14

    move/from16 v0, v17

    if-ge v0, v2, :cond_305

    .line 1305
    aget-object v9, v14, v17

    .line 1306
    .local v9, "actionKey":Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d8

    .line 1304
    :cond_1d5
    :goto_1d5
    add-int/lit8 v17, v17, 0x1

    goto :goto_1c8

    .line 1310
    :cond_1d8
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_1f4

    .line 1311
    const-string v2, "emergencymode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    const-string v2, "users"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    const-string v2, "settings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d5

    .line 1317
    :cond_1f4
    const-string v2, "power"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$PowerAction;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/internal/policy/impl/GlobalActions$PowerAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    :cond_20b
    :goto_20b
    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1d5

    .line 1319
    :cond_20f
    const-string v2, "airplane"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_223

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20b

    .line 1321
    :cond_223
    const-string v2, "datamode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_237

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20b

    .line 1323
    :cond_237
    const-string v2, "bugreport"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_262

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_20b

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->getBugReportAction()Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20b

    .line 1328
    :cond_262
    const-string v2, "restart"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_276

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20b

    .line 1330
    :cond_276
    const-string v2, "emergencymode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20b

    :cond_28a
    const-string v2, "screenshot"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshot:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20b

    .line 1332
    :cond_29f
    const-string v2, "silent"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ba

    .line 1333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_20b

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20b

    .line 1336
    :cond_2ba
    const-string v2, "users"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d6

    .line 1337
    const-string v2, "fw.power_user_switcher"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_20b

    .line 1340
    :cond_2d6
    const-string v2, "settings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2eb

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSettingsAction()Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20b

    .line 1345
    :cond_2eb
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid global action key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20b

    .line 1350
    .end local v9    # "actionKey":Ljava/lang/String;
    :cond_305
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 1353
    .end local v11    # "addedKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "defaultActions":[Ljava/lang/String;
    .end local v17    # "i":I
    :cond_326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v2, :cond_36d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result v2

    if-eqz v2, :cond_36d

    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->clearCustomDialogItems()Z

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v16

    .line 1356
    .local v16, "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    if-eqz v16, :cond_36d

    .line 1357
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_347
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 1358
    .local v19, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->getIntentAction()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z

    goto :goto_347

    .line 1368
    .end local v16    # "fromDB":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :cond_36d
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 1370
    new-instance v22, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 1372
    .local v22, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_38c

    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-eqz v2, :cond_4a5

    .line 1373
    :cond_38c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1374
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1375
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 1402
    :goto_39f
    new-instance v15, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v22

    invoke-direct {v15, v2, v0, v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .line 1403
    .local v15, "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    const-string v2, "GlobalActions"

    const-string v3, "Create GlobalActionsDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_5b1

    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_5b1

    .line 1406
    const-string v2, "GlobalActions"

    const-string v3, "mIsCoverOpen  is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 1408
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1410
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 1412
    .local v20, "lf":Landroid/view/LayoutInflater;
    const/16 v24, 0x0

    .line 1413
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_4ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4ce

    .line 1414
    const v2, 0x109006a

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 1415
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v15, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1477
    :goto_411
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->isMiniCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_5aa

    .line 1478
    new-instance v25, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1479
    .local v25, "vglp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    .end local v20    # "lf":Landroid/view/LayoutInflater;
    .end local v24    # "v":Landroid/view/View;
    .end local v25    # "vglp":Landroid/view/ViewGroup$LayoutParams;
    :goto_427
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 1492
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v2, :cond_433

    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-eqz v2, :cond_4a4

    .line 1493
    :cond_433
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1494
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050176

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1496
    .local v12, "bottomPadding":I
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v12}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1497
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1508
    invoke-virtual {v15}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1509
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1514
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v3, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;->isIntEDM(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4a4

    .line 1515
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v15, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1536
    .end local v12    # "bottomPadding":I
    :cond_4a4
    return-object v15

    .line 1377
    .end local v15    # "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    :cond_4a5
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 1378
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1379
    .local v21, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_39f

    .line 1426
    .end local v21    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15    # "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .restart local v20    # "lf":Landroid/view/LayoutInflater;
    .restart local v24    # "v":Landroid/view/View;
    :cond_4ce
    const v2, 0x109006b

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 1427
    const-string v2, "americano"

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4ec

    const-string v2, "mocha"

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_589

    .line 1428
    :cond_4ec
    const v2, 0x102035a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1433
    .local v13, "crossBtn":Landroid/view/View;
    :goto_4f5
    invoke-virtual {v13}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_508

    .line 1434
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1435
    invoke-virtual {v13}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    const/16 v3, 0x5153

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1439
    :cond_508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1440
    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1455
    const v2, 0x102032a

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 1456
    const v2, 0x1020375

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    sput-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 1457
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1458
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_552

    .line 1459
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1461
    :cond_552
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1469
    const v2, 0x1020016

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1470
    .local v23, "titleView":Landroid/widget/TextView;
    const-string v2, "VZW"

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_594

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10400fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_411

    .line 1430
    .end local v13    # "crossBtn":Landroid/view/View;
    .end local v23    # "titleView":Landroid/widget/TextView;
    :cond_589
    const v2, 0x1020056

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .restart local v13    # "crossBtn":Landroid/view/View;
    goto/16 :goto_4f5

    .line 1473
    .restart local v23    # "titleView":Landroid/widget/TextView;
    :cond_594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_411

    .line 1481
    .end local v13    # "crossBtn":Landroid/view/View;
    .end local v23    # "titleView":Landroid/widget/TextView;
    :cond_5aa
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_427

    .line 1485
    .end local v20    # "lf":Landroid/view/LayoutInflater;
    .end local v24    # "v":Landroid/view/View;
    :cond_5b1
    const v2, 0x1040110

    invoke-virtual {v15, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_427
.end method

.method private getBugReportAction()Lcom/android/internal/policy/impl/GlobalActions$Action;
    .registers 4

    .prologue
    .line 1725
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$15;

    const v1, 0x108041a

    const v2, 0x1040115

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    return-object v0
.end method

.method private getCurrentNW()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3554
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .prologue
    .line 1858
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1860
    :goto_8
    return-object v1

    .line 1859
    :catch_9
    move-exception v0

    .line 1860
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private getLockdownAction()Lcom/android/internal/policy/impl/GlobalActions$Action;
    .registers 4

    .prologue
    .line 1826
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$17;

    const v1, 0x108002f

    const v2, 0x104011f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$17;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    return-object v0
.end method

.method private getPhoneId(I)I
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 3718
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 3721
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3722
    const/4 v0, 0x0

    .line 3724
    .end local v0    # "phoneId":I
    :cond_b
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .registers 4
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 3731
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$30;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$30;-><init>(Lcom/android/internal/policy/impl/GlobalActions;I)V

    .line 3780
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getSCoverState()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 611
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_39

    .line 612
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSviewCoverAppLevel()V

    .line 613
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_31

    .line 614
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCoverManager.getCoverState() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 622
    :goto_30
    return v0

    .line 617
    :cond_31
    const-string v1, "GlobalActions"

    const-string v2, "state is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 621
    :cond_39
    const-string v1, "GlobalActions"

    const-string v2, "mCoverManager is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private getSettingsAction()Lcom/android/internal/policy/impl/GlobalActions$Action;
    .registers 4

    .prologue
    .line 1794
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$16;

    const v1, 0x10804e3

    const v2, 0x104011e

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$16;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    return-object v0
.end method

.method private getSviewCoverAppLevel()V
    .registers 5

    .prologue
    .line 626
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 627
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_2a

    .line 628
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverAppLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverAppLevel:I

    .line 631
    :cond_2a
    return-void
.end method

.method private handleShow()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->awakenIfNecessary()V

    .line 461
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSCoverState()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_12
    move v1, v3

    :goto_13
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    .line 462
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isClearCover()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    .line 463
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_5d

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_5d

    .line 465
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_39

    .line 466
    const-string v1, "GlobalActions"

    const-string v2, "Device is not supported in Global Actions in main view, show panel in cocktail bar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->notifyCocktailBarGlobalActions()V

    .line 581
    :goto_36
    return-void

    :cond_37
    move v1, v2

    .line 461
    goto :goto_13

    .line 474
    :cond_39
    const-string v1, "americano"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "double"

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions;->mScafeShot:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 475
    :cond_4d
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-nez v1, :cond_5d

    .line 476
    sget v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverAppLevel:I

    if-ge v1, v6, :cond_5d

    .line 478
    const-string v1, "GlobalActions"

    const-string v2, "handleShow() : Device is in SView Cover mode hence GlobalAction dialog will not display "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 488
    :cond_5d
    const-string v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v4, "getPowerMenuLockedState"

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v1, :cond_7b

    .line 490
    const-string v1, "GlobalActions"

    const-string v2, "Knox Customization: GlobalActions dialog will not display when keyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 496
    :cond_7b
    const-string v1, "GlobalActions"

    const-string v4, "handleShow() : Call createDialog()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 498
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    .line 501
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_b3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/policy/impl/GlobalActions$LongPressAction;

    if-nez v1, :cond_b3

    .line 504
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->onPress()V

    goto :goto_36

    .line 507
    :cond_b3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_1b0

    .line 508
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 513
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1040110

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 516
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050178

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverWidth:I

    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050179

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverHeight:I

    .line 518
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050177

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mClearCoverWidth:I

    .line 519
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050011

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mStatusHeight:I

    .line 521
    const-string v1, "GlobalActions"

    const-string v4, "handleShow() : call mDialog.show()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->show()V

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 525
    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    .line 526
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_151

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_151

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_151

    .line 528
    sput-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z

    .line 529
    const-string v1, "GlobalActions"

    const-string v2, "handleShow(), mini dialog showed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_151
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShow() : mIsCoverOpen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_197

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-nez v1, :cond_197

    .line 565
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 566
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverWidth:I

    sget v3, Lcom/android/internal/policy/impl/GlobalActions;->mSViewCoverHeight:I

    sget v4, Lcom/android/internal/policy/impl/GlobalActions;->mStatusHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 570
    :cond_197
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_1ab

    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-eqz v1, :cond_1ab

    .line 571
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/android/internal/policy/impl/GlobalActions;->mClearCoverWidth:I

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 574
    :cond_1ab
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground()V

    goto/16 :goto_36

    .line 577
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1b0
    const-string v1, "GlobalActions"

    const-string v2, "Can not show dialog as it is not well formed properly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_36
.end method

.method private hideQuickpanelBackground()V
    .registers 2

    .prologue
    .line 3489
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 3490
    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .registers 6
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 3493
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_9

    .line 3497
    :cond_8
    :goto_8
    return-void

    .line 3494
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3495
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3496
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 658
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 659
    const-string v0, "GlobalActions"

    const-string v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_28

    .line 662
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 663
    const-string v0, "GlobalActions"

    const-string v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_28
    return-void
.end method

.method private isCHINA()Z
    .registers 4

    .prologue
    .line 3636
    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 3639
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string v1, "CMCC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 3641
    :cond_20
    const/4 v1, 0x1

    .line 3643
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private isClearCover()Z
    .registers 3

    .prologue
    .line 3660
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    .line 3661
    const/4 v0, 0x1

    .line 3663
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    .prologue
    .line 1865
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1866
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isDataCapable(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3689
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3690
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;
    .param p3, "Arg"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3584
    const-string v7, ""

    .line 3585
    .local v7, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3586
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3587
    .local v6, "cr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    .line 3588
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v3, "temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3589
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3596
    :cond_24
    :goto_24
    if-eqz v6, :cond_34

    .line 3598
    :try_start_26
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3599
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_43

    move-result-object v7

    .line 3601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3604
    :cond_34
    return-object v7

    .line 3591
    :cond_35
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_24

    .line 3601
    :catchall_43
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isGlobalActionConfirming()Z
    .registers 3

    .prologue
    .line 3180
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 3181
    :try_start_3
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 3182
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isIntEDM(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "ProviderURI"    # Ljava/lang/String;
    .param p2, "queryValue"    # Ljava/lang/String;

    .prologue
    .line 3608
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3609
    const/4 v0, -0x1

    .line 3611
    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_f
.end method

.method private isKOREA()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3648
    const-string v1, "korea"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3655
    :cond_f
    :goto_f
    return v0

    .line 3650
    :cond_10
    const-string v1, "SKT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "KTT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "LGT"

    const-string v2, "TMO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3655
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isMSim()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3820
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isMiniCoverClosed()Z
    .registers 3

    .prologue
    .line 3668
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3670
    const/4 v0, 0x1

    .line 3672
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isMobileKeyboard()Z
    .registers 3

    .prologue
    .line 3677
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a

    .line 3678
    :cond_18
    const/4 v0, 0x1

    .line 3680
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isSimCardInserted(I)Z
    .registers 10
    .param p1, "slotidx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3824
    const-string v6, "ril.MSIMM"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3825
    .local v3, "simMode":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 3826
    if-nez p1, :cond_13

    .line 3853
    :cond_12
    :goto_12
    return v5

    :cond_13
    move v5, v4

    .line 3829
    goto :goto_12

    .line 3833
    :cond_15
    const-string v6, "ril.ICC_TYPE"

    const-string v7, "0,0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3834
    .local v1, "iccTemp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3835
    .local v0, "iccStatusSlot":[Ljava/lang/String;
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    .line 3841
    const/4 v2, 0x0

    .line 3842
    .local v2, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_46

    .line 3850
    :goto_2b
    if-eqz v2, :cond_12

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 3853
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_43

    :goto_3b
    move v5, v4

    goto :goto_12

    .line 3844
    :pswitch_3d
    aget-object v2, v0, v5

    .line 3845
    goto :goto_2b

    .line 3847
    :pswitch_40
    aget-object v2, v0, v4

    goto :goto_2b

    :cond_43
    move v4, v5

    .line 3853
    goto :goto_3b

    .line 3842
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method

.method private isSimReady()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 3194
    .local v0, "SimState":I
    const-string v7, "ro.config.donot_nosim"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3202
    .local v4, "lSimValue":Z
    if-eqz v0, :cond_14

    if-ne v0, v6, :cond_5f

    :cond_14
    move v3, v6

    .line 3206
    .local v3, "finalSimState":Z
    :goto_15
    if-nez v4, :cond_6e

    if-eqz v3, :cond_6e

    .line 3208
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3209
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x104095b

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3210
    const v7, 0x104095c

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3211
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3212
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3214
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3215
    .local v1, "alert":Landroid/app/AlertDialog;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v7, :cond_61

    .line 3216
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 3221
    :goto_47
    new-instance v7, Lcom/android/internal/policy/impl/GlobalActions$29;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/GlobalActions$29;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3230
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3231
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3233
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 3234
    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 3235
    const/4 v7, 0x1

    :try_start_5b
    sput-boolean v7, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 3236
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_6b

    .line 3239
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_5e
    return v5

    .end local v3    # "finalSimState":Z
    :cond_5f
    move v3, v5

    .line 3202
    goto :goto_15

    .line 3218
    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "finalSimState":Z
    :cond_61
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7de

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_47

    .line 3236
    :catchall_6b
    move-exception v5

    :try_start_6c
    monitor-exit v6
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v5

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_6e
    move v5, v6

    .line 3239
    goto :goto_5e
.end method

.method private isSupportVoLte()Z
    .registers 3

    .prologue
    .line 3632
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isTSafeLock()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3694
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v3, :cond_7

    .line 3698
    :cond_6
    :goto_6
    return v2

    .line 3695
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions;->hasTSafeLock()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3697
    const-string v0, "off_menu_setting"

    .line 3698
    .local v0, "OFF_MENU_SETTING":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "off_menu_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1f

    :goto_1d
    move v2, v1

    goto :goto_6

    :cond_1f
    move v1, v2

    goto :goto_1d
.end method

.method private isUSA()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 3616
    const-string v2, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 3618
    .local v0, "SALES_CODE":Ljava/lang/String;
    const-string v2, "usa"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3627
    :cond_1f
    :goto_1f
    return v1

    .line 3620
    :cond_20
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "SPT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "CSP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3627
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private isVoiceCapable()Z
    .registers 4

    .prologue
    .line 3684
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3685
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    return v1
.end method

.method private notifyCocktailBarGlobalActions()V
    .registers 5

    .prologue
    .line 672
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .line 673
    .local v1, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_1d

    .line 674
    const-string v2, "GlobalActions"

    const-string v3, "notifyCocktailBarGlobalActions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 677
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "show_global_actions"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    invoke-virtual {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 680
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1d
    return-void
.end method

.method private onAirplaneModeChanged()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3120
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_7

    .line 3128
    :goto_6
    return-void

    .line 3122
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_23

    .line 3126
    .local v0, "airplaneModeOn":Z
    :goto_15
    if-eqz v0, :cond_25

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_19
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 3127
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_6

    .end local v0    # "airplaneModeOn":Z
    :cond_23
    move v0, v1

    .line 3122
    goto :goto_15

    .line 3126
    .restart local v0    # "airplaneModeOn":Z
    :cond_25
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_19
.end method

.method private prepareDialog()V
    .registers 6

    .prologue
    .line 1937
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 1941
    .local v0, "dataModeOn":Z
    if-eqz v0, :cond_e4

    .line 1942
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1947
    :goto_c
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1948
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1951
    :cond_1e
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1955
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1959
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v2, :cond_49

    .line 1960
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v3, "getSealedState"

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mTempStringArray:[Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 1961
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1970
    :cond_49
    :goto_49
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f3

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_53
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1971
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1974
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1980
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareDialog : mIsCoverOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v2, :cond_92

    .line 1982
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v2, :cond_103

    .line 1983
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_f7

    .line 1984
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2002
    :cond_92
    :goto_92
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v2, :cond_a4

    .line 2003
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2004
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2008
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_a4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2009
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2010
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2011
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2013
    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2014
    const-string v2, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2015
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2017
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 2018
    const-string v2, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2020
    :cond_dc
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2021
    return-void

    .line 1944
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_e4
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto/16 :goto_c

    .line 1963
    :cond_ea
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mProKioskToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto/16 :goto_49

    .line 1970
    :cond_f3
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto/16 :goto_53

    .line 1986
    :cond_f7
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_92

    .line 1989
    :cond_103
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x833

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1991
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_12c

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_12c

    .line 1992
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_92

    .line 1993
    :cond_12c
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z

    if-nez v2, :cond_92

    .line 1994
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106015d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto/16 :goto_92
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3784
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 3785
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I

    .line 3786
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener: sim# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 3788
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimServiceState:[I

    .line 3789
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3d
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I

    if-ge v0, v3, :cond_a6

    .line 3790
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 3792
    .local v2, "subIdtemp":[I
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerPhoneStateListener subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    if-eqz v2, :cond_7d

    .line 3794
    aget v1, v2, v6

    .line 3795
    .local v1, "subId":I
    if-lez v1, :cond_80

    .line 3796
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 3797
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3806
    :goto_79
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimServiceState:[I

    aput v6, v3, v0

    .line 3789
    .end local v1    # "subId":I
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 3799
    .restart local v1    # "subId":I
    :cond_80
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlobalActions;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_a0

    if-nez v0, :cond_a0

    .line 3800
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v4

    aput-object v4, v3, v0

    .line 3801
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_79

    .line 3803
    :cond_a0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_79

    .line 3809
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_a6
    return-void
.end method

.method private restoreQuickpanelBackground()V
    .registers 2

    .prologue
    .line 3511
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    .line 3512
    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .registers 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3515
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 3522
    :cond_9
    :goto_9
    return-void

    .line 3516
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3517
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3518
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3519
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3520
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3521
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private unregisterPhoneStateListener()V
    .registers 5

    .prologue
    .line 3812
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I

    if-ge v0, v1, :cond_18

    .line 3813
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 3814
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3812
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3817
    :cond_18
    return-void
.end method

.method private virtualDismissInSCover()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3524
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 3541
    :cond_9
    :goto_9
    return-void

    .line 3525
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3526
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3527
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3528
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3529
    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3530
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3531
    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3533
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 3534
    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3536
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 3537
    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3539
    :cond_5e
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3540
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .registers 7
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3543
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 3551
    :cond_9
    :goto_9
    return-void

    .line 3544
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3545
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3546
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3547
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3548
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3549
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3550
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9
.end method


# virtual methods
.method public airplaneModeClickAction(Z)V
    .registers 7
    .param p1, "isShowingConfirmMessage"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2207
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onPressAction()V

    .line 2208
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v0, :cond_1f

    .line 2209
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    if-nez v0, :cond_78

    .line 2210
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 2211
    const/4 v0, 0x0

    :try_start_12
    sput-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 2212
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_75

    .line 2216
    :goto_15
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V

    .line 2217
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2220
    :cond_1f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v0, :cond_52

    .line 2221
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_7b

    .line 2222
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2224
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 2225
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on_reason_usb3"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2226
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_52

    .line 2227
    const-string v0, "GlobalActions"

    const-string v1, "USB 3.0 is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_52
    :goto_52
    if-eqz p1, :cond_74

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z

    if-nez v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z

    if-eqz v0, :cond_74

    .line 2236
    :cond_5c
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2237
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tw_globalactions_dont_show_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2240
    :cond_74
    return-void

    .line 2212
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0

    .line 2214
    :cond_78
    sput-boolean v4, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_15

    .line 2230
    :cond_7b
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_52

    .line 2231
    const-string v0, "GlobalActions"

    const-string v1, "USB manager is not created hence USB 3.0 connection can not be terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public checkOnAirplaneConfirmShow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    const-string v0, "GlobalActions"

    const-string v1, "checkOnAirplaneConfirmShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tw_globalactions_dont_show_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_34

    .line 376
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    .line 380
    :goto_19
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOnAirplaneConfirmShow : mShowOnAirplaneConfirm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 378
    :cond_34
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowOnAirplaneConfirm:Z

    goto :goto_19
.end method

.method public hasTSafeLock()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 3702
    const/4 v3, 0x0

    .line 3703
    .local v3, "result":Z
    const-string v0, "com.skt.t_smart_charge"

    .line 3705
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3706
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_16

    .line 3707
    const-string v6, "com.skt.t_smart_charge"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_1a

    move-result-object v4

    .line 3708
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_18

    const/4 v3, 0x1

    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_16
    :goto_16
    move v5, v3

    .line 3713
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_17
    return v5

    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_18
    move v3, v5

    .line 3708
    goto :goto_16

    .line 3710
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_1a
    move-exception v1

    .line 3711
    .local v1, "ex":Ljava/lang/Exception;
    goto :goto_17
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 3559
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SURVEY_LOG:Z

    if-eqz v2, :cond_57

    .line 3560
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3561
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3562
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3567
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3568
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3569
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3570
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3571
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_57

    .line 3572
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insetLog feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_57
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    if-nez v0, :cond_d

    .line 2292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2294
    :cond_d
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 2296
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 2255
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_c

    .line 2257
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_27

    .line 2264
    :cond_c
    :goto_c
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    if-nez v1, :cond_17

    .line 2266
    :try_start_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_17} :catch_2e

    .line 2273
    :cond_17
    :goto_17
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_26

    .line 2274
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_38

    .line 2275
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 2276
    const/4 v1, 0x0

    :try_start_23
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 2277
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_35

    .line 2282
    :cond_26
    :goto_26
    return-void

    .line 2258
    :catch_27
    move-exception v0

    .line 2260
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 2267
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_2e
    move-exception v0

    .line 2269
    .restart local v0    # "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 2277
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1

    .line 2279
    :cond_38
    sput-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_26
.end method

.method public showDialog(ZZ)V
    .registers 10
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v4, 0x0

    .line 388
    const-string v3, "com.android.service.GlobalAction"

    const-string v5, "0001"

    const-string v6, "null"

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/policy/impl/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 396
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isGlobalActionConfirming()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 444
    :goto_18
    return-void

    .line 402
    :cond_19
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 403
    .local v0, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isModifying()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 404
    const-string v3, "GlobalActions"

    const-string v4, "Cannot use Global Action. because Emergency mode Entering.."

    invoke-static {v3, v4}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 409
    :cond_2d
    sput-boolean v4, Lcom/android/internal/policy/impl/GlobalActions;->mIsAirplaneConfirmDialogExist:Z

    .line 410
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 411
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_ab

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_ab

    const/4 v3, 0x1

    :goto_4c
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsSecureKeyguard:Z

    .line 413
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 415
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-nez v3, :cond_95

    .line 417
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 418
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_95

    const-string v3, "2.0"

    const-string v5, "version"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 419
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 420
    .local v1, "pm":Landroid/os/PersonaManager;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v5

    or-int/2addr v3, v5

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 421
    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Oring mKeyguardShowing and pm.getKeyguardShowState()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v1    # "pm":Landroid/os/PersonaManager;
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    :cond_95
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 428
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_ad

    .line 429
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 430
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 432
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_18

    :cond_ab
    move v3, v4

    .line 411
    goto :goto_4c

    .line 436
    :cond_ad
    const-string v3, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDialog() : mIsFirstCreated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/internal/policy/impl/GlobalActions;->mIsFirstCreated:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->mIsFirstCreated:Z

    if-eqz v3, :cond_d7

    .line 438
    const-string v3, "GlobalActions"

    const-string v5, "showDialog() : call checkAirplaneModeOnOff"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->checkAirplaneModeOnOff()V

    .line 440
    sput-boolean v4, Lcom/android/internal/policy/impl/GlobalActions;->mIsFirstCreated:Z

    .line 442
    :cond_d7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto/16 :goto_18
.end method

.method public showErrorMessage(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 3578
    if-eqz p1, :cond_c

    .line 3579
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3581
    :cond_c
    return-void
.end method
