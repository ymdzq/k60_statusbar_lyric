.class public final synthetic Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onSensorBlockedChanged(IZ)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;

    .line 2
    iget v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 4
    const v1, 0x7fffffff

    .line 6
    const v2, 0x7f130aba    # @string/sensor_privacy_mic_camera_unblocked_toast_content 'Microphone and camera available'

    .line 9
    const v3, 0x7f130ab5    # @string/sensor_privacy_camera_unblocked_toast_content 'Camera available'

    .line 12
    const/4 v4, 0x0

    .line 15
    const v5, 0x7f130abe    # @string/sensor_privacy_mic_unblocked_toast_content 'Microphone available'

    .line 16
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x2

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 25
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 33
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    iget p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 39
    if-eq p1, v6, :cond_1

    .line 41
    if-eq p1, v7, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    move v2, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v2, v5

    .line 48
    :goto_0
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 49
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 56
    goto :goto_2

    .line 59
    :cond_2
    iget v0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 60
    if-ne v0, p1, :cond_5

    .line 62
    if-nez p2, :cond_5

    .line 64
    if-eq v0, v6, :cond_4

    .line 66
    if-eq v0, v7, :cond_3

    .line 68
    goto :goto_1

    .line 70
    :cond_3
    move v2, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move v2, v5

    .line 73
    :goto_1
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 74
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 81
    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->updateUI()V

    .line 85
    :goto_2
    return-void
    .line 88
.end method
