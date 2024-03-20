.class public abstract Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;
.super Lcom/google/android/binder/BinderWrapper;
.source "SplitInstallServiceCallback.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallServiceCallback"

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/binder/BinderWrapper;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransact(ILandroid/os/Parcel;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 68
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 69
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 63
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 64
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onGetSessionStates(Ljava/util/List;)V

    goto :goto_0

    .line 58
    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 59
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onDeferredInstall(Landroid/os/Bundle;)V

    goto :goto_0

    .line 53
    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 54
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onDeferredUninstall(Landroid/os/Bundle;)V

    goto :goto_0

    .line 47
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 48
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 49
    invoke-interface {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onGetSession(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 41
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 42
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 43
    invoke-interface {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onCancelInstall(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 35
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 37
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onCompleteInstall(I)V

    goto :goto_0

    .line 29
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 30
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 31
    invoke-interface {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onStartInstall(ILandroid/os/Bundle;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
