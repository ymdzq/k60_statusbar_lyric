.class public Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;
.super Lcom/android/systemui/tv/TvBottomSheetActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mCancelButton:Landroid/widget/Button;

.field public mContent:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;

.field public mPositiveButton:Landroid/widget/Button;

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public mSecondIcon:Landroid/widget/ImageView;

.field public mSensor:I

.field public mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;

.field public final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Landroid/app/AppOpsManager;Landroid/app/role/RoleManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 6
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 10
    iput-object p3, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mRoleManager:Landroid/app/role/RoleManager;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/tv/TvBottomSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object p1

    .line 8
    const/high16 v0, 0x80000

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    move-result-object p1

    .line 17
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 21
    move-result p1

    .line 24
    const/4 v0, -0x1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    const p1, 0x7fffffff

    .line 28
    iput p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    move-result-object p1

    .line 37
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 40
    move-result p1

    .line 43
    iput p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 44
    :goto_0
    iget p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 46
    if-ne p1, v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 50
    return-void

    .line 53
    :cond_1
    new-instance p1, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;

    .line 54
    invoke-direct {p1, p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;)V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;

    .line 59
    const p1, 0x7f0a0151    # @id/bottom_sheet_title

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/TextView;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mTitle:Landroid/widget/TextView;

    .line 70
    const p1, 0x7f0a014c    # @id/bottom_sheet_body

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/TextView;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mContent:Landroid/widget/TextView;

    .line 81
    const p1, 0x7f0a014d    # @id/bottom_sheet_icon

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/ImageView;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 92
    const p1, 0x7f0a0150    # @id/bottom_sheet_second_icon

    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/ImageView;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 103
    const p1, 0x7f0a014f    # @id/bottom_sheet_positive_button

    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object p1

    .line 111
    check-cast p1, Landroid/widget/Button;

    .line 112
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mPositiveButton:Landroid/widget/Button;

    .line 114
    const p1, 0x7f0a014e    # @id/bottom_sheet_negative_button

    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/Button;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mCancelButton:Landroid/widget/Button;

    .line 125
    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mCancelButton:Landroid/widget/Button;

    .line 132
    new-instance v0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;

    .line 134
    const/4 v1, 0x2

    .line 136
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;I)V

    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->updateUI()V

    .line 143
    return-void
    .line 146
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 8
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 11
    return-void
    .line 14
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->updateUI()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 10
    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method

.method public final setIconSize(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p1

    .line 9
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p2

    .line 13
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 19
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v0

    .line 27
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v0

    .line 40
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object p1

    .line 48
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 53
    return-void
    .line 56
.end method

.method public final setIconTint(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    const p1, 0x7f06005c    # @color/bottom_sheet_icon_color '#d2e3fc'

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 15
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 30
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 48
    return-void
    .line 51
.end method

.method public final updateUI()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mRoleManager:Landroid/app/role/RoleManager;

    .line 12
    const-string v2, "android.app.role.ASSISTANT"

    .line 14
    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 16
    move-result-object v1

    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-nez v1, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 29
    move-result v1

    .line 32
    iget-object v4, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 33
    const/16 v5, 0x79

    .line 35
    invoke-virtual {v4, v5, v1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    move v0, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move v0, v2

    .line 45
    :goto_1
    const v1, 0x10806c0    # @android:drawable/pointer_grab

    .line 46
    const v4, 0x7f07010a    # @dimen/bottom_sheet_icon_size '42.0dp'

    .line 49
    const/16 v5, 0x8

    .line 52
    const v6, 0x7f130ac4    # @string/sensor_privacy_start_use_mic_blocked_dialog_title 'Microphone is blocked'

    .line 54
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p0, v3}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->setIconTint(Z)V

    .line 59
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->setIconSize(II)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mTitle:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mContent:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f130ab7    # @string/sensor_privacy_htt_blocked_dialog_content 'To use the microphone button, enable microphone access in Settings.'

    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 83
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mPositiveButton:Landroid/widget/Button;

    .line 88
    const v1, 0x7f130ab6    # @string/sensor_privacy_dialog_open_settings 'Open Settings'

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mPositiveButton:Landroid/widget/Button;

    .line 96
    new-instance v1, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;

    .line 98
    invoke-direct {v1, p0, v3}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    goto/16 :goto_7

    .line 106
    :cond_2
    iget v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 108
    iget-object v7, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 110
    const v8, 0x7fffffff

    .line 112
    const/4 v9, 0x2

    .line 115
    if-ne v0, v8, :cond_5

    .line 116
    move-object v0, v7

    .line 118
    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 119
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 121
    move-result v10

    .line 124
    if-nez v10, :cond_4

    .line 125
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 127
    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    goto :goto_2

    .line 133
    :cond_3
    move v0, v2

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    :goto_2
    move v0, v3

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move-object v10, v7

    .line 138
    check-cast v10, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 139
    invoke-virtual {v10, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 141
    move-result v0

    .line 144
    :goto_3
    const v10, 0x7f130ac6    # @string/sensor_privacy_start_use_mic_camera_blocked_dialog_title 'The mic & camera are blocked'

    .line 145
    const v11, 0x7f130ac0    # @string/sensor_privacy_start_use_camera_blocked_dialog_title 'Camera is blocked'

    .line 148
    if-eqz v0, :cond_f

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 153
    move-result-object v0

    .line 156
    iget v1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 157
    if-eq v1, v3, :cond_6

    .line 159
    if-ne v1, v8, :cond_7

    .line 161
    :cond_6
    move-object v1, v7

    .line 163
    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 164
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 166
    move-result v1

    .line 169
    if-eqz v1, :cond_7

    .line 170
    move v1, v3

    .line 172
    goto :goto_4

    .line 173
    :cond_7
    move v1, v2

    .line 174
    :goto_4
    iget v4, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 175
    if-eq v4, v9, :cond_8

    .line 177
    if-ne v4, v8, :cond_9

    .line 179
    :cond_8
    check-cast v7, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 181
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 183
    move-result v4

    .line 186
    if-eqz v4, :cond_9

    .line 187
    move v2, v3

    .line 189
    :cond_9
    const v3, 0x7f05006b    # @bool/config_unblockHwSensorIconEnableTint 'true'

    .line 190
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 193
    move-result v3

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->setIconTint(Z)V

    .line 197
    const v3, 0x7f071222    # @dimen/unblock_hw_sensor_icon_width '@dimen/bottom_sheet_icon_size'

    .line 200
    const v4, 0x7f071221    # @dimen/unblock_hw_sensor_icon_height '@dimen/bottom_sheet_icon_size'

    .line 203
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->setIconSize(II)V

    .line 206
    if-eqz v1, :cond_b

    .line 209
    if-eqz v2, :cond_b

    .line 211
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mTitle:Landroid/widget/TextView;

    .line 213
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mContent:Landroid/widget/TextView;

    .line 218
    const v2, 0x7f130ac5    # @string/sensor_privacy_start_use_mic_camera_blocked_dialog_content 'To unblock them, move the privacy switch on your device to the unblocked position to allow access. R ...'

    .line 220
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 226
    const v2, 0x7f081982    # @drawable/unblock_hw_sensor_all '@drawable/ic_videocam_off'

    .line 228
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    const v1, 0x7f081983    # @drawable/unblock_hw_sensor_all_second '@drawable/ic_mic_off'

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    .line 237
    move-result-object v2

    .line 240
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 241
    move-result-object v0

    .line 244
    if-nez v0, :cond_a

    .line 245
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 247
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    goto :goto_5

    .line 252
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 253
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    goto :goto_5

    .line 258
    :cond_b
    if-eqz v2, :cond_c

    .line 259
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mTitle:Landroid/widget/TextView;

    .line 261
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mContent:Landroid/widget/TextView;

    .line 266
    const v1, 0x7f130abf    # @string/sensor_privacy_start_use_camera_blocked_dialog_content 'To unblock, move the privacy switch on your device to the camera on position to allow camera access. ...'

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 274
    const v1, 0x7f081984    # @drawable/unblock_hw_sensor_camera '@drawable/ic_videocam_off'

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 282
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    goto :goto_5

    .line 287
    :cond_c
    if-eqz v1, :cond_d

    .line 288
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mTitle:Landroid/widget/TextView;

    .line 290
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mContent:Landroid/widget/TextView;

    .line 295
    const v1, 0x7f130ac3    # @string/sensor_privacy_start_use_mic_blocked_dialog_content 'To unblock, move the privacy switch on your device to the microphone on position to allow microphone ...'

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 303
    const v1, 0x7f081985    # @drawable/unblock_hw_sensor_microphone '@drawable/ic_mic_off'

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 311
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 316
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 318
    move-result-object v0

    .line 321
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 322
    if-eqz v1, :cond_e

    .line 324
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 326
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 328
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mPositiveButton:Landroid/widget/Button;

    .line 331
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mCancelButton:Landroid/widget/Button;

    .line 336
    const v0, 0x104000a    # @android:string/ok

    .line 338
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    .line 341
    goto :goto_7

    .line 344
    :cond_f
    invoke-virtual {p0, v3}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->setIconTint(Z)V

    .line 345
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->setIconSize(II)V

    .line 348
    iget v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 351
    if-eq v0, v3, :cond_11

    .line 353
    const v3, 0x10806bb    # @android:drawable/pointer_copy_large_icon

    .line 355
    if-eq v0, v9, :cond_10

    .line 358
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mTitle:Landroid/widget/TextView;

    .line 360
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mContent:Landroid/widget/TextView;

    .line 365
    const v4, 0x7f130ac7    # @string/sensor_privacy_start_use_mic_camera_dialog_content 'This unblocks access for all apps and services allowed to use your camera or microphone.'

    .line 367
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 373
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    goto :goto_6

    .line 383
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mTitle:Landroid/widget/TextView;

    .line 384
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mContent:Landroid/widget/TextView;

    .line 389
    const v1, 0x7f130ac1    # @string/sensor_privacy_start_use_camera_dialog_content 'This unblocks access for all apps and services allowed to use your camera.'

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 397
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 402
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    goto :goto_6

    .line 407
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mTitle:Landroid/widget/TextView;

    .line 408
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mContent:Landroid/widget/TextView;

    .line 413
    const v3, 0x7f130ac9    # @string/sensor_privacy_start_use_mic_dialog_content 'This unblocks access for all apps and services allowed to use your microphone.'

    .line 415
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mIcon:Landroid/widget/ImageView;

    .line 421
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 426
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mPositiveButton:Landroid/widget/Button;

    .line 431
    const v1, 0x1040917    # @android:string/unsupported_compile_sdk_message

    .line 433
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mPositiveButton:Landroid/widget/Button;

    .line 439
    new-instance v1, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;

    .line 441
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;I)V

    .line 443
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    :goto_7
    return-void
    .line 449
.end method
