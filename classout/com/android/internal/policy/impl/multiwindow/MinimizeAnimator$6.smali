.class Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->openTrashCoverAnimation()V
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
    .line 668
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$6;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # invokes: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->shakeTrashCoverAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)V

    .line 673
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 670
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 675
    return-void
.end method
