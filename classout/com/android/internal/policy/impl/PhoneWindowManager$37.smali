.class Lcom/android/internal/policy/impl/PhoneWindowManager$37;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$displayId:I

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I

.field final synthetic val$win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IILandroid/view/WindowManagerPolicy$WindowState;Z)V
    .registers 6

    .prologue
    .line 10047
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$displayId:I

    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$visibility:I

    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$needsMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 10051
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 10052
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1d

    .line 10054
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$displayId:I

    if-nez v2, :cond_1e

    .line 10056
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$visibility:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(IILjava/lang/String;)V

    .line 10057
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$needsMenu:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V

    .line 10070
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1d
    :goto_1d
    return-void

    .line 10061
    .restart local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1e
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$visibility:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$displayId:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibilityToDisplay(IILjava/lang/String;I)V

    .line 10062
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$needsMenu:Z

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->val$displayId:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChangedToDisplay(ZI)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_1d

    .line 10066
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_34
    move-exception v0

    .line 10068
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$37;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1d
.end method
