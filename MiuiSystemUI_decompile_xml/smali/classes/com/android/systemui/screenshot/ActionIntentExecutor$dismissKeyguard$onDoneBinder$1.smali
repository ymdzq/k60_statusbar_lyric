.class public final Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/screenshot/IOnDoneCallback;


# instance fields
.field public final synthetic $completion:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CompletableDeferredImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string p1, "com.android.systemui.screenshot.IOnDoneCallback"

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

.method public final bridge synthetic getMaxTransactionId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final bridge synthetic getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;->getTransactionName$com$android$systemui$screenshot$IOnDoneCallback$Stub(I)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getTransactionName$com$android$systemui$screenshot$IOnDoneCallback$Stub(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "onDone"

    .line 7
    :goto_0
    return-object p0
    .line 9
.end method

.method public final onDone(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;->$completion:Lkotlinx/coroutines/CompletableDeferred;

    .line 2
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getState$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/JobSupport;->tryMakeCompleting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_ALREADY:Lkotlinx/coroutines/internal/Symbol;

    .line 16
    if-ne v0, v1, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/Symbol;

    .line 21
    if-ne v0, v1, :cond_2

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    sget-object v1, Lkotlinx/coroutines/JobSupportKt;->COMPLETING_RETRY:Lkotlinx/coroutines/internal/Symbol;

    .line 26
    if-eq v0, v1, :cond_0

    .line 28
    :goto_0
    return-void
    .line 30
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;->onTransact$com$android$systemui$screenshot$IOnDoneCallback$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$systemui$screenshot$IOnDoneCallback$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.systemui.screenshot.IOnDoneCallback"

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
    if-eq p1, v2, :cond_2

    .line 18
    if-eq p1, v1, :cond_1

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 27
    move-result p1

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ActionIntentExecutor$dismissKeyguard$onDoneBinder$1;->onDone(Z)V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 37
    return v1

    .line 40
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return v1
    .line 44
.end method
