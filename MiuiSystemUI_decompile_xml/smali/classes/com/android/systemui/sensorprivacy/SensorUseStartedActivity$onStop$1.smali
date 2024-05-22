.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    .line 8
    sget v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->$r8$clinit:I

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->setSuppressed(Z)V

    .line 13
    return-void

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    .line 17
    sget v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->$r8$clinit:I

    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->disableSensorPrivacy()V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    .line 26
    if-nez p0, :cond_0

    .line 28
    const/4 p0, 0x0

    .line 30
    :cond_0
    const/16 v0, 0x17e

    .line 31
    const/4 v1, 0x1

    .line 33
    invoke-static {v0, v1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
