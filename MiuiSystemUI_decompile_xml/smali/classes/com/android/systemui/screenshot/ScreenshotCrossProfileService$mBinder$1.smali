.class public final Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/screenshot/ICrossProfileService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;

    .line 2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string p1, "com.android.systemui.screenshot.ICrossProfileService"

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
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;->getTransactionName$com$android$systemui$screenshot$ICrossProfileService$Stub(I)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getTransactionName$com$android$systemui$screenshot$ICrossProfileService$Stub(I)Ljava/lang/String;
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
    const-string p0, "launchIntent"

    .line 7
    :goto_0
    return-object p0
    .line 9
.end method

.method public final launchIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotCrossProfileService;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4
    return-void
    .line 7
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;->onTransact$com$android$systemui$screenshot$ICrossProfileService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$systemui$screenshot$ICrossProfileService$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.systemui.screenshot.ICrossProfileService"

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
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Landroid/content/Intent;

    .line 33
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 37
    move-result-object p4

    .line 40
    check-cast p4, Landroid/os/Bundle;

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 43
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/screenshot/ScreenshotCrossProfileService$mBinder$1;->launchIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    return v1

    .line 52
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v1
    .line 56
.end method
