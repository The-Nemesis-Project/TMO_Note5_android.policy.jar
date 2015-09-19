.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 360
    if-eqz p2, :cond_f

    const-string v0, "multi_window_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 370
    :goto_e
    return-void

    .line 363
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mIsRecentUI:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mFirstMultiWindowSettingOn:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->access$202(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;Z)Z

    .line 368
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->updateSettings()V

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver$1;->this$1:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    goto :goto_e
.end method
