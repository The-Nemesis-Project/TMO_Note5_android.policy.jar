.class Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;
.super Landroid/os/Handler;
.source "CocktailPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;-><init>(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 119
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .line 120
    .local v1, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_78

    .line 145
    :cond_e
    :goto_e
    return-void

    .line 122
    :pswitch_f
    if-eqz v1, :cond_e

    .line 123
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 124
    .local v0, "bEnable":Z
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 125
    .local v4, "keyCode":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 126
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    .line 127
    .local v3, "isCoverOpened":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_47

    .line 128
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->setWillBeHideBlockMain(Z)V

    .line 135
    .end local v3    # "isCoverOpened":Z
    :cond_43
    :goto_43
    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->wakeupCocktailBar(ZI)V

    goto :goto_e

    .line 130
    .restart local v3    # "isCoverOpened":Z
    :cond_47
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBarBackground:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$000(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v7

    if-eqz v0, :cond_56

    if-eqz v3, :cond_56

    const/4 v5, 0x1

    :goto_52
    invoke-interface {v7, v5}, Landroid/view/WindowManagerPolicy$WindowState;->setWillBeHideBlockMain(Z)V

    goto :goto_43

    :cond_56
    move v5, v6

    goto :goto_52

    .line 132
    .end local v3    # "isCoverOpened":Z
    :cond_58
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 133
    iget-object v5, p0, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager$MessageHandler;->this$0:Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/cocktail/CocktailPhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy$WindowState;->setWillBeHideBlockMain(Z)V

    goto :goto_43

    .line 139
    .end local v0    # "bEnable":Z
    .end local v4    # "keyCode":I
    :pswitch_6a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 140
    .local v2, "enabled":Z
    if-eqz v1, :cond_e

    .line 141
    invoke-virtual {v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateSysfsGripDisable(Z)V

    goto :goto_e

    .line 120
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_f
        :pswitch_6a
    .end packed-switch
.end method
