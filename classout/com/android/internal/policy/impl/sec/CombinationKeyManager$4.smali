.class Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V
    .registers 2

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 761
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "intent":Landroid/content/Intent;
    :try_start_c
    # getter for: Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 765
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const-string v4, "114"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    move-object v0, v1

    .line 769
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_23
    const-string v2, "startFlag"

    const-string v3, "002"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 771
    const-string v2, "CombinationKeyManager"

    const-string v3, "OneTouchReport started"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_7c

    .line 776
    :goto_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-virtual {v2, v6, v3, v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 782
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_47
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 783
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 784
    :cond_61
    return-void

    .line 767
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_62
    :try_start_62
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const-string v4, "112"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_72} :catch_7c

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_23

    .line 778
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_74
    const-string v2, "CombinationKeyManager"

    const-string v3, "OneTouchReport was disable"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 773
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_7c
    move-exception v2

    goto :goto_3d
.end method
