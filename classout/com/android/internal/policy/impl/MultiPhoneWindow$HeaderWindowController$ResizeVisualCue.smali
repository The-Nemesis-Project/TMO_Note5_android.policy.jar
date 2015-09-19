.class Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;
.super Landroid/widget/FrameLayout;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeVisualCue"
.end annotation


# static fields
.field private static final CUE_COUNT:I = 0x4


# instance fields
.field private mCueViews:[Landroid/widget/ImageView;

.field mEndAnimation:Landroid/view/animation/Animation;

.field mIsAttached:Z

.field mStartAnimation:Landroid/view/animation/Animation;

.field mThicknessBorer:I

.field mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    .line 4685
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    .line 4686
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4679
    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    .line 4687
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mWindowManager:Landroid/view/WindowManager;

    .line 4688
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    .line 4689
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    if-ge v0, v5, :cond_46

    .line 4690
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 4691
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const v3, 0x10805d3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4692
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4689
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 4696
    :cond_46
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4697
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4698
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x55

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4699
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4700
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x53

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4701
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4702
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x33

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4703
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4704
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;Lcom/android/internal/policy/impl/MultiPhoneWindow$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$1;

    .prologue
    .line 4670
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V

    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4707
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 4708
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4709
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$9200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4710
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStackBound:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$9200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4711
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4712
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mThicknessBorer:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4713
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4714
    const/16 v1, 0x3ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4715
    const-string v1, "PenWindow ResizeVisualCue"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4716
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4717
    const/16 v1, 0x218

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4720
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 4721
    return-object v0
.end method


# virtual methods
.method addWindow()V
    .registers 5

    .prologue
    .line 4725
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    if-nez v2, :cond_33

    .line 4726
    sget-boolean v2, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v2, :cond_19

    const-string v2, "MultiPhoneWindow"

    const-string v3, "addWindow ResizeVisualCue"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 4728
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4729
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    const/4 v2, 0x4

    if-ge v0, v2, :cond_30

    .line 4730
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->addView(Landroid/view/View;)V

    .line 4729
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 4732
    :cond_30
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    .line 4734
    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_33
    return-void
.end method

.method cancelAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4801
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_21

    .line 4802
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 4803
    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    .line 4804
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_21

    const-string v0, "MultiPhoneWindow"

    const-string v1, "Cancel mStartAnimation of ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_37

    .line 4807
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 4808
    iput-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    .line 4809
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_37

    const-string v0, "MultiPhoneWindow"

    const-string v1, "Cancel mEndAnimation of ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    :cond_37
    return-void
.end method

.method hide()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 4756
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    if-eqz v1, :cond_12

    .line 4757
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v2, :cond_12

    .line 4758
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4757
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4761
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method playAnimation(Z)V
    .registers 6
    .param p1, "startAnimation"    # Z

    .prologue
    const/4 v3, 0x4

    .line 4814
    if-eqz p1, :cond_25

    .line 4815
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_24

    .line 4816
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->show()V

    .line 4817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v3, :cond_19

    .line 4818
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4817
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4820
    :cond_19
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v1, :cond_24

    .line 4821
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Play mStartAnimation of ResizeVisualCue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    .end local v0    # "i":I
    :cond_24
    :goto_24
    return-void

    .line 4824
    :cond_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_24

    .line 4825
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2a
    if-ge v0, v3, :cond_38

    .line 4826
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4825
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 4828
    :cond_38
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v1, :cond_24

    .line 4829
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Play mEndAnimation of ResizeVisualCue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method removeWindow()V
    .registers 3

    .prologue
    .line 4737
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    if-eqz v1, :cond_1d

    .line 4738
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->cancelAnimation()V

    .line 4739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const/4 v1, 0x4

    if-ge v0, v1, :cond_15

    .line 4740
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->removeView(Landroid/view/View;)V

    .line 4739
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4742
    :cond_15
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4743
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    .line 4745
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method setAnimation()V
    .registers 7

    .prologue
    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    .line 4764
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    .line 4765
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4766
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4767
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mStartAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4780
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    .line 4781
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4782
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4783
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mEndAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4797
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_RESIZE_VISUAL_CUE:Z

    if-eqz v0, :cond_52

    const-string v0, "MultiPhoneWindow"

    const-string v1, "setAnimation for ResizeVisualCue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    :cond_52
    return-void
.end method

.method show()V
    .registers 4

    .prologue
    .line 4748
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mIsAttached:Z

    if-eqz v1, :cond_13

    .line 4749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_13

    .line 4750
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$ResizeVisualCue;->mCueViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4749
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4753
    .end local v0    # "i":I
    :cond_13
    return-void
.end method
