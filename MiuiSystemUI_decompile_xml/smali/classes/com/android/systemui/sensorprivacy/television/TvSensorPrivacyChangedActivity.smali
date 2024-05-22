.class public Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;
.super Lcom/android/systemui/tv/TvBottomSheetActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCancelButton:Landroid/widget/Button;

.field public mContent:Landroid/widget/TextView;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public mIcon:Landroid/widget/ImageView;

.field public mPositiveButton:Landroid/widget/Button;

.field public mSecondIcon:Landroid/widget/ImageView;

.field public mSensor:I

.field public mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

.field public final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 6
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 10
    return-void
    .line 12
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
    iput p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

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
    iput p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    move-result-object p1

    .line 49
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_TOGGLE_TYPE:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 52
    move-result p1

    .line 55
    iget v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 56
    if-eq v1, v0, :cond_3

    .line 58
    if-ne p1, v0, :cond_1

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    const/4 v0, 0x1

    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 66
    return-void

    .line 69
    :cond_2
    new-instance p1, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

    .line 70
    invoke-direct {p1, p0}, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;)V

    .line 72
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

    .line 75
    const p1, 0x7f0a0151    # @id/bottom_sheet_title

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/TextView;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 86
    const p1, 0x7f0a014c    # @id/bottom_sheet_body

    .line 88
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p1

    .line 94
    check-cast p1, Landroid/widget/TextView;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 97
    const p1, 0x7f0a014d    # @id/bottom_sheet_icon

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/ImageView;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 108
    const p1, 0x7f0a0150    # @id/bottom_sheet_second_icon

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p1

    .line 116
    check-cast p1, Landroid/widget/ImageView;

    .line 117
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 119
    const p1, 0x7f0a014f    # @id/bottom_sheet_positive_button

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object p1

    .line 127
    check-cast p1, Landroid/widget/Button;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mPositiveButton:Landroid/widget/Button;

    .line 130
    const p1, 0x7f0a014e    # @id/bottom_sheet_negative_button

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 135
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/Button;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mCancelButton:Landroid/widget/Button;

    .line 141
    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 143
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 145
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mCancelButton:Landroid/widget/Button;

    .line 148
    new-instance v0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda1;

    .line 150
    invoke-direct {v0, p0}, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;)V

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->updateUI()V

    .line 158
    return-void

    .line 161
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 162
    return-void
    .line 165
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

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
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->updateUI()V

    .line 5
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyCallback:Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity$$ExternalSyntheticLambda0;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 10
    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method

.method public final updateUI()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f05006b    # @bool/config_unblockHwSensorIconEnableTint 'true'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    const v0, 0x7f06005c    # @color/bottom_sheet_icon_color '#d2e3fc'

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    .line 22
    move-result-object v2

    .line 25
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 26
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 32
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 41
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v0

    .line 65
    const v1, 0x7f071222    # @dimen/unblock_hw_sensor_icon_width '@dimen/bottom_sheet_icon_size'

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    move-result v1

    .line 72
    const v2, 0x7f071221    # @dimen/unblock_hw_sensor_icon_height '@dimen/bottom_sheet_icon_size'

    .line 73
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 76
    move-result v0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    move-result-object v2

    .line 85
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    move-result-object v2

    .line 93
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 98
    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    move-result-object v2

    .line 106
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    move-result-object v1

    .line 114
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 119
    iget v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensor:I

    .line 122
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 124
    const/4 v2, 0x2

    .line 126
    const/16 v3, 0x8

    .line 127
    if-eq v0, v2, :cond_4

    .line 129
    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 131
    const/4 v0, 0x1

    .line 133
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 134
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f130abb    # @string/sensor_privacy_mic_turned_off_dialog_title 'Microphone turned off'

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 148
    const-string v2, "receive_explicit_user_interaction_audio_enabled"

    .line 150
    invoke-interface {v1, v2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 152
    move-result v1

    .line 155
    if-ne v1, v0, :cond_1

    .line 156
    goto :goto_1

    .line 158
    :cond_1
    const/4 v0, 0x0

    .line 159
    :goto_1
    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f130ab9    # @string/sensor_privacy_mic_blocked_with_exception_dialog_content 'Microphone access is disabled for all apps and services. You can change this in Settings > Privacy > ...'

    .line 164
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    goto :goto_2

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f130ab8    # @string/sensor_privacy_mic_blocked_no_exception_dialog_content 'Microphone access is disabled for all apps and services. You can enable microphone access in Setting ...'

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 179
    const v1, 0x7f081985    # @drawable/unblock_hw_sensor_microphone '@drawable/ic_mic_off'

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 187
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    goto :goto_3

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 193
    const v1, 0x7f130abc    # @string/sensor_privacy_mic_turned_on_dialog_title 'Microphone turned on'

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 201
    const v1, 0x7f130abd    # @string/sensor_privacy_mic_unblocked_dialog_content 'Microphone is enabled for all apps and services.'

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 209
    const v1, 0x1080512    # @android:drawable/ic_pan_tool

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 217
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    goto :goto_3

    .line 222
    :cond_4
    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 223
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlockedByHardwareToggle(I)Z

    .line 225
    move-result v0

    .line 228
    if-eqz v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 231
    const v1, 0x7f130ab2    # @string/sensor_privacy_camera_turned_off_dialog_title 'Camera turned off'

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 239
    const v1, 0x7f130ab1    # @string/sensor_privacy_camera_blocked_dialog_content 'Camera access is disabled for all apps and services.'

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 247
    const v1, 0x7f081984    # @drawable/unblock_hw_sensor_camera '@drawable/ic_videocam_off'

    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 255
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    goto :goto_3

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mTitle:Landroid/widget/TextView;

    .line 261
    const v1, 0x7f130ab3    # @string/sensor_privacy_camera_turned_on_dialog_title 'Camera turned on'

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mContent:Landroid/widget/TextView;

    .line 269
    const v1, 0x7f130ab4    # @string/sensor_privacy_camera_unblocked_dialog_content 'Camera is enabled for all apps and services.'

    .line 271
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 277
    const v1, 0x108036a    # @android:drawable/ic_chooser_pin

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mSecondIcon:Landroid/widget/ImageView;

    .line 285
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mIcon:Landroid/widget/ImageView;

    .line 290
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 292
    move-result-object v0

    .line 295
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 296
    if-eqz v1, :cond_6

    .line 298
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 300
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mPositiveButton:Landroid/widget/Button;

    .line 305
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvSensorPrivacyChangedActivity;->mCancelButton:Landroid/widget/Button;

    .line 310
    const v0, 0x104000a    # @android:string/ok

    .line 312
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    .line 315
    return-void
    .line 318
.end method
