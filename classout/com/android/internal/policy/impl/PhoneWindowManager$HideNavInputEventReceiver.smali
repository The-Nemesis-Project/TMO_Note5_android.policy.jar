.class final Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 5026
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 5027
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 5028
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 5032
    const/4 v3, 0x0

    .line 5034
    .local v3, "handled":Z
    :try_start_1
    instance-of v6, p1, Landroid/view/MotionEvent;

    if-eqz v6, :cond_60

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_60

    .line 5036
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 5037
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_60

    .line 5039
    const/4 v2, 0x0

    .line 5040
    .local v2, "changed":Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_67

    .line 5046
    :try_start_21
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v6, v6, 0x2

    or-int/lit8 v6, v6, 0x1

    or-int/lit8 v5, v6, 0x4

    .line 5050
    .local v5, "newVal":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v6, v5, :cond_36

    .line 5051
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v5, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 5052
    const/4 v2, 0x1

    .line 5057
    :cond_36
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v5, v6, 0x2

    .line 5059
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v6, v5, :cond_56

    .line 5060
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v5, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 5061
    const/4 v2, 0x1

    .line 5062
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/16 v10, 0x3e8

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5064
    :cond_56
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_21 .. :try_end_57} :catchall_64

    .line 5065
    if-eqz v2, :cond_60

    .line 5066
    :try_start_59
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_67

    .line 5071
    .end local v2    # "changed":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newVal":I
    :cond_60
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 5073
    return-void

    .line 5064
    .restart local v2    # "changed":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_64
    move-exception v6

    :try_start_65
    monitor-exit v7
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v6
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 5071
    .end local v2    # "changed":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_67
    move-exception v6

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v6
.end method
