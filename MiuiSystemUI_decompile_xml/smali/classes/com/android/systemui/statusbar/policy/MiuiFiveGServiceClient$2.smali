.class public final Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;
.super Lcom/qti/extphone/ExtPhoneCallbackBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 2
    invoke-direct {p0}, Lcom/qti/extphone/ExtPhoneCallbackBase;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final on5gConfigInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "on5gConfigInfo: slotId = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " token = "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string p2, " status"

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p2, " NrConfigType = "

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    const-string v0, "on5gConfigInfo"

    .line 40
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    .line 45
    move-result p2

    .line 48
    const/4 p3, 0x1

    .line 49
    if-ne p2, p3, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 54
    const p2, 0x186a5

    .line 56
    const/4 p3, -0x1

    .line 59
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    :cond_0
    return-void
    .line 67
.end method

.method public final onAnyNrBearerAllocation(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onAnyNrBearerAllocation: slotId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " token="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string p2, " status="

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p2, " bearerStatus="

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p4}, Lcom/qti/extphone/BearerAllocationStatus;->getBearerAllocationStatus()I

    .line 33
    move-result p2

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 43
    const-string v0, "onAnyNrBearerAllocation"

    .line 44
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    .line 49
    move-result p2

    .line 52
    const/4 p3, 0x1

    .line 53
    if-ne p2, p3, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 58
    const p2, 0x186a2

    .line 60
    const/4 p3, -0x1

    .line 63
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    :cond_0
    return-void
    .line 71
.end method

.method public final onNrDcParam(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onNrDcParam: slotId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " token="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string p2, " status="

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p2, " dcParam="

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    const-string v0, "onNrDcParam"

    .line 40
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    .line 45
    move-result p2

    .line 48
    const/4 p3, 0x1

    .line 49
    if-ne p2, p3, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 54
    const p2, 0x186a1

    .line 56
    const/4 p3, -0x1

    .line 59
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    :cond_0
    return-void
    .line 67
.end method

.method public final onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onNrIconType: slotId = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " token = "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string p2, " status"

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p2, " NrIconType = "

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 39
    const-string v0, "onNrIconType"

    .line 40
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    .line 45
    move-result p2

    .line 48
    const/4 p3, 0x1

    .line 49
    if-ne p2, p3, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 54
    const p2, 0x186a6

    .line 56
    const/4 p3, -0x1

    .line 59
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    :cond_0
    return-void
    .line 67
.end method

.method public final onSignalStrength(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onSignalStrength: slotId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " token="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string p2, " status="

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p2, " signalStrength="

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string p2, " mIsCustForJpKd="

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 41
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForJpKd:Z

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    const-string p2, " mIsCustForJpRk="

    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 53
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForJpRk:Z

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 63
    const-string v0, "onSignalStrength"

    .line 64
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    .line 69
    move-result p2

    .line 72
    const/4 p3, 0x1

    .line 73
    if-ne p2, p3, :cond_0

    .line 74
    if-eqz p4, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 78
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForJpKd:Z

    .line 80
    if-nez p2, :cond_0

    .line 82
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForJpRk:Z

    .line 84
    if-nez p2, :cond_0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 88
    const p2, 0x186a4

    .line 90
    const/4 p3, -0x1

    .line 93
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    :cond_0
    return-void
    .line 101
.end method

.method public final onUpperLayerIndInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onUpperLayerIndInfo: slotId="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " token="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string p2, " status="

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p2, " plmn="

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p4}, Lcom/qti/extphone/UpperLayerIndInfo;->getPlmnInfoListAvailable()I

    .line 33
    move-result p2

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p2, " upperLayerIndInfo="

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p4}, Lcom/qti/extphone/UpperLayerIndInfo;->getUpperLayerIndInfoAvailable()I

    .line 45
    move-result p2

    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 55
    const-string v0, "onUpperLayerIndInfo"

    .line 56
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    .line 61
    move-result p2

    .line 64
    const/4 p3, 0x1

    .line 65
    if-ne p2, p3, :cond_0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 70
    const p2, 0x186a3

    .line 72
    const/4 p3, -0x1

    .line 75
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 80
    :cond_0
    return-void
    .line 83
.end method
