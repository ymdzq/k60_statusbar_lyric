.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDeviceProvisionedChanged()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$6;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "device_provisioned"

    .line 10
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v1

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    move v2, v3

    .line 20
    :cond_0
    if-eqz v2, :cond_1

    .line 21
    const-string v1, "new_device_after_support_notification_animation"

    .line 23
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    .line 28
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onWakeupForNotificationChanged()V

    .line 30
    :cond_1
    return-void
    .line 33
.end method
