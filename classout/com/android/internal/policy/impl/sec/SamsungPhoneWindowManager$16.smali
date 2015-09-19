.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 3910
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3914
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3915
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "app_id"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3916
    const-string v3, "feature"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFeatureForLogging:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1100(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3917
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 3918
    const-string v3, "extra"

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    :cond_31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3921
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3922
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3923
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3924
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_57
    .catchall {:try_start_1 .. :try_end_4c} :catchall_6d

    .line 3933
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFeatureForLogging:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    .line 3934
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    .line 3936
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_56
    return-void

    .line 3929
    :catch_57
    move-exception v2

    .line 3930
    .local v2, "e":Ljava/lang/Exception;
    :try_start_58
    const-string v3, "SamsungWindowManager"

    const-string v4, "insetLog Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_6d

    .line 3933
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFeatureForLogging:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    .line 3934
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_56

    .line 3933
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_6d
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mFeatureForLogging:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    .line 3934
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mExtraForLogging:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->access$1202(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/lang/String;)Ljava/lang/String;

    throw v3
.end method
