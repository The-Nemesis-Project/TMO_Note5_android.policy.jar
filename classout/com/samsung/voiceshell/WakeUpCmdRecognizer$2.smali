.class Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->init()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V
    .registers 2

    .prologue
    .line 456
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 461
    :goto_3
    :try_start_3
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 463
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-nez v8, :cond_37

    .line 465
    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_19

    goto :goto_3

    .line 674
    :catch_19
    move-exception v7

    .line 676
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception error in Enroll : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_36
    :goto_36
    return-void

    .line 469
    :cond_37
    const/4 v2, 0x0

    .line 470
    .local v2, "iResult":I
    const/4 v6, 0x0

    .line 471
    .local v6, "recResult":I
    const/4 v0, 0x0

    .line 472
    .local v0, "ReENROLL":Z
    const/4 v8, 0x4

    :try_start_3b
    new-array v5, v8, [S

    .line 475
    .local v5, "probINDEX":[S
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeEnroll()I

    move-result v8

    if-ne v8, v12, :cond_60

    .line 477
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8, v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    .line 478
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z
    invoke-static {v8, v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$102(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    .line 479
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    .line 480
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto :goto_36

    .line 484
    :cond_60
    const/4 v3, -0x1

    .line 485
    .local v3, "nCheckResult":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_62
    if-ge v1, v14, :cond_be

    .line 487
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x65

    invoke-virtual {v8, v9, v1, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 489
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_301

    .line 491
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "background_enroll, WType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", WMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", index : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryProcessEnroll()I

    move-result v4

    .line 494
    .local v4, "nProcessEnroll":I
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-nez v8, :cond_cb

    .line 496
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Stop!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v4    # "nProcessEnroll":I
    :cond_be
    :goto_be
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    .line 671
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/4 v9, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8, v9}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z

    goto/16 :goto_3

    .line 499
    .restart local v4    # "nProcessEnroll":I
    :cond_cb
    const/4 v8, -0x5

    if-ne v4, v8, :cond_f4

    .line 501
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERROR: sensoryProcessEnroll : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x69

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto :goto_be

    .line 505
    :cond_f4
    if-gtz v4, :cond_11c

    .line 507
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ERROR: sensoryProcessEnroll : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto :goto_be

    .line 512
    :cond_11c
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-nez v8, :cond_12e

    .line 514
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Stop background_enroll!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 518
    :cond_12e
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Lock process"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v8, 0x1

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$402(Z)Z

    .line 520
    if-nez v0, :cond_2b9

    .line 522
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    add-int/lit8 v9, v1, 0x1

    int-to-short v9, v9

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkResultEnroll(SS)I

    move-result v6

    .line 529
    :goto_14e
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "background_enroll, Unlock process, recResult : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v8, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$402(Z)Z

    .line 532
    const/4 v3, -0x1

    .line 533
    if-nez v6, :cond_2ec

    .line 535
    const/4 v2, -0x1

    .line 567
    .end local v4    # "nProcessEnroll":I
    :goto_172
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "secMM: ProcessEnroll.result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nCheckResult : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-ne v2, v14, :cond_380

    .line 571
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x66

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v1, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 573
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Lock process"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v8, 0x1

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$402(Z)Z

    .line 576
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_309

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_309

    .line 578
    const/4 v8, 0x3

    if-lt v1, v8, :cond_1c1

    .line 580
    const/4 v3, -0x1

    .line 582
    :cond_1c1
    const/4 v8, 0x0

    int-to-short v9, v1

    aput-short v9, v5, v8

    .line 583
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    add-int/lit8 v9, v9, -0x1

    int-to-short v9, v9

    invoke-virtual {v8, v9, v5, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->consistencyCheckEnroll(S[SI)I

    move-result v3

    .line 589
    :cond_1d4
    :goto_1d4
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Unlock process"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v8, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$402(Z)Z

    .line 592
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "consistencyCheckEnroll.result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    if-ne v3, v14, :cond_34a

    .line 596
    const/4 v0, 0x0

    .line 598
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Lock process"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v8, 0x1

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$402(Z)Z

    .line 600
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_325

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_325

    .line 602
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "secMM: Start doEnroll"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v8, :cond_23b

    .line 605
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    .line 607
    :cond_23b
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "secMM: End doEnroll"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_246
    :goto_246
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "background_enroll, Unlock process"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v8, 0x0

    # setter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isLockProcess:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$402(Z)Z

    .line 617
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_273

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_269

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_273

    .line 619
    :cond_269
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    aget-short v10, v5, v10

    invoke-virtual {v8, v9, v10, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    .line 661
    :cond_273
    :goto_273
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_287

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_3b8

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-nez v8, :cond_3b8

    .line 663
    :cond_287
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Stop background_enroll!, isRunning_enroll : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ThreadEnable : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_be

    .line 526
    .restart local v4    # "nProcessEnroll":I
    :cond_2b9
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VSG: ReENROLL for index : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-short v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    const/4 v9, 0x0

    aget-short v9, v5, v9

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkResultEnroll(SS)I

    move-result v6

    goto/16 :goto_14e

    .line 537
    :cond_2ec
    if-ne v6, v13, :cond_2f2

    .line 539
    add-int/lit8 v2, v1, 0x1

    goto/16 :goto_172

    .line 541
    :cond_2f2
    const/4 v8, 0x2

    if-lt v6, v8, :cond_2f9

    .line 549
    const/4 v2, 0x4

    .line 551
    move v3, v6

    goto/16 :goto_172

    .line 553
    :cond_2f9
    if-gez v6, :cond_2fe

    .line 555
    const/4 v2, -0x3

    goto/16 :goto_172

    .line 559
    :cond_2fe
    const/4 v2, -0x1

    goto/16 :goto_172

    .line 564
    .end local v4    # "nProcessEnroll":I
    :cond_301
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-virtual {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ProcessEnroll()I

    move-result v2

    goto/16 :goto_172

    .line 585
    :cond_309
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v8, :cond_1d4

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v8, :cond_1d4

    .line 587
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10}, Lcom/samsung/voiceshell/VoiceEngine;->consistencyCheckEnroll(Ljava/lang/String;S)I

    move-result v3

    goto/16 :goto_1d4

    .line 609
    :cond_325
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v8, :cond_246

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v8, :cond_246

    .line 611
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v11, v11, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/VoiceEngine;->setModelStatus(Ljava/lang/String;IS)I

    .line 612
    sget-object v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    iget-object v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-short v9, v9, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    const/4 v10, 0x1

    aput v10, v8, v9

    goto/16 :goto_246

    .line 622
    :cond_34a
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    # getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z
    invoke-static {v8}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z

    move-result v8

    if-eqz v8, :cond_273

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v8, :cond_35e

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-boolean v8, v8, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-eqz v8, :cond_273

    .line 626
    :cond_35e
    const/4 v8, 0x5

    if-ne v3, v8, :cond_370

    .line 628
    const/4 v0, 0x1

    .line 629
    add-int/lit8 v1, v1, -0x1

    .line 631
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    aget-short v10, v5, v10

    invoke-virtual {v8, v9, v10, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_273

    .line 633
    :cond_370
    const/4 v8, 0x6

    if-lt v3, v8, :cond_273

    .line 635
    const/4 v0, 0x0

    .line 637
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x0

    aget-short v10, v5, v10

    invoke-virtual {v8, v9, v10, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_be

    .line 641
    :cond_380
    if-eq v2, v12, :cond_385

    const/4 v8, -0x2

    if-ne v2, v8, :cond_389

    .line 643
    :cond_385
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_273

    .line 645
    :cond_389
    const/4 v8, -0x3

    if-ne v2, v8, :cond_396

    .line 647
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x67

    const/4 v10, 0x6

    invoke-virtual {v8, v9, v1, v10}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_be

    .line 650
    :cond_396
    const/4 v8, -0x4

    if-ne v2, v8, :cond_3aa

    .line 652
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x68

    iget-object v10, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    iget-object v10, v10, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    const/4 v11, 0x0

    aget-short v10, v10, v11

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_be

    .line 655
    :cond_3aa
    const/4 v8, -0x5

    if-ne v2, v8, :cond_273

    .line 657
    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    const/16 v9, 0x69

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SendHandlerMessage(III)V

    goto/16 :goto_be

    .line 667
    :cond_3b8
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3bd
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3bd} :catch_19

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_62
.end method
