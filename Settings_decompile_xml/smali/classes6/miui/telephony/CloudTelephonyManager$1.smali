.class Lmiui/telephony/CloudTelephonyManager$1;
.super Ljava/lang/Object;
.source "CloudTelephonyManager.java"

# interfaces
.implements Lmicloud/compat/v18/utils/BusyWaitUtil$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CloudTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;JZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmicloud/compat/v18/utils/BusyWaitUtil$Action<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$deviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;


# direct methods
.method constructor <init>(Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;Landroid/content/Context;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lmiui/telephony/CloudTelephonyManager$1;->val$deviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    iput-object p2, p0, Lmiui/telephony/CloudTelephonyManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doAction(JJ)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiui/telephony/CloudTelephonyManager$1;->doAction(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doAction(JJ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException;
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lmiui/telephony/CloudTelephonyManager$1;->val$deviceIdConfiguration:Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;

    iget-object p0, p0, Lmiui/telephony/CloudTelephonyManager$1;->val$context:Landroid/content/Context;

    invoke-interface {p1, p0}, Lmiui/telephony/CloudTelephonyManager$DeviceIdConfiguration;->tryGetId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, " retries"

    const-string v0, "CloudTelephonyManager"

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got deviceid after "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p0}, Lmiui/telephony/CloudTelephonyManager;->access$000(Ljava/lang/String;)V

    return-object p0

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deviceid is empty after "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p0, Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException;

    invoke-direct {p0}, Lmicloud/compat/v18/utils/BusyWaitUtil$NotAvailableException;-><init>()V

    throw p0
.end method
