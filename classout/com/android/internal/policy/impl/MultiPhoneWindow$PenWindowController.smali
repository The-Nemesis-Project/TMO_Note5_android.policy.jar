.class public abstract Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PenWindowController"
.end annotation


# instance fields
.field protected mBtnDragAndDrop:Landroid/view/View;

.field protected mBtnExit:Landroid/view/View;

.field protected mBtnMaximize:Landroid/view/View;

.field protected mBtnMinimize:Landroid/view/View;

.field protected mControllerHeight:I

.field protected mDnDHelpPopupDialog:Landroid/app/AlertDialog;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

.field private mIsInputMethodForceHiding:Z

.field private mIsLongPressed:Z

.field private mIsMoving:Z

.field protected mIsShowing:Z

.field private mLastHandledX:I

.field private mLastHandledY:I

.field protected mMenuContainer:Landroid/view/View;

.field private mMoveInterval:I

.field protected mNeedInvalidate:Z

.field protected mPenWindowHeader:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3586
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3539
    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mControllerHeight:I

    .line 3540
    iput v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    .line 3549
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mNeedInvalidate:Z

    .line 3587
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    .line 3588
    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    .line 3590
    return-void
.end method

.method static synthetic access$7100(Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 3527
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V

    return-void
.end method

.method private checkFunctionState()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    .line 3746
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 3747
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_f

    .line 3789
    :cond_e
    return-void

    .line 3751
    :cond_f
    const/4 v1, 0x0

    .line 3753
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_10
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1f} :catch_8f

    move-result-object v1

    .line 3757
    :goto_20
    if-eqz v1, :cond_e

    .line 3761
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3762
    .local v4, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_42

    .line 3763
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3764
    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_42

    .line 3765
    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3768
    .end local v0    # "activityFunction":Ljava/lang/String;
    :cond_42
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_65

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_65

    .line 3769
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3770
    .local v2, "applicationFunction":Ljava/lang/String;
    if-eqz v2, :cond_65

    .line 3771
    const-string v8, "\\|"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3775
    .end local v2    # "applicationFunction":Ljava/lang/String;
    :cond_65
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3777
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3778
    .local v3, "disableFunction":Ljava/lang/String;
    const-string v8, "minimize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 3779
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v9, 0x1

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsMinimizeDisabled:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$7202(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .line 3780
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f

    .line 3754
    .end local v3    # "disableFunction":Ljava/lang/String;
    .end local v4    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_8f
    move-exception v5

    .line 3755
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_20

    .line 3781
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "disableFunction":Ljava/lang/String;
    .restart local v4    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_94
    const-string v8, "maximize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 3782
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f

    .line 3783
    :cond_a2
    const-string v8, "exit"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 3784
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f

    .line 3785
    :cond_b0
    const-string v8, "drag_and_drop"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 3786
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6f
.end method

.method private makeDnDHelpPopupLayout()V
    .registers 11

    .prologue
    .line 3630
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x1030132

    invoke-direct {v1, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3632
    .local v1, "context":Landroid/content/Context;
    :try_start_e
    const-string v7, "layout_inflater"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 3633
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x1090071

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3634
    .local v3, "dnDHelpPopupView":Landroid/view/View;
    if-eqz v3, :cond_3c

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_3d

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3d

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v7, v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 3716
    .end local v3    # "dnDHelpPopupView":Landroid/view/View;
    .end local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_3c
    :goto_3c
    return-void

    .line 3637
    .restart local v3    # "dnDHelpPopupView":Landroid/view/View;
    .restart local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_3d
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_49

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3c

    .line 3664
    :cond_49
    const v7, 0x1020397

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3666
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 3667
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 3670
    :cond_62
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v7

    if-nez v7, :cond_74

    .line 3671
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 3672
    new-instance v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3679
    :cond_74
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 3680
    new-instance v7, Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x5

    invoke-direct {v7, v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040b65

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$3;

    invoke-direct {v8, p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$3;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$2;

    invoke-direct {v9, p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3704
    .local v2, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3705
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    .line 3707
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 3708
    .local v6, "w":Landroid/view/Window;
    const/16 v7, 0x200

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 3709
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 3710
    .local v5, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x3e8

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3711
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3712
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V
    :try_end_d9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_d9} :catch_db

    goto/16 :goto_3c

    .line 3714
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "dnDHelpPopupView":Landroid/view/View;
    .end local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v5    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "w":Landroid/view/Window;
    :catch_db
    move-exception v7

    goto/16 :goto_3c
.end method

.method private setHeaderWindowControllerHoverImage()V
    .registers 3

    .prologue
    .line 4047
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    .line 4048
    return-void
.end method

.method private startDragMode(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3719
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    .line 3732
    :goto_15
    return-void

    .line 3722
    :cond_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3723
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.FlashBarService"

    const-string v2, "com.sec.android.app.FlashBarService.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3725
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3726
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performStartDragMode()V

    .line 3727
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    .line 3728
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "POPW"

    const-string v3, "DRAGCONTENT"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method


# virtual methods
.method protected generateLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 3593
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    if-eq v1, v3, :cond_22

    .line 3594
    :cond_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 3595
    .local v0, "decor":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDecorBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4702(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3597
    .end local v0    # "decor":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    :cond_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    if-eq v1, v3, :cond_49

    .line 3598
    :cond_32
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$7000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 3599
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$7000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentRootBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$6902(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3603
    :cond_49
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performInflateController()V

    .line 3605
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3606
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3607
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 3609
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v2, 0x10203c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    .line 3610
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3611
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3613
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v2, 0x10203c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    .line 3614
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3615
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3617
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v2, 0x10203c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    .line 3618
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3619
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3621
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v2, 0x10203c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    .line 3622
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3623
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3625
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->checkFunctionState()V

    .line 3626
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->updateAvailableButtons()V

    .line 3627
    return-void
.end method

.method protected getControllerHeight()I
    .registers 2

    .prologue
    .line 3741
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mControllerHeight:I

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 3583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mNeedInvalidate:Z

    .line 3584
    return-void
.end method

.method protected isShowing()Z
    .registers 2

    .prologue
    .line 3737
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3793
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3794
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 3856
    :cond_d
    :goto_d
    return-void

    .line 3795
    :cond_e
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3796
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "do_not_show_help_popup_drag_and_drop"

    const/4 v4, -0x3

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_30

    .line 3798
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    .line 3799
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLayout()V

    goto :goto_d

    .line 3801
    :cond_30
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V

    goto :goto_d

    .line 3803
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 3804
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v2, v5, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeWindow(IZ)V

    .line 3805
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 3806
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 3807
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mConsumeTouchEvent:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5902(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .line 3809
    :cond_57
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "POPW"

    const-string v4, "MINIMIZE"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 3812
    :cond_65
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 3813
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 3814
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    .line 3816
    :cond_78
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    .line 3817
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "POPW"

    const-string v4, "MAXIMIZE"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 3820
    :cond_8b
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3821
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 3822
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$7300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v2

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$7300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 3824
    const-string v2, "MultiPhoneWindow"

    const-string v3, "onWindowExit return false"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "POPW"

    const-string v4, "CLOSE"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 3831
    :cond_c5
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3832
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_d6

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 3833
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    .line 3835
    :cond_d6
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_e7

    .line 3836
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 3840
    :cond_e7
    :try_start_e7
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$7400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 3841
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->finishAllTasks(Landroid/os/IBinder;I)V
    :try_end_107
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_107} :catch_125

    .line 3849
    :goto_107
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsFinishing:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$7502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .line 3851
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "POPW"

    const-string v4, "CLOSE"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 3843
    :cond_11b
    :try_start_11b
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finishAffinity()V
    :try_end_124
    .catch Ljava/lang/IllegalStateException; {:try_start_11b .. :try_end_124} :catch_125

    goto :goto_107

    .line 3845
    :catch_125
    move-exception v0

    .line 3846
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_107
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 4027
    :try_start_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_37

    .line 4028
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10203d2

    if-ne v1, v2, :cond_1f

    .line 4029
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 4043
    :cond_1e
    :goto_1e
    return v3

    .line 4031
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    .line 4032
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_2a

    goto :goto_1e

    .line 4040
    :catch_2a
    move-exception v0

    .line 4041
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 4034
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->setHeaderWindowControllerHoverImage()V

    goto :goto_1e

    .line 4037
    :cond_37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    .line 4038
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_44} :catch_2a

    goto :goto_1e
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3860
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    if-eqz v14, :cond_13

    .line 3861
    sget-boolean v14, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v14, :cond_11

    const-string v14, "MultiPhoneWindow"

    const-string v15, "onLongClick : moving so return false"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    :cond_11
    const/4 v14, 0x0

    .line 3910
    :goto_12
    return v14

    .line 3867
    :cond_13
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    .line 3869
    const/4 v14, 0x2

    new-array v9, v14, [I

    .line 3870
    .local v9, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3871
    .local v3, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3872
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3874
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 3875
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v14}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v14

    if-eqz v14, :cond_52

    .line 3876
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v6, v14, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .line 3877
    .local v6, "menuContainer":Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    if-eqz v6, :cond_52

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$7600(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;

    move-result-object v14

    if-eqz v14, :cond_52

    .line 3878
    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$7600(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    .line 3881
    .end local v6    # "menuContainer":Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    :cond_52
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3882
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v10, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3884
    .local v10, "screenWidth":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v8, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3886
    .local v8, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .line 3887
    .local v7, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v7, :cond_a7

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_a7

    .line 3888
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_94

    if-gt v10, v8, :cond_a4

    :cond_94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v14}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    if-nez v14, :cond_a7

    if-ge v10, v8, :cond_a7

    .line 3892
    :cond_a4
    move v11, v10

    .line 3893
    .local v11, "tempWidth":I
    move v10, v8

    .line 3894
    move v8, v11

    .line 3898
    .end local v11    # "tempWidth":I
    :cond_a7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 3900
    .local v1, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->setIgnoreMultiWindowLayout()V

    .line 3901
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 3902
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v14, 0x109008e

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 3903
    .local v13, "toastView":Landroid/view/View;
    invoke-virtual {v1, v13}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 3904
    const v14, 0x10203c6

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 3905
    .local v12, "toastTxt":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3907
    const/16 v14, 0x35

    const/4 v15, 0x0

    aget v15, v9, v15

    sub-int v15, v10, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    div-int/lit8 v16, v4, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 3909
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3910
    const/4 v14, 0x1

    goto/16 :goto_12
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3915
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 3916
    .local v0, "action":I
    packed-switch v0, :pswitch_data_200

    .line 4018
    :cond_b
    :goto_b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_14

    .line 4019
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4021
    :cond_14
    :goto_14
    return v11

    .line 3918
    :pswitch_15
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHasStackFocus:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 3919
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v6

    .line 3920
    .local v6, "stackId":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    invoke-virtual {v7, v6, v11}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusedStack(IZ)V

    .line 3923
    .end local v6    # "stackId":I
    :cond_36
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    .line 3924
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 3925
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    goto :goto_14

    .line 3929
    :cond_43
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->init()V

    .line 3930
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    .line 3931
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    .line 3932
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    .line 3933
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    .line 3935
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z
    invoke-static {v7, v12}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    .line 3937
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_7b

    .line 3939
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3940
    .local v5, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3943
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_7b
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 3948
    :pswitch_8b
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    if-nez v7, :cond_14

    .line 3952
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    or-int/2addr v7, v8

    if-nez v7, :cond_b6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    if-ge v7, v8, :cond_b6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    if-lt v7, v8, :cond_b

    .line 3957
    :cond_b6
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    .line 3958
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int v2, v7, v8

    .line 3959
    .local v2, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int v3, v7, v8

    .line 3960
    .local v3, "dy":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    .line 3961
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    .line 3963
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;->updateZone(II)Z

    move-result v7

    if-eqz v7, :cond_101

    .line 3965
    :try_start_e8
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->vibrateImmVibeFromWindow([BI)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_101} :catch_12a

    .line 3971
    :cond_101
    :goto_101
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3972
    .local v1, "dockingBound":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3973
    if-eqz v1, :cond_12f

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDockingCanceled()Z

    move-result v7

    if-nez v7, :cond_12f

    .line 3974
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v8, 0x2

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v7, v1, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_b

    .line 3966
    .end local v1    # "dockingBound":Landroid/graphics/Rect;
    :catch_12a
    move-exception v4

    .line 3967
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_101

    .line 3976
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "dockingBound":Landroid/graphics/Rect;
    :cond_12f
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x3

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v7, v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    goto/16 :goto_b

    .line 3983
    .end local v1    # "dockingBound":Landroid/graphics/Rect;
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :pswitch_13d
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    if-nez v7, :cond_14

    .line 3987
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    if-eqz v7, :cond_1fb

    .line 3988
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int v2, v7, v8

    .line 3989
    .restart local v2    # "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int v3, v7, v8

    .line 3991
    .restart local v3    # "dy":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v7

    if-eqz v7, :cond_1e6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDockingCanceled()Z

    move-result v7

    if-nez v7, :cond_1e6

    .line 3992
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkCenterBarPoint()V

    .line 3994
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_1b5

    .line 3996
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 4012
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :goto_1a3
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    .line 4013
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->clear()V

    .line 4014
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_b

    .line 3999
    .restart local v2    # "dx":I
    .restart local v3    # "dy":I
    :cond_1b5
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 4001
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "POPW"

    const-string v9, "CHANGE-SPLIT"

    invoke-static {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a3

    .line 4006
    :cond_1e6
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4007
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto :goto_1a3

    .line 4010
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_1fb
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_1a3

    .line 3916
    nop

    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_15
        :pswitch_13d
        :pswitch_8b
        :pswitch_13d
    .end packed-switch
.end method

.method protected abstract performInflateController()V
.end method

.method protected performStartDragMode()V
    .registers 1

    .prologue
    .line 3564
    return-void
.end method

.method protected performStopDragMode()V
    .registers 1

    .prologue
    .line 3568
    return-void
.end method

.method protected abstract performUpdateBackground()V
.end method

.method protected performUpdateMenuVisibility(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 3572
    return-void
.end method

.method protected abstract performUpdateVisibility(Z)V
.end method

.method protected abstract removeResizeVisualCue()V
.end method

.method protected setHeaderGestureDetector(Landroid/view/GestureDetector;)V
    .registers 2
    .param p1, "g"    # Landroid/view/GestureDetector;

    .prologue
    .line 3575
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3576
    return-void
.end method

.method protected abstract updateAvailableButtons()V
.end method

.method protected abstract updatePosition()V
.end method
