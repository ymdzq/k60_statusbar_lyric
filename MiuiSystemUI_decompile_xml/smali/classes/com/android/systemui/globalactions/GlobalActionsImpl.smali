.class public final Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisabled:Z

.field public final mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 11
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 13
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 15
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 17
    return-void
    .line 20
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->destroy()V

    .line 9
    return-void
    .line 12
.end method

.method public final disable(IIIZ)V
    .locals 0

    .line 1
    and-int/lit8 p2, p3, 0x8

    .line 2
    const/4 p3, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p2, p3

    .line 9
    :goto_0
    iget-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {p4}, Landroid/content/Context;->getDisplayId()I

    .line 12
    move-result p4

    .line 15
    if-ne p1, p4, :cond_2

    .line 16
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    .line 18
    if-ne p2, p1, :cond_1

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    .line 23
    if-eqz p2, :cond_2

    .line 25
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 27
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    .line 29
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    .line 34
    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    :cond_2
    :goto_1
    return-void
    .line 39
.end method

.method public final showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 11
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 13
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->showOrHideDialog(ZZLcom/android/systemui/animation/Expandable;)V

    .line 24
    return-void
    .line 27
.end method

.method public final showShutdownUi(ZLjava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/scrim/ScrimDrawable;-><init>()V

    .line 4
    new-instance v1, Landroid/app/Dialog;

    .line 7
    const v2, 0x7f140568    # @style/Theme.SystemUI.Dialog.GlobalActions

    .line 9
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 12
    invoke-direct {v1, v3, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 14
    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsImpl;Lcom/android/systemui/scrim/ScrimDrawable;Landroid/app/Dialog;)V

    .line 19
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 22
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    move-result-object v2

    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 30
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 33
    move-result-object v4

    .line 36
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 37
    or-int/lit16 v5, v5, 0x700

    .line 39
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 41
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 43
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 46
    move-result-object v4

    .line 49
    const/4 v5, -0x1

    .line 50
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 53
    move-result-object v4

    .line 56
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 59
    move-result-object v4

    .line 62
    const/4 v5, 0x3

    .line 63
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 64
    const/16 v4, 0x7e4

    .line 66
    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 68
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 71
    move-result-object v4

    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 76
    const/4 v4, 0x2

    .line 79
    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 80
    const v4, 0x10d0120

    .line 83
    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 86
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    const v0, 0x7f140020    # @style/Animation.ShutdownUi

    .line 92
    invoke-virtual {v2, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 95
    const v0, 0x109011f    # @android:layout/simple_account_item

    .line 98
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 101
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 104
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    .line 109
    move-result p0

    .line 112
    if-eqz p0, :cond_0

    .line 113
    const p0, 0x7f0408ae    # @attr/wallpaperTextColor

    .line 115
    invoke-static {v3, p0, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 118
    move-result p0

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 123
    move-result-object p0

    .line 126
    const v0, 0x7f06014c    # @color/global_actions_shutdown_ui_text '@color/control_primary_text'

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 130
    move-result p0

    .line 133
    :goto_0
    const v0, 0x102000d    # @android:id/progress

    .line 134
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/ProgressBar;

    .line 141
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 143
    move-result-object v0

    .line 146
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 147
    const v0, 0x1020014    # @android:id/text1

    .line 150
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 153
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/TextView;

    .line 157
    const v2, 0x1020015    # @android:id/text2

    .line 159
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v2

    .line 165
    check-cast v2, Landroid/widget/TextView;

    .line 166
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    const-string p0, "recovery"

    .line 174
    const-string v4, "recovery-update"

    .line 176
    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    move-result v6

    .line 183
    if-eqz v6, :cond_1

    .line 184
    const p1, 0x10408a3    # @android:string/sms_short_code_confirm_allow

    .line 186
    goto :goto_2

    .line 189
    :cond_1
    const v6, 0x104089f    # @android:string/sms_control_no

    .line 190
    if-eqz p2, :cond_2

    .line 193
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v7

    .line 198
    if-eqz v7, :cond_2

    .line 199
    goto :goto_1

    .line 201
    :cond_2
    if-eqz p1, :cond_3

    .line 202
    :goto_1
    move p1, v6

    .line 204
    goto :goto_2

    .line 205
    :cond_3
    const p1, 0x104093c    # @android:string/vdm_pip_blocked

    .line 206
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    if-eqz p2, :cond_4

    .line 212
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 214
    move-result p1

    .line 217
    if-eqz p1, :cond_4

    .line 218
    const p0, 0x10408a4    # @android:string/sms_short_code_confirm_always_allow

    .line 220
    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 226
    goto :goto_3

    .line 227
    :cond_4
    if-eqz p2, :cond_5

    .line 228
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result p0

    .line 233
    if-eqz p0, :cond_5

    .line 234
    const p0, 0x10408a0    # @android:string/sms_control_title

    .line 236
    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    move-result-object p0

    .line 242
    goto :goto_3

    .line 243
    :cond_5
    const/4 p0, 0x0

    .line 244
    :goto_3
    if-eqz p0, :cond_6

    .line 245
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_6
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 253
    return-void
    .line 256
.end method
