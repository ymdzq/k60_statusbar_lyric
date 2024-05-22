.class public final Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    .line 2
    iput p1, p2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mCurrentUserId:I

    .line 4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateSecondSpace()V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object p1

    .line 16
    iget p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mCurrentUserId:I

    .line 17
    const-string v0, "bluetooth_always_show_icon_value"

    .line 19
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    move-result p1

    .line 25
    iget p2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mAlwaysShowBtIcon:I

    .line 26
    if-eq p2, p1, :cond_0

    .line 28
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mAlwaysShowBtIcon:I

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateBluetooth()V

    .line 32
    :cond_0
    return-void
    .line 35
.end method
