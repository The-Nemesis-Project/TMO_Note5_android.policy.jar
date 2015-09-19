.class Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;
.super Lcom/android/internal/policy/impl/WakeGestureListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWakeGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 1212
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/WakeGestureListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1213
    return-void
.end method


# virtual methods
.method public onWakeUp()V
    .registers 7

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1218
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldEnableWakeGestureLp()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1220
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    const/4 v5, 0x7

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->wakeUp(JZI)Z
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;JZI)Z

    .line 1222
    :cond_27
    monitor-exit v1

    .line 1223
    return-void

    .line 1222
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0
.end method
