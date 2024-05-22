.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Lcom/android/systemui/controls/ui/ControlKey;

.field public final synthetic $response:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlKey;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->$key:Lcom/android/systemui/controls/ui/ControlKey;

    .line 4
    iput p3, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->$response:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlViewsById:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->$key:Lcom/android/systemui/controls/ui/ControlKey;

    .line 6
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 14
    if-eqz v0, :cond_8

    .line 16
    iget p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onActionResponse$1;->$response:I

    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 20
    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 24
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 26
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 28
    check-cast v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 30
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->actionsInProgress:Ljava/util/Set;

    .line 32
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 37
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    move v1, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v2

    .line 45
    :goto_0
    const/4 v4, 0x0

    .line 46
    if-eqz p0, :cond_7

    .line 47
    if-eq p0, v3, :cond_6

    .line 49
    const/4 v5, 0x2

    .line 51
    if-eq p0, v5, :cond_5

    .line 52
    iget-object v5, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    .line 54
    const/4 v6, 0x3

    .line 56
    if-eq p0, v6, :cond_3

    .line 57
    const/4 v4, 0x4

    .line 59
    if-eq p0, v4, :cond_2

    .line 60
    const/4 v2, 0x5

    .line 62
    if-eq p0, v2, :cond_1

    .line 63
    goto/16 :goto_2

    .line 65
    :cond_1
    invoke-static {v0, v3, v1, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

    .line 67
    move-result-object p0

    .line 70
    iput-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 71
    if-eqz p0, :cond_8

    .line 73
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 75
    goto/16 :goto_2

    .line 78
    :cond_2
    invoke-static {v0, v2, v1, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

    .line 80
    move-result-object p0

    .line 83
    iput-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 84
    if-eqz p0, :cond_8

    .line 86
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 88
    goto :goto_2

    .line 91
    :cond_3
    iget-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    .line 92
    if-nez p0, :cond_4

    .line 94
    const-string p0, "ControlsUiController"

    .line 96
    const-string v1, "Confirmation Dialog attempted but no last action is set. Will not show"

    .line 98
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_1

    .line 103
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 104
    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 106
    const v4, 0x10302d1    # @android:style/Theme.DeviceDefault.Dialog.Alert

    .line 108
    invoke-direct {v1, v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    move-result-object v2

    .line 117
    iget-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 118
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 120
    move-result-object v4

    .line 123
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 124
    move-result-object v4

    .line 127
    const v6, 0x7f1302f1    # @string/controls_confirmation_message 'Confirm change for %s'

    .line 128
    invoke-virtual {v2, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;

    .line 138
    invoke-direct {v2, v0, p0, v3}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;I)V

    .line 140
    const p0, 0x104000a    # @android:string/ok

    .line 143
    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;

    .line 149
    invoke-direct {p0, v3, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 151
    const/high16 v2, 0x1040000    # @android:string/cancel

    .line 154
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 159
    move-result-object v4

    .line 162
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 163
    move-result-object p0

    .line 166
    const/16 v1, 0x7e4

    .line 167
    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    .line 169
    :goto_1
    iput-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 172
    if-eqz v4, :cond_8

    .line 174
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 176
    goto :goto_2

    .line 179
    :cond_5
    iput-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 180
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    .line 182
    goto :goto_2

    .line 185
    :cond_6
    iput-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 186
    goto :goto_2

    .line 188
    :cond_7
    iput-object v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    .line 189
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    .line 191
    :cond_8
    :goto_2
    return-void
    .line 194
.end method
