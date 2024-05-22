.class public final synthetic Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_2

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;

    .line 9
    sget p1, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->$r8$clinit:I

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 16
    const-string v1, "android.settings.MANAGE_MICROPHONE_PRIVACY"

    .line 18
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    move-result-object v1

    .line 26
    const/high16 v2, 0x100000

    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 29
    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    const p1, 0x1040664    # @android:string/permdesc_camera

    .line 35
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 38
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 52
    :goto_0
    return-void

    .line 55
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;

    .line 56
    iget p1, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensor:I

    .line 58
    const v1, 0x7fffffff

    .line 60
    const/4 v2, 0x5

    .line 63
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 64
    if-ne p1, v1, :cond_1

    .line 66
    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 68
    const/4 p1, 0x2

    .line 70
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    .line 71
    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    .line 75
    goto :goto_1

    .line 78
    :cond_1
    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 79
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    .line 81
    :goto_1
    return-void

    .line 84
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;

    .line 85
    sget p1, Lcom/android/systemui/sensorprivacy/television/TvUnblockSensorActivity;->$r8$clinit:I

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 89
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 94
.end method
