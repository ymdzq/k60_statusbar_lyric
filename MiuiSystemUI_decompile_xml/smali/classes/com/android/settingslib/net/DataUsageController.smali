.class public final Lcom/android/settingslib/net/DataUsageController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCallback:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;

.field public final mContext:Landroid/content/Context;

.field public final mSubscriptionId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const/16 v1, 0x32

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    new-instance v1, Ljava/util/Formatter;

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    move-result-object v2

    .line 14
    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 15
    return-void
    .line 18
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    .line 7
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    .line 16
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionId:I

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionId:I

    .line 2
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 10
    move-result v0

    .line 13
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 14
    move-result v1

    .line 17
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 18
    if-nez v1, :cond_1

    .line 20
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    .line 26
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 30
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 36
    aget v0, v1, v0

    .line 37
    :cond_1
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 45
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 47
    move-result-object p0

    .line 50
    return-object p0
    .line 51
.end method

.method public final isMobileDataSupported()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 16
    move-result p0

    .line 19
    const/4 v0, 0x5

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
    .line 26
.end method

.method public final setMobileDataEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setMobileDataEnabled: enabled="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "DataUsageController"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 26
    iget-object p0, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;

    .line 29
    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$3;->onMobileDataEnabled(Z)V

    .line 33
    :cond_0
    return-void
    .line 36
.end method
