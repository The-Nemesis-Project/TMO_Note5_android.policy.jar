.class Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
.super Landroid/widget/FrameLayout;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingMenuView"
.end annotation


# instance fields
.field private mAvailableButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingMenu:Landroid/view/View;

.field private mFloatingMenuBg:Landroid/view/View;

.field private mFloatingMenuCloseAnimating:Z

.field private mFloatingMenuContainer:Landroid/widget/LinearLayout;

.field private mFloatingMenuOpenAnimating:Z

.field private mIsAttached:Z

.field private mTopMargin:I

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 4315
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    .line 4316
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4308
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    .line 4310
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    .line 4311
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .line 4317
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4318
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109008d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    .line 4319
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v4, 0x10203bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    .line 4320
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 4321
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v4, 0x10203c1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    .line 4323
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 4324
    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v2, :cond_66

    .line 4325
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 4326
    .local v0, "color":I
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, 0x66000000

    or-int v0, v3, v4

    .line 4327
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 4330
    .end local v0    # "color":I
    :cond_66
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->addView(Landroid/view/View;)V

    .line 4331
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    .line 4332
    return-void
.end method

.method static synthetic access$7600(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .param p1, "x1"    # Z

    .prologue
    .line 4301
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 4301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->setFloatingButtonHoverListener()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 4301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuClose()V

    return-void
.end method

.method static synthetic access$8902(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .param p1, "x1"    # Z

    .prologue
    .line 4301
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    return p1
.end method

.method static synthetic access$9000(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 4301
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->removeSelf()V

    return-void
.end method

.method private animateFloatingMenuClose()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4538
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_f

    .line 4586
    :cond_e
    return-void

    .line 4541
    :cond_f
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    .line 4542
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .line 4544
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v9, 0x10203be

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4545
    .local v4, "leftBackground":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v9, 0x10203c0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 4546
    .local v7, "rightBackground":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v9, 0x10203bf

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4548
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    const v9, 0x10a004e

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 4549
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4570
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4571
    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4572
    invoke-direct {p0, v10, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4574
    const/4 v3, 0x0

    .line 4575
    .local v3, "left":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 4576
    .local v6, "right":I
    const/4 v5, 0x0

    .line 4577
    .local v5, "offset":I
    :goto_5a
    if-gt v3, v6, :cond_e

    .line 4578
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    const v9, 0x10a004d

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4579
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v8, v5, 0x64

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 4580
    if-eq v3, v6, :cond_78

    .line 4581
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4583
    :cond_78
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4584
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, 0x1

    .line 4585
    goto :goto_5a
.end method

.method private animateFloatingMenuOpen(Z)V
    .registers 15
    .param p1, "autoclose"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 4458
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_f

    .line 4535
    :cond_e
    return-void

    .line 4462
    :cond_f
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    .line 4463
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .line 4465
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x10203be

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4466
    .local v5, "leftBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x10203c0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 4467
    .local v8, "rightBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x10203bf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4469
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    const v10, 0x10a004f

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 4470
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    new-instance v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    invoke-direct {v9, p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)V

    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4518
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4519
    invoke-direct {p0, v11, v11}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4520
    invoke-direct {p0, v11, v12}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4522
    const/4 v4, 0x0

    .line 4523
    .local v4, "left":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 4524
    .local v7, "right":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v3, v9, -0x1

    .line 4525
    .local v3, "closer":I
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_a8

    add-int/lit8 v6, v3, 0x1

    .line 4526
    .local v6, "offset":I
    :goto_78
    if-gt v4, v7, :cond_e

    .line 4527
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    const v10, 0x10a004c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4528
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v9, v6, 0x64

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 4529
    if-eq v4, v7, :cond_96

    .line 4530
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4532
    :cond_96
    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4533
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    .line 4534
    goto :goto_78

    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v6    # "offset":I
    :cond_a8
    move v6, v3

    .line 4525
    goto :goto_78
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 4632
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 4633
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4634
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4635
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4636
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 4637
    const/16 v1, 0x3ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4638
    const-string v1, "PenWindow Titlebar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4639
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 4640
    const v1, 0x40208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4644
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 4645
    return-object v0
.end method

.method private getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;
    .registers 18
    .param p1, "open"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 4589
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v2, 0x10203be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 4590
    .local v11, "leftBackground":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v2, 0x10203c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 4591
    .local v13, "rightBackground":Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4594
    .local v0, "t":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTargetSdkVersion:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$9100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v1

    const/16 v2, 0x13

    if-ge v1, v2, :cond_7c

    .line 4595
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->access$8200(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingMenuRightMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$8300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    add-int v12, v1, v2

    .line 4600
    .local v12, "measureWidth":I
    :goto_3d
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v10, v1, v2

    .line 4601
    .local v10, "buttonsSideBgWidth":I
    div-int/lit8 v9, v12, 0x2

    .line 4602
    .local v9, "buttonPopupHalfWidth":I
    div-int/lit8 v1, v10, 0x2

    sub-int v14, v9, v1

    .line 4603
    .local v14, "showposition":I
    if-eqz p1, :cond_98

    .line 4604
    if-eqz p2, :cond_89

    .line 4605
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    int-to-float v2, v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 4617
    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_5e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 4618
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 4619
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4620
    return-object v0

    .line 4597
    .end local v9    # "buttonPopupHalfWidth":I
    .end local v10    # "buttonsSideBgWidth":I
    .end local v12    # "measureWidth":I
    .end local v14    # "showposition":I
    :cond_7c
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->access$8200(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .restart local v12    # "measureWidth":I
    goto :goto_3d

    .line 4607
    .restart local v9    # "buttonPopupHalfWidth":I
    .restart local v10    # "buttonsSideBgWidth":I
    .restart local v14    # "showposition":I
    :cond_89
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    neg-int v2, v14

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_5e

    .line 4610
    :cond_98
    if-eqz p2, :cond_ad

    .line 4611
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 4615
    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_a7
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    goto :goto_5e

    .line 4613
    :cond_ad
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, v14

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_a7
.end method

.method private removeSelf()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4403
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    if-eqz v2, :cond_47

    .line 4404
    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x10203be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 4405
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x10203c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 4406
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x10203bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 4407
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4408
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_33

    .line 4410
    .end local v0    # "button":Landroid/view/View;
    :cond_43
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    .line 4411
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .line 4413
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_47
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4414
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    .line 4415
    return-void
.end method

.method private setFloatingButtonHoverListener()V
    .registers 8

    .prologue
    const/16 v6, 0x3035

    const/4 v5, 0x1

    .line 4418
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4430
    .local v0, "hoverPopupTopMargin":I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4432
    .local v1, "stackBound":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4433
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 4434
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 4435
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 4438
    :cond_56
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4439
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 4440
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 4441
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 4444
    :cond_8f
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4445
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_c8

    .line 4446
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 4447
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 4450
    :cond_c8
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4451
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_101

    .line 4452
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 4453
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 4455
    :cond_101
    return-void
.end method


# virtual methods
.method public checkAvailableButtonsForAnim()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 4335
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 4336
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_1b

    .line 4337
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4339
    :cond_1b
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_2e

    .line 4340
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4342
    :cond_2e
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_41

    .line 4343
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4345
    :cond_41
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_54

    .line 4346
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4350
    :cond_54
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x10203be

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4351
    .local v5, "leftImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x10203c0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 4352
    .local v6, "rightImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x10203bf

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4353
    .local v2, "centerImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v8, v11, v11}, Landroid/view/View;->measure(II)V

    .line 4355
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->access$8200(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4356
    .local v7, "vlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v9, v11}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mFloatingMenuRightMargin:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$8302(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)I

    .line 4358
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4359
    .local v1, "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4360
    .local v3, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4363
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_b9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4364
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_b9

    .line 4366
    .end local v0    # "button":Landroid/view/View;
    :cond_c9
    return-void
.end method

.method public dismiss(Z)V
    .registers 5
    .param p1, "anim"    # Z

    .prologue
    .line 4392
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    if-eqz v0, :cond_21

    .line 4393
    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss menu with anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4394
    if-eqz p1, :cond_22

    .line 4395
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuClose()V

    .line 4400
    :cond_21
    :goto_21
    return-void

    .line 4397
    :cond_22
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->removeSelf()V

    goto :goto_21
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 4626
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    .line 4628
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4650
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 4651
    .local v1, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_62

    .line 4652
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 4653
    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050251

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4654
    .local v3, "rippleSize":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_5b

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 4655
    .local v0, "layoutRight":I
    :goto_2e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v4, v5, v0, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 4656
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->drawableHotspotChanged(FF)V

    .line 4657
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 4662
    .end local v0    # "layoutRight":I
    .end local v2    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v3    # "rippleSize":I
    :cond_5a
    :goto_5a
    return v1

    .line 4654
    .restart local v2    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .restart local v3    # "rippleSize":I
    :cond_5b
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v0, v4, v3

    goto :goto_2e

    .line 4658
    .end local v2    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v3    # "rippleSize":I
    :cond_62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5a

    .line 4660
    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_5a
.end method

.method public setTopMargin(I)V
    .registers 2
    .param p1, "topMargin"    # I

    .prologue
    .line 4369
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mTopMargin:I

    .line 4370
    return-void
.end method

.method public show(IIZ)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "autoclose"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4373
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    if-nez v1, :cond_5c

    .line 4374
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show menu at ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4376
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4377
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4380
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4381
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4382
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4383
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 4385
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4386
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuOpen(Z)V

    .line 4387
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    .line 4389
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_5c
    return-void
.end method
