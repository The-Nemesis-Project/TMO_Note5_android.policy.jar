.class Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;
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
    .line 804
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 806
    # getter for: Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "CombinationKeyManager"

    const-string v3, "mFactoryTestChordLongPress : startActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.factory"

    const-string v3, "com.sec.factory.app.factorytest.FactoryTestMain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 814
    :try_start_1e
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_25} :catch_26

    .line 818
    :goto_25
    return-void

    .line 815
    :catch_26
    move-exception v0

    .line 816
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CombinationKeyManager"

    const-string v3, "No activity to launch factorytestmain."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method
