.class Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;Lcom/android/internal/policy/impl/MultiPhoneWindow$CustomTabLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 3

    .prologue
    .line 3373
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->val$this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 3376
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v1, :cond_1c

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TabContainer::onTabChanged tabId(stackId) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 3379
    :try_start_26
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->vibrateImmVibeFromWindow([BI)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_45} :catch_86

    .line 3383
    :goto_45
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 3384
    sget-boolean v1, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG_TAB:Z

    if-eqz v1, :cond_85

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TabContainer::onTabChanged same tabId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_85
    :goto_85
    return-void

    .line 3380
    :catch_86
    move-exception v0

    .line 3381
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45

    .line 3387
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8b
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusedStack(IZ)V

    .line 3389
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v2, v2, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;

    iget-object v3, v3, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$TabContainer;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_85
.end method
