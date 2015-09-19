.class Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$2;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)V
    .registers 2

    .prologue
    .line 3474
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$2;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$2;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabFocusedView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->access$6602(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Landroid/view/View;)Landroid/view/View;

    .line 3478
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$2;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->mTabGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->access$6700(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3479
    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "MultiPhoneWindow"

    const-string v1, "TabContainer.onTouchEvent return false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_1c
    const/4 v0, 0x1

    .line 3482
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
