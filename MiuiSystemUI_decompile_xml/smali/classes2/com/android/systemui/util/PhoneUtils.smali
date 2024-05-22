.class public abstract Lcom/android/systemui/util/PhoneUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MIUI_LPA:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.vendor.miui.support_esim"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/util/PhoneUtils;->MIUI_LPA:Z

    .line 9
    return-void
    .line 11
.end method

.method public static disableProfile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/util/PhoneUtils;->MIUI_LPA:Z

    .line 2
    const-string v1, "PhoneUtils"

    .line 4
    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    const-string v0, "content://com.miui.euicc.provider"

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    move-result-object v0

    .line 13
    new-instance v2, Landroid/os/Bundle;

    .line 14
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string v3, "Reason"

    .line 19
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object p0

    .line 27
    const-string p1, "disable_profile"

    .line 28
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p0, v0, p1, v3, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 31
    const-string p0, "disableProfile: call xiaomi pla disable profile success"

    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string p1, "fail to process"

    .line 41
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 47
    move-result-object p1

    .line 50
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 52
    move-result-object p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    const-string p0, "No active subscription"

    .line 58
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 63
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 64
    const-string v2, "com.android.keyguard.disable_esim"

    .line 66
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 78
    const/4 v3, 0x0

    .line 80
    const/high16 v4, 0xa000000

    .line 81
    invoke-static {p0, v3, v0, v4, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 83
    move-result-object v0

    .line 86
    const-string v2, "euicc"

    .line 87
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 93
    const/4 v2, -0x1

    .line 95
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    .line 96
    move-result p1

    .line 99
    invoke-virtual {p0, v2, p1, v0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    .line 100
    const-string p0, "disableProfile: switch Euicc to INVALID sub"

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void
    .line 108
.end method
