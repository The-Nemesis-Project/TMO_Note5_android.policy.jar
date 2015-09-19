.class Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Movement"
.end annotation


# instance fields
.field public movementX:F

.field public movementY:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .param p1, "movementX"    # F
    .param p2, "movementY"    # F

    .prologue
    const/4 v0, 0x0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 591
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 594
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementX:F

    .line 595
    iput p2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$Movement;->movementY:F

    .line 596
    return-void
.end method
