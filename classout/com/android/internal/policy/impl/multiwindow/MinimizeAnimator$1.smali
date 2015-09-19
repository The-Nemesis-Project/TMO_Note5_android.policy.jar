.class Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V
    .registers 2

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 392
    const/4 v1, 0x0

    .line 394
    .local v1, "isNeedAdditionalAnimation":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_44

    .line 395
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    .line 396
    .local v0, "currMovements":Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMovements:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$000(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 398
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    iput v4, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 399
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    iput v4, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 404
    .end local v0    # "currMovements":Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
    :cond_44
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "viewIdx":I
    :goto_50
    if-lez v2, :cond_158

    .line 405
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_a0

    .line 406
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 409
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iput v7, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 411
    :cond_a0
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_ee

    .line 412
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 415
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iput v7, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 418
    :cond_ee
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_121

    .line 419
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    iput v4, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 420
    const/4 v1, 0x1

    .line 422
    :cond_121
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_154

    .line 423
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    iput v4, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 424
    const/4 v1, 0x1

    .line 404
    :cond_154
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_50

    .line 428
    :cond_158
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1a6

    .line 429
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 431
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iput v7, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 433
    :cond_1a6
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_1f4

    .line 434
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mMinimizeIcons:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$200(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getY()F

    move-result v5

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iget v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 436
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mCurrMoveDistance:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$100(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;

    iput v7, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 439
    :cond_1f4
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mIsTouchDown:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$300(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Z

    move-result v3

    if-nez v3, :cond_1fe

    if-eqz v1, :cond_209

    .line 440
    :cond_1fe
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    iget-object v4, v4, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    :cond_209
    return-void
.end method
