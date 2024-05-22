.class public abstract Lcom/android/systemui/shared/recents/IMiuiSystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .line 1
    const-string v0, "com.android.systemui.shared.recents.IMiuiSystemUiProxy"

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    const v2, 0xffffff

    .line 7
    if-gt p1, v2, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    if-eq p1, v2, :cond_b

    .line 18
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_9

    .line 21
    const/4 v0, 0x3

    .line 23
    if-eq p1, v0, :cond_7

    .line 24
    const/4 v0, 0x4

    .line 26
    if-eq p1, v0, :cond_5

    .line 27
    const/4 v0, 0x5

    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    const/16 v0, 0x37

    .line 32
    if-eq p1, v0, :cond_2

    .line 34
    const/16 v0, 0x38

    .line 36
    if-eq p1, v0, :cond_1

    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 40
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_1
    check-cast p0, Lcom/android/systemui/recents/MiuiOverviewProxy;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/recents/MiuiOverviewProxy;->focusedNotifPromptController$delegate:Lkotlin/Lazy;

    .line 47
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    check-cast p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 53
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setRequestHide(Z)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    goto/16 :goto_4

    .line 62
    :cond_2
    check-cast p0, Lcom/android/systemui/recents/MiuiOverviewProxy;

    .line 64
    iget-object p0, p0, Lcom/android/systemui/recents/MiuiOverviewProxy;->focusedNotifPromptController$delegate:Lkotlin/Lazy;

    .line 66
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 71
    check-cast p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 72
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setRequestHide(Z)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    goto/16 :goto_4

    .line 80
    :cond_3
    check-cast p0, Lcom/android/systemui/recents/MiuiOverviewProxy;

    .line 82
    const-string p1, "onAssistantGestureCompletion"

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/MiuiOverviewProxy;->verifyCaller(Ljava/lang/String;)Z

    .line 86
    move-result p1

    .line 89
    if-nez p1, :cond_4

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 93
    move-result-wide p1

    .line 96
    :try_start_0
    iget-object p4, p0, Lcom/android/systemui/recents/MiuiOverviewProxy;->proxyService$delegate:Lkotlin/Lazy;

    .line 97
    invoke-interface {p4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 99
    move-result-object p4

    .line 102
    check-cast p4, Lcom/android/systemui/recents/OverviewProxyService;

    .line 103
    iget-object p4, p4, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/systemui/recents/MiuiOverviewProxy$onAssistantGestureCompletion$1;

    .line 107
    invoke-direct {v0, p0}, Lcom/android/systemui/recents/MiuiOverviewProxy$onAssistantGestureCompletion$1;-><init>(Lcom/android/systemui/recents/MiuiOverviewProxy;)V

    .line 109
    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_4

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw p0

    .line 126
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 127
    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    check-cast p0, Lcom/android/systemui/recents/MiuiOverviewProxy;

    .line 134
    const-string p2, "onGestureLineProgress"

    .line 136
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/MiuiOverviewProxy;->verifyCaller(Ljava/lang/String;)Z

    .line 138
    move-result p2

    .line 141
    if-nez p2, :cond_6

    .line 142
    goto :goto_1

    .line 144
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 145
    move-result-wide v2

    .line 148
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/recents/MiuiOverviewProxy;->proxyService$delegate:Lkotlin/Lazy;

    .line 149
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 151
    move-result-object p2

    .line 154
    check-cast p2, Lcom/android/systemui/recents/OverviewProxyService;

    .line 155
    iget-object p2, p2, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance p4, Lcom/android/systemui/recents/MiuiOverviewProxy$onGestureLineProgress$1;

    .line 159
    invoke-direct {p4, p0, p1}, Lcom/android/systemui/recents/MiuiOverviewProxy$onGestureLineProgress$1;-><init>(Lcom/android/systemui/recents/MiuiOverviewProxy;F)V

    .line 161
    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    goto :goto_4

    .line 173
    :catchall_1
    move-exception p0

    .line 174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    throw p0

    .line 178
    :cond_7
    check-cast p0, Lcom/android/systemui/recents/MiuiOverviewProxy;

    .line 179
    const-string p1, "getMiddleSplitScreenSecondaryBounds"

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/MiuiOverviewProxy;->verifyCaller(Ljava/lang/String;)Z

    .line 183
    move-result p0

    .line 186
    if-nez p0, :cond_8

    .line 187
    goto :goto_2

    .line 189
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 190
    move-result-wide p0

    .line 193
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 p0, 0x0

    .line 200
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 201
    goto :goto_4

    .line 204
    :cond_9
    check-cast p0, Lcom/android/systemui/recents/MiuiOverviewProxy;

    .line 205
    const-string/jumbo p1, "startScreenPinning"

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/MiuiOverviewProxy;->verifyCaller(Ljava/lang/String;)Z

    .line 210
    move-result p0

    .line 213
    if-nez p0, :cond_a

    .line 214
    goto :goto_3

    .line 216
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 217
    move-result-wide p0

    .line 220
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    :goto_4
    return v1

    .line 227
    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return v1
    .line 231
.end method
