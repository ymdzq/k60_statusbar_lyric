.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onSensorBlockedChanged(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 10
    const/4 p2, 0x1

    .line 12
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 15
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 21
    const/4 p2, 0x2

    .line 23
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 26
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    :cond_0
    return-void

    .line 35
    :goto_0
    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    .line 36
    if-ne p1, v0, :cond_1

    .line 38
    if-nez p2, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 42
    :cond_1
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 46
.end method
