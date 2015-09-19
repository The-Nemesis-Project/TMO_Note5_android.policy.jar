.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->startMultiWindowRecentsActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 1498
    const-string v0, "com.samsung.android.systemui.recents.SHOW_SPLIT"

    .line 1499
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.android.systemui"

    .line 1500
    .local v4, "pkg":Ljava/lang/String;
    const-string v1, "com.android.systemui.multiwindow.RecentsMultiWindowActivity"

    .line 1502
    .local v1, "activity":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    const/high16 v6, 0x10810000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1507
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 1508
    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1509
    const/high16 v6, 0x2000000

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1510
    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1511
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1513
    :try_start_2b
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_3f

    .line 1518
    :goto_34
    iget-object v6, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "RCLP"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    return-void

    .line 1514
    :catch_3f
    move-exception v2

    .line 1515
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method
