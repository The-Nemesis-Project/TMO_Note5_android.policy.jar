.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinimizeWindowListener"
.end annotation


# instance fields
.field private mFirstDownX:I

.field private mFirstDownY:I

.field private mIsMoving:Z

.field private mLastMoveX:I

.field private mLastMoveY:I

.field private mMoveInterval:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1474
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    .line 1472
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    .line 1475
    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    .line 1477
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1481
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MinimizeWindowListener.onLongClick v = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1514
    :cond_25
    :goto_25
    return v0

    .line 1485
    :cond_26
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    if-eqz v1, :cond_36

    .line 1486
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v1, :cond_25

    const-string v1, "MultiPhoneWindow"

    const-string v2, "onLongClick : moving so return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1489
    :cond_36
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1493
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_69

    .line 1495
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->showTrash()V

    .line 1514
    :cond_69
    const/4 v0, 0x1

    goto :goto_25
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 25
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1521
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    packed-switch v18, :pswitch_data_63e

    .line 1679
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_63a

    .line 1680
    const/16 v18, 0x0

    .line 1682
    :goto_1d
    return v18

    .line 1523
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_154

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    if-eqz v18, :cond_154

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_154

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_154

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v18

    if-nez v18, :cond_154

    const/4 v13, 0x1

    .line 1526
    .local v13, "mShouldUseMinimizeView":Z
    :goto_6d
    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v18, :cond_91

    const-string v18, "MultiPhoneWindow"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MinimizeWindowListener.onTouch action=DOWN (mShouldUseMinimizeView="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_91
    if-eqz v13, :cond_a2

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->init()V

    .line 1531
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    .line 1533
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    .line 1534
    if-eqz v13, :cond_7

    .line 1535
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [I

    .line 1536
    .local v12, "mScreenLocation":[I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    const/high16 v20, 0x800000

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->makeMinimizeIcons(Z)Landroid/widget/ImageView;

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v12, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v12, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->initialize(II)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 1523
    .end local v12    # "mScreenLocation":[I
    .end local v13    # "mShouldUseMinimizeView":Z
    :cond_154
    const/4 v13, 0x0

    goto/16 :goto_6d

    .line 1547
    :pswitch_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_186

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1551
    :cond_186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v19, 0x800000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_1a4

    .line 1552
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    .line 1553
    const/16 v18, 0x1

    goto/16 :goto_1d

    .line 1556
    :cond_1a4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    move/from16 v18, v0

    if-nez v18, :cond_1fd

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1ee

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 1562
    :cond_1ee
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    .line 1563
    const-string v18, "MultiPhoneWindow"

    const-string v19, "mIsMoving true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_1fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_219

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->isShowingTrash()Z

    move-result v18

    if-nez v18, :cond_260

    :cond_219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/policy/impl/multiwindow/Docking;->updateZone(II)Z

    move-result v18

    if-eqz v18, :cond_260

    .line 1569
    :try_start_23b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->vibrateImmVibeFromWindow([BI)V
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_260} :catch_317

    .line 1575
    :cond_260
    :goto_260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 1576
    .local v8, "dockingBound":Landroid/graphics/Rect;
    if-eqz v8, :cond_28f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDockingCanceled()Z

    move-result v18

    if-nez v18, :cond_28f

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v0, v8, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    .line 1579
    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v18

    if-nez v18, :cond_2a8

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 1583
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-nez v18, :cond_2f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f7

    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    .line 1585
    .local v9, "dx":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    move/from16 v19, v0

    sub-int v10, v18, v19

    .line 1586
    .local v10, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)Z
    invoke-static {v0, v9, v10, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)Z

    .line 1588
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    :cond_2f7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    goto/16 :goto_7

    .line 1570
    .end local v8    # "dockingBound":Landroid/graphics/Rect;
    :catch_317
    move-exception v11

    .line 1571
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_260

    .line 1595
    .end local v11    # "e":Ljava/lang/Exception;
    :pswitch_31d
    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v18, :cond_328

    const-string v18, "MultiPhoneWindow"

    const-string v19, "MinimizeWindowListener.onTouch action=CANCEL"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_328
    :pswitch_328
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_33f

    .line 1598
    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v18, :cond_33f

    const-string v18, "MultiPhoneWindow"

    const-string v19, "MinimizeWindowListener.onTouch action=UP"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_33f
    const/16 v17, 0x0

    .line 1601
    .local v17, "outOfBound":Z
    const/4 v14, 0x0

    .line 1602
    .local v14, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeIconPressed(ZZ)V
    invoke-static/range {v18 .. v20}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5600(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V

    .line 1603
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    move/from16 v18, v0

    if-eqz v18, :cond_542

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v18

    if-eqz v18, :cond_4b7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDockingCanceled()Z

    move-result v18

    if-nez v18, :cond_4b7

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkCenterBarPoint()V

    .line 1606
    const/16 v16, 0x0

    .line 1607
    .local v16, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_3b5

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    check-cast v18, Landroid/app/Activity;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v16

    .line 1609
    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1613
    :cond_3b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportResizeVisualCue:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_471

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v21, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 1642
    .end local v16    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3f6
    :goto_3f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_459

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    if-nez v17, :cond_52f

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1647
    const/16 v18, 0x67

    move/from16 v0, v18

    iput v0, v14, Landroid/os/Message;->what:I

    .line 1648
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x96

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1674
    :cond_459
    :goto_459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/multiwindow/Docking;->clear()V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_7

    .line 1618
    .restart local v16    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v21, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "POPW"

    const-string v20, "CHANGE-SPLIT"

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f6

    .line 1624
    .end local v16    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3f6

    .line 1625
    const/4 v6, 0x0

    .local v6, "diffX":I
    const/4 v7, 0x0

    .local v7, "diffY":I
    const/4 v4, 0x0

    .local v4, "currentX":I
    const/4 v5, 0x0

    .line 1626
    .local v5, "currentY":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_50f

    .line 1627
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    .line 1628
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    .line 1633
    :goto_4e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_51e

    .line 1634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    move/from16 v18, v0

    sub-int v6, v4, v18

    .line 1635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    move/from16 v18, v0

    sub-int v7, v5, v18

    .line 1640
    :goto_4fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)Z
    invoke-static {v0, v6, v7, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5500(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)Z

    move-result v17

    goto/16 :goto_3f6

    .line 1630
    :cond_50f
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v4, v0

    .line 1631
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v18

    move/from16 v0, v18

    float-to-int v5, v0

    goto :goto_4e1

    .line 1637
    :cond_51e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    move/from16 v18, v0

    sub-int v6, v4, v18

    .line 1638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    move/from16 v18, v0

    sub-int v7, v5, v18

    goto :goto_4fd

    .line 1651
    .end local v4    # "currentX":I
    .end local v5    # "currentY":I
    .end local v6    # "diffX":I
    .end local v7    # "diffY":I
    :cond_52f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_459

    .line 1654
    :cond_542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_459

    .line 1656
    sget-boolean v18, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_FLOATING_CYCLE:Z

    if-eqz v18, :cond_55f

    const-string v18, "MultiPhoneWindow"

    const-string v19, "Minimized->Floating"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_55f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v18

    if-eqz v18, :cond_5b2

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x68

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x68

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_459

    .line 1664
    :cond_5b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v15

    .line 1665
    .local v15, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v18, 0x4

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1666
    const/high16 v18, 0x800000

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/high16 v21, 0x800000

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_637

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v21, 0x105022d

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v21, v0

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v21

    add-int v18, v18, v21

    :goto_615
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5700(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v19

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto/16 :goto_459

    .line 1667
    :cond_637
    const/16 v18, 0x0

    goto :goto_615

    .line 1682
    .end local v14    # "msg":Landroid/os/Message;
    .end local v15    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v17    # "outOfBound":Z
    :cond_63a
    const/16 v18, 0x1

    goto/16 :goto_1d

    .line 1521
    :pswitch_data_63e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_328
        :pswitch_157
        :pswitch_31d
    .end packed-switch
.end method
