.class Lmiui/telephony/CloudTelephonyManager$4;
.super Ljava/lang/Object;
.source "CloudTelephonyManager.java"

# interfaces
.implements Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CloudTelephonyManager;->getDeviceIdConfiguration(Landroid/content/Context;)Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 303
    invoke-static {p2}, Lmiui/cloud/util/SysHelper;->validateMAC(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBusywaitRetryIntervalMillisRecommandation(Landroid/content/Context;)J
    .locals 0

    .line 0
    const-wide/16 p0, 0x2710

    return-wide p0
.end method

.method public getBusywaitTimeoutMillisRecommandation(Landroid/content/Context;)J
    .locals 0

    .line 0
    const-wide/32 p0, 0xea60

    return-wide p0
.end method

.method public tryGetId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 298
    invoke-static {p1}, Lmicloud/net/ConnectivityHelper;->getInstance(Landroid/content/Context;)Lmicloud/net/ConnectivityHelper;

    move-result-object p0

    invoke-virtual {p0}, Lmicloud/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
