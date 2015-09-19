.class Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCapabilityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 2

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 612
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 613
    .local v0, "decorView":Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_62

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v6

    if-nez v6, :cond_62

    .line 615
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "type":Ljava/lang/String;
    const/4 v3, -0x1

    .line 618
    .local v3, "requestedPid":I
    :try_start_1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_63

    move-result v3

    .line 622
    :goto_25
    const/4 v6, -0x1

    if-le v3, v6, :cond_62

    .line 623
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 624
    .local v2, "pinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v2}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 625
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v3, :cond_62

    .line 626
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .local v5, "videoCapabilityAlert":Landroid/app/AlertDialog$Builder;
    const v6, 0x104000a

    new-instance v7, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver$1;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    const v6, 0x1040b67

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 635
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1402(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 636
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVideoCapabilityDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 640
    .end local v2    # "pinfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "requestedPid":I
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "videoCapabilityAlert":Landroid/app/AlertDialog$Builder;
    :cond_62
    return-void

    .line 619
    .restart local v3    # "requestedPid":I
    .restart local v4    # "type":Ljava/lang/String;
    :catch_63
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v6, "MultiPhoneWindow"

    const-string v7, "attached item in getType() is not an int type"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public register()V
    .registers 3

    .prologue
    .line 602
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.VIDEOCAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 604
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$VideoCapabilityReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 608
    return-void
.end method
