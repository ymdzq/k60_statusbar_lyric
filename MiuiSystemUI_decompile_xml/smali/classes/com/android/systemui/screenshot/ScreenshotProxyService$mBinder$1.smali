.class public final Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/screenshot/IScreenshotProxy;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotProxyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string p1, "com.android.systemui.screenshot.IScreenshotProxy"

    .line 7
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final dismissKeyguard(Lcom/android/systemui/screenshot/IOnDoneCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 10
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1$dismissKeyguard$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotProxyService;Lcom/android/systemui/screenshot/IOnDoneCallback;Lkotlin/coroutines/Continuation;)V

    .line 13
    const/4 p0, 0x3

    .line 16
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    return-void
    .line 20
.end method

.method public final bridge synthetic getMaxTransactionId()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final bridge synthetic getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->getTransactionName$com$android$systemui$screenshot$IScreenshotProxy$Stub(I)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getTransactionName$com$android$systemui$screenshot$IScreenshotProxy$Stub(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p0, "dismissKeyguard"

    .line 10
    goto :goto_0

    .line 12
    :cond_1
    const-string p0, "isNotificationShadeExpanded"

    .line 13
    :goto_0
    return-object p0
    .line 15
.end method

.method public final isNotificationShadeExpanded()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotProxyService;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotProxyService;->mExpansionMgr:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 4
    iget p0, p0, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    .line 6
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    move p0, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    xor-int/2addr p0, v0

    .line 14
    const-string v0, "isNotificationShadeExpanded(): "

    .line 15
    const-string v1, "ScreenshotProxyService"

    .line 17
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 19
    return p0
    .line 22
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->onTransact$com$android$systemui$screenshot$IScreenshotProxy$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$systemui$screenshot$IScreenshotProxy$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.systemui.screenshot.IScreenshotProxy"

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
    if-eq p1, v2, :cond_5

    .line 18
    if-eq p1, v1, :cond_4

    .line 20
    const/4 v0, 0x2

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 30
    move-result-object p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    const/4 p1, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string p4, "com.android.systemui.screenshot.IOnDoneCallback"

    .line 38
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 40
    move-result-object p4

    .line 43
    if-eqz p4, :cond_3

    .line 44
    instance-of v0, p4, Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    move-object p1, p4

    .line 50
    check-cast p1, Lcom/android/systemui/screenshot/IOnDoneCallback;

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    new-instance p4, Lcom/android/systemui/screenshot/IOnDoneCallback$Stub$Proxy;

    .line 54
    invoke-direct {p4, p1}, Lcom/android/systemui/screenshot/IOnDoneCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 56
    move-object p1, p4

    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->dismissKeyguard(Lcom/android/systemui/screenshot/IOnDoneCallback;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotProxyService$mBinder$1;->isNotificationShadeExpanded()Z

    .line 70
    move-result p0

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 77
    :goto_1
    return v1

    .line 80
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return v1
    .line 84
.end method
