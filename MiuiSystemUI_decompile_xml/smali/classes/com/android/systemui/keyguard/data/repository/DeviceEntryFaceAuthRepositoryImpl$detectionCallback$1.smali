.class public final Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/face/FaceManager$FaceDetectionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFaceDetected(IIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->faceAuthLogger:Lcom/android/systemui/log/FaceAuthenticationLogger;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/log/FaceAuthenticationLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 6
    const-string v2, "DeviceEntryFaceAuthRepositoryLog"

    .line 8
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 10
    const-string v4, "Face detected"

    .line 12
    const/4 v5, 0x0

    .line 14
    const/16 v6, 0x8

    .line 15
    const/4 v7, 0x0

    .line 17
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 18
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl$detectionCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/DeviceEntryFaceAuthRepositoryImpl;->_detectionStatus:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 23
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;

    .line 25
    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/keyguard/shared/model/DetectionStatus;-><init>(IIZ)V

    .line 27
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 30
    return-void
    .line 33
.end method
