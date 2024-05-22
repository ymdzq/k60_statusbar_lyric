.class public final Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;->this$0:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string p1, "com.android.systemui.wallet.controller.IWalletContextualLocationsService"

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
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final bridge synthetic getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;->getTransactionName$com$android$systemui$wallet$controller$IWalletContextualLocationsService$Stub(I)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getTransactionName$com$android$systemui$wallet$controller$IWalletContextualLocationsService$Stub(I)Ljava/lang/String;
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
    const-string p0, "onWalletContextualLocationsStateUpdated"

    .line 10
    goto :goto_0

    .line 12
    :cond_1
    const-string p0, "addWalletCardsUpdatedListener"

    .line 13
    :goto_0
    return-object p0
    .line 15
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;->onTransact$com$android$systemui$wallet$controller$IWalletContextualLocationsService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$systemui$wallet$controller$IWalletContextualLocationsService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.systemui.wallet.controller.IWalletContextualLocationsService"

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
    if-eq p1, v1, :cond_2

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;->this$0:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->onWalletContextualLocationsStateUpdatedInternal(Ljava/util/List;)V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 46
    move-result-object p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    const/4 p1, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const-string p4, "com.android.systemui.wallet.controller.IWalletCardsUpdatedListener"

    .line 54
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 56
    move-result-object p4

    .line 59
    if-eqz p4, :cond_4

    .line 60
    instance-of v0, p4, Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener;

    .line 62
    if-eqz v0, :cond_4

    .line 64
    move-object p1, p4

    .line 66
    check-cast p1, Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener;

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    new-instance p4, Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener$Stub$Proxy;

    .line 70
    invoke-direct {p4, p1}, Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 72
    move-object p1, p4

    .line 75
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService$binder$1;->this$0:Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallet/controller/WalletContextualLocationsService;->addWalletCardsUpdatedListenerInternal(Lcom/android/systemui/wallet/controller/IWalletCardsUpdatedListener;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    :goto_1
    return v1

    .line 87
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v1
    .line 91
.end method
