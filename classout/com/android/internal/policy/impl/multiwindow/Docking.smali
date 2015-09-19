.class public Lcom/android/internal/policy/impl/multiwindow/Docking;
.super Ljava/lang/Object;
.source "Docking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    }
.end annotation


# static fields
.field private static final DOCKING_AREA_RATIO:F = 0.04f

.field private static final DOCKING_CANCEL_TIMER_TIME:I = 0x2bc

.field private static final DOWN_SIDE_DOCKING_AREA_RATIO:F = 0.07f

.field private static final MESSAGE_DOCKING_CANCEL:I = 0x65


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mCurScreenHeight:I

.field private mCurScreenWidth:I

.field private mDockingBounds:Landroid/graphics/Rect;

.field private mDockingCanceled:Z

.field private mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

.field private mDockingMargin:I

.field private mDockingX:I

.field private mDockingY:I

.field private mDockingZone:I

.field mHandler:Landroid/os/Handler;

.field private mInitCenterBarPoint:Z

.field private mIsSupportSplit:Z

.field private mIsSupportSplitDocking:Z

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "facade"    # Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    .line 36
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mIsSupportSplitDocking:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mIsSupportSplit:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 295
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/Docking$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/Docking;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    .line 56
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mIsSupportSplitDocking:Z

    .line 60
    :cond_2b
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingMargin:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/Docking;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/multiwindow/Docking;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/Docking;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/multiwindow/Docking;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/Docking;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingX:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/multiwindow/Docking;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/Docking;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingY:I

    return p1
.end method

.method private checkStyleTransitionEnable()Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 322
    :try_start_2
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    .line 324
    .local v1, "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 325
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_39

    .line 326
    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0xc0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 330
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_39

    .line 331
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_3a

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 333
    .local v2, "applicationMetaData":Landroid/os/Bundle;
    :goto_24
    const/4 v5, 0x0

    .line 334
    .local v5, "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_31

    .line 335
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.sec.android.multiwindow.activity.STYLE"

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 339
    :cond_31
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 368
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    :goto_39
    return v6

    .line 331
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_3a
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_24

    .line 342
    .restart local v2    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3d
    if-eqz v5, :cond_4f

    const-string v8, "fullscreenOnly"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    const-string v8, "isolatedSplit"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    .line 346
    :cond_4f
    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_39

    .line 348
    if-eqz v2, :cond_69

    const-string v8, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_67

    const-string v8, "com.sec.android.support.multiwindow"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    :cond_67
    move v6, v7

    .line 352
    goto :goto_39

    .line 353
    :cond_69
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 355
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_81

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7e} :catch_83

    move-result v8

    if-eqz v8, :cond_39

    :cond_81
    move v6, v7

    .line 361
    goto :goto_39

    .line 365
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_83
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public static getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 5
    .param p0, "zone"    # I
    .param p1, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 66
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 67
    const/16 v1, 0xf

    if-ne p0, v1, :cond_17

    .line 68
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 72
    :goto_11
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 73
    return-object v0

    .line 70
    :cond_17
    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_11
.end method

.method private getDisplaySize(Landroid/graphics/Point;Z)Z
    .registers 8
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 82
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_2d

    .line 83
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 88
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz p2, :cond_2c

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_2c

    .line 90
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 91
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_2c

    .line 92
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 93
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 97
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2c
    :goto_2c
    return v2

    :cond_2d
    move v2, v3

    .line 85
    goto :goto_2c
.end method

.method private isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 3
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 312
    if-eqz p1, :cond_19

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 315
    :cond_19
    const/4 v0, 0x1

    .line 317
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .param p1, "activityMetaData"    # Landroid/os/Bundle;
    .param p2, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    :cond_1a
    return-object v0
.end method


# virtual methods
.method public checkCenterBarPoint()V
    .registers 5

    .prologue
    .line 135
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    if-eqz v2, :cond_28

    .line 136
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 137
    .local v0, "point":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    .end local v0    # "point":Landroid/graphics/Point;
    .end local v1    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method public checkDockingWindow(II)I
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const v8, 0x3f4ccccd

    const v7, 0x3e4ccccd

    const v4, 0x3d23d70a

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 203
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mIsSupportSplitDocking:Z

    if-nez v2, :cond_11

    move v0, v1

    .line 292
    :cond_10
    :goto_10
    :pswitch_10
    return v0

    .line 207
    :cond_11
    const/4 v0, 0x0

    .line 208
    .local v0, "dockingZone":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v2, :cond_10

    .line 212
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    if-ge v2, v3, :cond_d0

    .line 213
    int-to-float v2, p2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8b

    .line 214
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-gtz v2, :cond_7d

    .line 215
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 221
    :goto_38
    const/4 v0, 0x3

    .line 232
    :cond_39
    :goto_39
    if-eqz v0, :cond_6a

    .line 233
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v2, v2, v7

    if-lez v2, :cond_59

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_6a

    .line 235
    :cond_59
    const/4 v2, 0x3

    if-ne v0, v2, :cond_c1

    .line 236
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 237
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 242
    :goto_68
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 281
    :cond_6a
    :goto_6a
    packed-switch v0, :pswitch_data_174

    .line 286
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mIsSupportSplit:Z

    if-nez v2, :cond_10

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    const/16 v0, 0xf

    goto :goto_10

    .line 218
    :cond_7d
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_38

    .line 222
    :cond_8b
    int-to-float v2, p2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v3, v3

    const v4, 0x3f6e147b

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_39

    .line 223
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    if-lt v2, v3, :cond_b1

    .line 224
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 230
    :goto_ae
    const/16 v0, 0xc

    goto :goto_39

    .line 227
    :cond_b1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_ae

    .line 239
    :cond_c1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 240
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_68

    .line 246
    :cond_d0
    int-to-float v2, p1

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12e

    .line 247
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-gtz v2, :cond_120

    .line 248
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 249
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 254
    :goto_ec
    const/4 v0, 0x3

    .line 266
    :cond_ed
    :goto_ed
    if-eqz v0, :cond_6a

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v2, v2, v7

    if-lez v2, :cond_10d

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v8

    if-ltz v2, :cond_6a

    .line 269
    :cond_10d
    const/4 v2, 0x3

    if-ne v0, v2, :cond_164

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 276
    :goto_11c
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto/16 :goto_6a

    .line 251
    :cond_120
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_ec

    .line 255
    :cond_12e
    int-to-float v2, p1

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v3, v3

    const v4, 0x3f75c28f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_ed

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    if-lt v2, v3, :cond_154

    .line 258
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 264
    :goto_151
    const/16 v0, 0xc

    goto :goto_ed

    .line 261
    :cond_154
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_151

    .line 273
    :cond_164
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_11c

    .line 281
    nop

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public clear()V
    .registers 4

    .prologue
    const/16 v2, 0x65

    const/4 v1, 0x0

    .line 126
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 128
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    :cond_19
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getZone()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    return v0
.end method

.method public init()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 100
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mIsSupportSplitDocking:Z

    if-nez v2, :cond_7

    .line 123
    :goto_6
    return-void

    .line 103
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkStyleTransitionEnable()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 104
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 106
    .local v1, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v2

    if-nez v2, :cond_3c

    move v2, v3

    :goto_1a
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mIsSupportSplit:Z

    .line 107
    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 109
    .end local v1    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1e
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 112
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 113
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    .line 114
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    .line 120
    :goto_31
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 122
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    goto :goto_6

    .end local v0    # "displaySize":Landroid/graphics/Point;
    .restart local v1    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3c
    move v2, v4

    .line 106
    goto :goto_1a

    .line 116
    .end local v1    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v0    # "displaySize":Landroid/graphics/Point;
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    .line 117
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    goto :goto_31
.end method

.method public isDocking()Z
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDockingCanceled()Z
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    return v0
.end method

.method public setOnDockingListener(Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;)V
    .registers 2
    .param p1, "l"    # Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    .line 78
    return-void
.end method

.method public updateZone(II)Z
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x2bc

    const/4 v6, 0x0

    const/16 v5, 0x65

    .line 146
    :try_start_7
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mIsSupportSplitDocking:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_145

    if-nez v3, :cond_35

    .line 172
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_1d

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    :cond_1c
    :goto_1c
    return v1

    .line 176
    :cond_1d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_1c

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1c

    .line 150
    :cond_35
    :try_start_35
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 151
    .local v0, "lastZone":I
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkDockingWindow(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    .line 152
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v3, :cond_72

    .line 153
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-eqz v2, :cond_48

    .line 154
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_145

    .line 172
    :cond_48
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_5a

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1c

    .line 176
    :cond_5a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_1c

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1c

    .line 158
    :cond_72
    :try_start_72
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-eqz v3, :cond_e9

    .line 159
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingX:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingMargin:I

    if-gt v3, v4, :cond_8e

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingMargin:I

    if-le v3, v4, :cond_bd

    .line 160
    :cond_8e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z
    :try_end_91
    .catchall {:try_start_72 .. :try_end_91} :catchall_145

    .line 172
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v1, :cond_a5

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a2
    :goto_a2
    move v1, v2

    .line 178
    goto/16 :goto_1c

    .line 176
    :cond_a5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v1, :cond_a2

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a2

    .line 172
    :cond_bd
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_d0

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1c

    .line 176
    :cond_d0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_1c

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1c

    .line 165
    :cond_e9
    :try_start_e9
    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I
    :try_end_eb
    .catchall {:try_start_e9 .. :try_end_eb} :catchall_145

    if-ne v0, v3, :cond_119

    .line 172
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_100

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1c

    .line 176
    :cond_100
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_1c

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1c

    .line 172
    :cond_119
    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v1, :cond_12d

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_12a
    :goto_12a
    move v1, v2

    .line 178
    goto/16 :goto_1c

    .line 176
    :cond_12d
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v1, :cond_12a

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_12a

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12a

    .line 172
    .end local v0    # "lastZone":I
    :catchall_145
    move-exception v1

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_158

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_157

    .line 174
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    :cond_157
    :goto_157
    throw v1

    .line 176
    :cond_158
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_157

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_157

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_157
.end method
