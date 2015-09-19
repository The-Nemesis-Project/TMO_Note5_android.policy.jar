.class public Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;
.super Ljava/lang/Object;
.source "SamsungPolicyProperties.java"


# static fields
.field public static final DUAL_LCD:I = 0x2

.field public static final NOT_FOLDER:I = 0x0

.field public static final SINGLE_LCD:I = 0x1

.field private static mEasyOneHandEnabled:Z

.field private static mEasyOneHandPkgVersion:I

.field private static mEasyOneHandRunning:Z

.field private static mFolderTypeFeature:I

.field private static mFolderTypeFeatureChecked:Z

.field private static mHasNumericKeyboard:Z

.field private static mHasNumericKeyboardChecked:Z

.field private static mHasQwertyKeyboard:Z

.field private static mHasQwertyKeyboardChecked:Z

.field private static mHasSPenFeature:Z

.field private static mHasSPenFeatureChecked:Z

.field private static mHasSideKeyPanelFeature:Z

.field private static mHasSideKeyPanelFeatureChecked:Z

.field private static mScreenShotChordEnableChecked:Z

.field private static mScreenShotChordEnabled:Z

.field private static mUseVibetonz:Z

.field private static mUserVibetonzChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 38
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 40
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseVibetonz:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUserVibetonzChecked:Z

    .line 43
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 44
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 46
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 49
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 52
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    .line 53
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandPkgVersion:I

    .line 56
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeature:Z

    .line 57
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeatureChecked:Z

    .line 59
    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mFolderTypeFeature:I

    .line 60
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mFolderTypeFeatureChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FolderTypeFeature(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 274
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mFolderTypeFeatureChecked:Z

    if-nez v0, :cond_22

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 277
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mFolderTypeFeature:I

    .line 285
    :goto_20
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mFolderTypeFeatureChecked:Z

    .line 287
    :cond_22
    sget v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mFolderTypeFeature:I

    return v0

    .line 280
    :cond_25
    sput v2, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mFolderTypeFeature:I

    goto :goto_20

    .line 283
    :cond_28
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mFolderTypeFeature:I

    goto :goto_20
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isCameraSpecialized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 293
    const-string v0, " isUseVibetonz="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 294
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasSPenFeature="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 295
    const-string v0, " hasHardMenuBackKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 296
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasQwertyKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 297
    const-string v0, " hasNumericKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 298
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isScreenShotChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 299
    const-string v0, " isOneTouchReportChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 300
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isSupportDMBAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 301
    const-string v0, " isMultiSIMDevice="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 302
    return-void
.end method

.method public static getEasyOneHandPkgVersion(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandPkgVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    if-eqz p0, :cond_16

    .line 253
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.easyonehand"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 254
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandPkgVersion:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_19

    .line 258
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_16
    :goto_16
    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandPkgVersion:I

    return v1

    .line 255
    :catch_19
    move-exception v1

    goto :goto_16
.end method

.method public static hasHardMenuBackKey()Z
    .registers 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNumericKeyboard(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 100
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    if-nez v0, :cond_17

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 103
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 105
    :cond_17
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    return v0

    .line 101
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static hasQwertyKeyboard(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 91
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    if-nez v0, :cond_17

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 94
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 96
    :cond_17
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    return v0

    .line 92
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    if-nez v0, :cond_13

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 79
    :cond_13
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    return v0
.end method

.method public static hasSideKeyPanelFeature(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeatureChecked:Z

    if-nez v0, :cond_13

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeature:Z

    .line 266
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeatureChecked:Z

    .line 268
    :cond_13
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSideKeyPanelFeature:Z

    return v0
.end method

.method public static isBlockKey(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 133
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "LUO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 135
    :cond_1f
    const-string v2, "true"

    const-string v3, "ril.domesticOtaStart"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "18"

    const-string v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 146
    :cond_3b
    :goto_3b
    return v1

    .line 140
    :cond_3c
    const-string v2, "lock"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "missing_phone_lock"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 146
    :cond_4e
    const/4 v1, 0x0

    goto :goto_3b
.end method

.method public static isCameraKeyWakeKey(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 165
    :cond_c
    const/4 v0, 0x1

    .line 167
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isCameraSpecialized()Z
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public static isDomesticOtaStart()Z
    .registers 2

    .prologue
    .line 150
    const-string v0, "true"

    const-string v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isEasyOneHandEnabled()Z
    .registers 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    return v0
.end method

.method public static isEasyOneHandRunning()Z
    .registers 1

    .prologue
    .line 247
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    return v0
.end method

.method public static isMirrorLessCameraSpecialized()Z
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .registers 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneTouchReportChordEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPowerSavingMode()Z
    .registers 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenShotChordEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    if-nez v1, :cond_14

    .line 111
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_11} :catch_17

    .line 117
    :goto_11
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 119
    :cond_14
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    return v1

    .line 113
    :catch_17
    move-exception v0

    .line 115
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    goto :goto_11
.end method

.method public static isSktTphoneEnabled()Z
    .registers 3

    .prologue
    .line 157
    const-string v0, "tphone"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isSupportCameraQuickShot()Z
    .registers 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDMBAntennaDetach()Z
    .registers 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportEasyOneHand()Z
    .registers 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFingerPrint()Z
    .registers 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public static isUseVibetonz()Z
    .registers 2

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUserVibetonzChecked:Z

    if-nez v0, :cond_13

    .line 84
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseVibetonz:Z

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUserVibetonzChecked:Z

    .line 87
    :cond_13
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mUseVibetonz:Z

    return v0
.end method

.method public static isVzwSetupRunning()Z
    .registers 4

    .prologue
    .line 175
    const-string v1, "VZW"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ConfigOpSetupWizard"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 176
    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "vzwSetupRunning":Ljava/lang/String;
    if-eqz v0, :cond_24

    const-string v1, "FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 178
    const/4 v1, 0x1

    .line 181
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public static isVzwSetupWizardRunning(Z)Z
    .registers 5
    .param p0, "isDeviceProvisioned"    # Z

    .prologue
    .line 185
    const-string v1, "VZW"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_ConfigOpSetupWizard"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 186
    const-string v1, "persist.sys.vzw_setup_running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "vzwSetupRunning":Ljava/lang/String;
    if-nez p0, :cond_26

    if-eqz v0, :cond_26

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 189
    const/4 v1, 0x1

    .line 192
    .end local v0    # "vzwSetupRunning":Ljava/lang/String;
    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public static setEasyOneHandEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .prologue
    .line 239
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    .line 240
    return-void
.end method

.method public static setEasyOneHandRunning(Z)V
    .registers 1
    .param p0, "running"    # Z

    .prologue
    .line 243
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    .line 244
    return-void
.end method
