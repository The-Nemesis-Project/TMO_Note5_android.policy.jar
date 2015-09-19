.class Lcom/android/internal/policy/impl/GlobalActions$7;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .registers 13
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1192
    invoke-super/range {p0 .. p4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v9

    .line 1193
    .local v9, "v":Landroid/view/View;
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x6f

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v10

    .line 1194
    .local v0, "arg1":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x70

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 1195
    .local v1, "arg2":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x71

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1197
    .local v2, "arg3":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v12, "getSealedModeString"

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$3300(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1198
    .local v7, "proKioskString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v12, "getSealedModeString"

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$3300(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1199
    .local v6, "proKioskStatusOnString":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v12, "getSealedModeString"

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11, v12, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$3300(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1205
    .local v5, "proKioskStatusOffString":Ljava/lang/String;
    const v10, 0x102000b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1206
    .local v3, "messageView":Landroid/widget/TextView;
    const v10, 0x1020370

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1207
    .local v8, "statusView":Landroid/widget/TextView;
    if-eqz v7, :cond_5d

    .line 1208
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    :cond_5d
    iget-object v10, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v11, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v10, v11, :cond_69

    iget-object v10, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v11, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v10, v11, :cond_72

    :cond_69
    const/4 v4, 0x1

    .line 1211
    .local v4, "on":Z
    :goto_6a
    if-eqz v4, :cond_74

    .line 1212
    if-eqz v6, :cond_71

    .line 1213
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    :cond_71
    :goto_71
    return-object v9

    .line 1210
    .end local v4    # "on":Z
    :cond_72
    const/4 v4, 0x0

    goto :goto_6a

    .line 1216
    .restart local v4    # "on":Z
    :cond_74
    if-eqz v5, :cond_71

    .line 1217
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_71
.end method

.method public onToggle(Z)V
    .registers 16
    .param p1, "on"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1138
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v10, "getSealedState"

    iget-object v11, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mTempStringArray:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/policy/impl/GlobalActions;->access$3200(Lcom/android/internal/policy/impl/GlobalActions;)[Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v11}, Lcom/android/internal/policy/impl/GlobalActions;->access$3300(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 1139
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1140
    .local v5, "i":Landroid/content/Intent;
    new-array v0, v13, [Ljava/lang/String;

    const/16 v8, 0xdd

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v12

    .line 1141
    .local v0, "arg1":[Ljava/lang/String;
    new-array v1, v13, [Ljava/lang/String;

    const/16 v8, 0xde

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v12

    .line 1143
    .local v1, "arg2":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v10, "getSealedExitUI"

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$3300(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "exitUiPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const-string v9, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v10, "getSealedExitUI"

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9, v10, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$3300(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1147
    .local v3, "exitUiClass":Ljava/lang/String;
    move-object v7, v3

    .line 1148
    .local v7, "qualClass":Ljava/lang/String;
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mProKioskExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$3400()Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 1149
    .local v6, "proKioskExitDialog":Landroid/app/AlertDialog;
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/GlobalActions;->access$3500(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 1150
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1155
    :goto_61
    if-eqz v4, :cond_cb

    if-eqz v3, :cond_cb

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_cb

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_cb

    .line 1156
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_90

    .line 1157
    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 1158
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1163
    :cond_90
    :goto_90
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1166
    :try_start_98
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions$7;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_98 .. :try_end_a3} :catch_c6

    .line 1174
    .end local v0    # "arg1":[Ljava/lang/String;
    .end local v1    # "arg2":[Ljava/lang/String;
    .end local v3    # "exitUiClass":Ljava/lang/String;
    .end local v4    # "exitUiPackage":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "proKioskExitDialog":Landroid/app/AlertDialog;
    .end local v7    # "qualClass":Ljava/lang/String;
    :cond_a3
    :goto_a3
    return-void

    .line 1152
    .restart local v0    # "arg1":[Ljava/lang/String;
    .restart local v1    # "arg2":[Ljava/lang/String;
    .restart local v3    # "exitUiClass":Ljava/lang/String;
    .restart local v4    # "exitUiPackage":Ljava/lang/String;
    .restart local v5    # "i":Landroid/content/Intent;
    .restart local v6    # "proKioskExitDialog":Landroid/app/AlertDialog;
    .restart local v7    # "qualClass":Ljava/lang/String;
    :cond_a4
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7de

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    goto :goto_61

    .line 1160
    :cond_ae
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_90

    .line 1167
    :catch_c6
    move-exception v2

    .line 1168
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_a3

    .line 1171
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_cb
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_a3
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 1182
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 1186
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 1177
    const/4 v0, 0x1

    return v0
.end method
