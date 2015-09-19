.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field public customAction:I

.field public isKnoxCustom:Z

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field mLayoutId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2435
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2436
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2447
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2448
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2449
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2450
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2452
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2454
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 2456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2435
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2436
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2457
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2458
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2459
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2460
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2462
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2464
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 2466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2435
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2436
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2467
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2468
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2469
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2472
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->init()V

    .line 2474
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 5
    .param p1, "iconImageDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "messageChar"    # Ljava/lang/String;
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 2437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2435
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2436
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2438
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2439
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2440
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 2441
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 2442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isKnoxCustom:Z

    .line 2443
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->customAction:I

    .line 2444
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 2477
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4800()Z

    move-result v0

    if-nez v0, :cond_12

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$5300()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2478
    const v0, 0x1090066

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mLayoutId:I

    .line 2482
    :goto_11
    return-void

    .line 2480
    :cond_12
    const v0, 0x1090065

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mLayoutId:I

    goto :goto_11
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v8, 0x0

    const v7, -0x777778

    .line 2506
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4800()Z

    move-result v6

    if-nez v6, :cond_85

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$5300()Z

    move-result v6

    if-nez v6, :cond_85

    .line 2507
    const v6, 0x1090066

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 2511
    .local v5, "v":Landroid/view/View;
    :goto_17
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2512
    .local v1, "icon":Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2513
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x1020370

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2514
    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    .line 2515
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 2517
    .local v3, "status":Ljava/lang/String;
    if-eqz v4, :cond_4a

    .line 2518
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8d

    .line 2519
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2520
    if-nez v0, :cond_4a

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2525
    :cond_4a
    :goto_4a
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_93

    .line 2526
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2527
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2532
    :cond_58
    :goto_58
    if-eqz v2, :cond_68

    .line 2533
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v6, :cond_a1

    .line 2534
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2538
    :goto_63
    if-nez v0, :cond_68

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2541
    :cond_68
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4800()Z

    move-result v6

    if-nez v6, :cond_84

    .line 2542
    if-eqz v2, :cond_79

    .line 2543
    const-string v6, "#FF000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2545
    :cond_79
    if-eqz v4, :cond_84

    .line 2546
    const-string v6, "#6B6F72"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2550
    :cond_84
    return-object v5

    .line 2509
    .end local v0    # "enabled":Z
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "messageView":Landroid/widget/TextView;
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "statusView":Landroid/widget/TextView;
    .end local v5    # "v":Landroid/view/View;
    :cond_85
    const v6, 0x1090065

    invoke-virtual {p4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "v":Landroid/view/View;
    goto :goto_17

    .line 2522
    .restart local v0    # "enabled":Z
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "messageView":Landroid/widget/TextView;
    .restart local v3    # "status":Ljava/lang/String;
    .restart local v4    # "statusView":Landroid/widget/TextView;
    :cond_8d
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a

    .line 2528
    :cond_93
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v6, :cond_58

    .line 2529
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_58

    .line 2536
    :cond_a1
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_63
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 2497
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 2499
    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2490
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 2486
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
