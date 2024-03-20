.class Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;
.super Lcom/qti/extphone/IExtPhoneCallback$Stub;
.source "ExtPhoneCallbackListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/ExtPhoneCallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IExtPhoneCallbackStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;
    }
.end annotation


# instance fields
.field private mExtPhoneCallbackListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qti/extphone/ExtPhoneCallbackListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qti/extphone/ExtPhoneCallbackListener;)V
    .locals 1

    .line 780
    invoke-direct {p0}, Lcom/qti/extphone/IExtPhoneCallback$Stub;-><init>()V

    .line 781
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->mExtPhoneCallbackListenerWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private send(IIILjava/lang/Object;)V
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->mExtPhoneCallbackListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qti/extphone/ExtPhoneCallbackListener;

    if-eqz p0, :cond_0

    .line 788
    invoke-static {p0}, Lcom/qti/extphone/ExtPhoneCallbackListener;->-$$Nest$fgetmHandler(Lcom/qti/extphone/ExtPhoneCallbackListener;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const-string p0, "ExtPhoneCallbackListener"

    const-string p1, " listener is null"

    .line 791
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getFacilityLockForAppResponse(Lcom/qti/extphone/Status;[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public getNetworkSelectionModeResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public getQosParametersResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    .line 847
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/4 p1, 0x4

    const/4 p2, 0x0

    .line 846
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 961
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    .line 960
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public networkScanResult(ILcom/qti/extphone/Token;IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qti/extphone/Token;",
            "II",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1007
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    new-instance v4, Lcom/qti/extphone/Status;

    invoke-direct {v4, p3}, Lcom/qti/extphone/Status;-><init>(I)V

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/4 p1, 0x6

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public on5gConfigInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfigType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public on5gStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 833
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x8

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onAnyNrBearerAllocation(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/BearerAllocationStatus;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x9

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDataDeactivateDelayTime(IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 947
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0xa

    const/4 p2, 0x0

    .line 946
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    .line 926
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 925
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDdsSwitchCriteriaChange(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 932
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 933
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0xc

    const/4 p2, 0x0

    .line 932
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDdsSwitchRecommendation(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 939
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 940
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0xd

    const/4 p2, 0x0

    .line 939
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, -0x1

    const/4 v5, -0x1

    .line 1037
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x27

    const/4 p2, 0x0

    .line 1036
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDualDataRecommendation(Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x29

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onEnableEndc(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 804
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0xe

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onEndcStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onEpdgOverCellularDataSupported(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 954
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x10

    const/4 p2, 0x0

    .line 953
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onImeiTypeChanged([Lcom/qti/extphone/QtiImeiInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 913
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x11

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onNrConfigStatus(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrConfig;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 821
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x12

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onNrDcParam(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/DcParam;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x13

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onNrIconType(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/NrIconType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 799
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x14

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onQosParametersChanged(IILcom/qti/extphone/QosParametersResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x15

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSecureModeStatusChange(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 966
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x16

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSendUserPreferenceForDataDuringVoiceCall(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x17

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSetNrConfig(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x18

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSignalStrength(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SignalStrength;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 879
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x19

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSimPersoUnlockStatusChange(ILcom/qti/extphone/QtiPersoUnlockStatus;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1057
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x2a

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSimTypeChanged([Lcom/qti/extphone/QtiSimType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1030
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x1a

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onUpperLayerIndInfo(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/UpperLayerIndInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x1b

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public queryCallForwardStatusResponse(Lcom/qti/extphone/Status;[Lcom/qti/extphone/QtiCallForwardInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 893
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x1c

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public sendCdmaSmsResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x1d

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public setCarrierInfoForImsiEncryptionResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/QRadioResponseInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x1e

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public setDualDataUserPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x28

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public setMsimPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x1f

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 993
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x20

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 986
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x21

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public setSimTypeResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1025
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x22

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public setSmartDdsSwitchToggleResponse(Lcom/qti/extphone/Token;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 908
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x23

    const/4 p2, 0x0

    .line 907
    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public startNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 972
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x24

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 979
    new-instance v7, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub$Result;-><init>(Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;ILjava/lang/Object;)V

    const/16 p1, 0x25

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v7}, Lcom/qti/extphone/ExtPhoneCallbackListener$IExtPhoneCallbackStub;->send(IIILjava/lang/Object;)V

    return-void
.end method
