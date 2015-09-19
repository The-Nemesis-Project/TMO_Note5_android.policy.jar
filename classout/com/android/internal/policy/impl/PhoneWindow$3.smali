.class Lcom/android/internal/policy/impl/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->registerSwipeCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ALPHA_DECREASE:F = 0.5f


# instance fields
.field private mIsTranslucent:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 3

    .prologue
    .line 4822
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->mIsTranslucent:Z

    return-void
.end method


# virtual methods
.method public onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .registers 6
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 4844
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4845
    .local v0, "newParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4846
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4847
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4848
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/16 v2, 0x400

    const/16 v3, 0x600

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 4849
    return-void
.end method

.method public onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V
    .registers 8
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;
    .param p2, "progress"    # F
    .param p3, "translate"    # F

    .prologue
    .line 4828
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 4829
    .local v1, "newParams":Landroid/view/WindowManager$LayoutParams;
    float-to-int v2, p3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4830
    const/high16 v2, 0x3f800000

    const/high16 v3, 0x3f000000

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4831
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4833
    const/4 v0, 0x0

    .line 4834
    .local v0, "flags":I
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_25

    .line 4835
    const/16 v0, 0x400

    .line 4839
    :goto_1d
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/16 v3, 0x600

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 4840
    return-void

    .line 4837
    :cond_25
    const/16 v0, 0x200

    goto :goto_1d
.end method
