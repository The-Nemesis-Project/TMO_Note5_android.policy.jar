.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    .line 348
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 349
    return-void
.end method


# virtual methods
.method observe()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 356
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;Landroid/os/Handler;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 373
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$2;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    .line 384
    return-void
.end method

.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    .line 388
    return-void
.end method
