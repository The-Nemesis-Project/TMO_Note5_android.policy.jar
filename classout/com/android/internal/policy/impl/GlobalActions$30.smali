.class Lcom/android/internal/policy/impl/GlobalActions$30;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;I)V
    .registers 3
    .param p2, "x0"    # I

    .prologue
    .line 3731
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 11
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x3

    const/4 v4, 0x0

    .line 3734
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->mSubId:I

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->getPhoneId(I)I
    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$6900(Lcom/android/internal/policy/impl/GlobalActions;I)I

    move-result v3

    .line 3737
    .local v3, "phoneId":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-nez p1, :cond_3e

    .line 3738
    :cond_15
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHasTelephony : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    :cond_3d
    :goto_3d
    return-void

    .line 3741
    :cond_3e
    const-string v5, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onServiceStateChanged("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MSim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isMSim()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlobalActions;->access$7000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMSimServiceState:[I
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$7100(Lcom/android/internal/policy/impl/GlobalActions;)[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    aput v6, v5, v3

    .line 3743
    const/4 v1, 0x0

    .line 3745
    .local v1, "inAirplaneMode":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_82
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mPhoneCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$7200(Lcom/android/internal/policy/impl/GlobalActions;)I

    move-result v5

    if-ge v0, v5, :cond_e2

    .line 3746
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isMSim()Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$7000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 3747
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isSimCardInserted(I)Z
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/GlobalActions;->access$7300(Lcom/android/internal/policy/impl/GlobalActions;I)Z

    move-result v5

    if-nez v5, :cond_b0

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isSimCardInserted(I)Z
    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$7300(Lcom/android/internal/policy/impl/GlobalActions;I)Z

    move-result v5

    if-nez v5, :cond_b0

    .line 3749
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMSimServiceState:[I
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$7100(Lcom/android/internal/policy/impl/GlobalActions;)[I

    move-result-object v5

    aget v5, v5, v4

    if-ne v5, v8, :cond_ad

    .line 3750
    const/4 v1, 0x1

    .line 3745
    :cond_ad
    :goto_ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 3753
    :cond_b0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isSimCardInserted(I)Z
    invoke-static {v5, v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$7300(Lcom/android/internal/policy/impl/GlobalActions;I)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMSimServiceState:[I
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$7100(Lcom/android/internal/policy/impl/GlobalActions;)[I

    move-result-object v5

    aget v5, v5, v0

    if-ne v5, v8, :cond_ad

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_ad

    .line 3756
    const/4 v1, 0x1

    goto :goto_ad

    .line 3760
    :cond_d6
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mMSimServiceState:[I
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$7100(Lcom/android/internal/policy/impl/GlobalActions;)[I

    move-result-object v5

    aget v5, v5, v4

    if-ne v5, v8, :cond_ad

    .line 3761
    const/4 v1, 0x1

    goto :goto_ad

    .line 3766
    :cond_e2
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_154

    .line 3767
    .local v2, "inAirplaneModeOn":Z
    :goto_f4
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " inAirplaneModeOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    if-ne v1, v2, :cond_3d

    .line 3773
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v1, :cond_156

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_11e
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/GlobalActions;->access$2302(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 3775
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAirplaneState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$2300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$30;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3d

    .end local v2    # "inAirplaneModeOn":Z
    :cond_154
    move v2, v4

    .line 3766
    goto :goto_f4

    .line 3773
    .restart local v2    # "inAirplaneModeOn":Z
    :cond_156
    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_11e
.end method
