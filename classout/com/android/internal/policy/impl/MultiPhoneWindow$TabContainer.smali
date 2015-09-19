.class Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabContainer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;
    }
.end annotation


# instance fields
.field private mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabFocusedView:Landroid/view/View;

.field private mTabGestureDetector:Landroid/view/GestureDetector;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;)V
    .registers 7
    .param p2, "tabLayout"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    .prologue
    .line 3367
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3368
    if-eqz p2, :cond_38

    .line 3369
    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    .line 3370
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->setVisibility(I)V

    .line 3371
    const v0, 0x1020012

    invoke-virtual {p2, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    .line 3372
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 3373
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 3393
    new-instance v0, Landroid/view/GestureDetector;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$TabGestureListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabGestureDetector:Landroid/view/GestureDetector;

    .line 3395
    :cond_38
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;
    .param p3, "x2"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    .prologue
    .line 3360
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 3360
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 3421
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3422
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->create(Landroid/app/Activity;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v1

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    .line 3427
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3424
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/policy/impl/multiwindow/ApplicationSquareThumbnail;->create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    move-result-object v1

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mThumbnail:Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;)Lcom/android/internal/policy/impl/multiwindow/ApplicationThumbnail;

    goto :goto_1f
.end method


# virtual methods
.method public getTabFocusedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;

    return-object v0
.end method

.method public refresh()V
    .registers 13

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3431
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    if-eqz v7, :cond_20

    .line 3432
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_21

    .line 3433
    sget-boolean v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v7, :cond_20

    const-string v7, "TAG"

    const-string v8, "TabContainer::refresh state is not STATE_SCALED_FLOATING"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    :cond_20
    :goto_20
    return-void

    .line 3437
    :cond_21
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    if-nez v7, :cond_31

    .line 3438
    sget-boolean v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v7, :cond_20

    const-string v7, "TAG"

    const-string v8, "TabContainer::refresh mTabRoot == null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 3442
    :cond_31
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getTabs()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 3443
    .local v6, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/multiwindow/MultiWindowTab;>;"
    if-eqz v6, :cond_53

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v9, :cond_53

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/high16 v8, 0x800000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_93

    .line 3445
    :cond_53
    sget-boolean v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v7, :cond_5e

    const-string v7, "TAG"

    const-string v8, "TabContainer::refresh : tabMap is INVALID"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    :cond_5e
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    if-eq v7, v9, :cond_83

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 3447
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_8b

    .line 3448
    sget-boolean v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v7, :cond_83

    const-string v7, "TAG"

    const-string v8, "token is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    :cond_83
    :goto_83
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->setVisibility(I)V

    goto :goto_20

    .line 3450
    :cond_8b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    goto :goto_83

    .line 3456
    :cond_93
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_a8

    .line 3457
    sget-boolean v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v7, :cond_20

    const-string v7, "TAG"

    const-string v8, "TabContainer::refresh : mTabHost is not visible"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 3460
    :cond_a8
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 3461
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 3463
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b7
    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_151

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowTab;

    .line 3464
    .local v5, "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getStackId()I

    move-result v4

    .line 3465
    .local v4, "stackId":I
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowTab;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 3466
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3467
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_b7

    .line 3468
    new-instance v2, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3469
    .local v2, "iv":Landroid/widget/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3470
    invoke-virtual {v2, v10, v11, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3471
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3472
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->getMinimizedDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3473
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10805bd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3474
    new-instance v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$2;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3486
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    new-instance v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$3;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$3;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)V

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 3494
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    if-eqz v7, :cond_b7

    .line 3496
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_b7

    .line 3500
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "stackId":I
    .end local v5    # "tab":Lcom/samsung/android/multiwindow/MultiWindowTab;
    :cond_151
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    goto/16 :goto_20
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 3398
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v0, :cond_1c

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabContainer::setCurrentTabByTag tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 3400
    return-void
.end method

.method public setVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3403
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3404
    if-eqz p1, :cond_32

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3405
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3406
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 3408
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->setVisibility(I)V

    .line 3413
    :cond_31
    :goto_31
    return-void

    .line 3410
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabRoot:Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;->setVisibility(I)V

    goto :goto_31
.end method
