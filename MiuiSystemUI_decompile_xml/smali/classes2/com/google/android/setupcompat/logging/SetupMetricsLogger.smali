.class public abstract Lcom/google/android/setupcompat/logging/SetupMetricsLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "["

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "SetupMetricsLogger"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "] "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    return-void
    .line 19
.end method

.method public static logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    .line 4
    move-result-object p0

    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    sget-object v1, Lcom/google/android/setupcompat/logging/CustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    new-instance v1, Landroid/os/Bundle;

    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    const-string v2, "CustomEvent_version"

    .line 20
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    iget-wide v4, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->timestampMillis:J

    .line 26
    const-string v2, "CustomEvent_timestamp"

    .line 28
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 30
    iget-object v2, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    .line 33
    invoke-static {v2}, Lcom/google/android/setupcompat/logging/MetricKey;->fromMetricKey(Lcom/google/android/setupcompat/logging/MetricKey;)Landroid/os/Bundle;

    .line 35
    move-result-object v2

    .line 38
    const-string v4, "CustomEvent_metricKey"

    .line 39
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    new-instance v2, Landroid/os/PersistableBundle;

    .line 44
    iget-object v4, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->persistableBundle:Landroid/os/PersistableBundle;

    .line 46
    invoke-direct {v2, v4}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 48
    sget-object v4, Lcom/google/android/setupcompat/internal/PersistableBundles;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 51
    new-instance v4, Landroid/os/Bundle;

    .line 53
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 55
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 58
    const-string v2, "CustomEvent_bundleValues"

    .line 61
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    iget-object p1, p1, Lcom/google/android/setupcompat/logging/CustomEvent;->piiValues:Landroid/os/PersistableBundle;

    .line 66
    new-instance v2, Landroid/os/Bundle;

    .line 68
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 73
    const-string p1, "CustomEvent_pii_bundleValues"

    .line 76
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    const-string p1, "CustomEvent_bundle"

    .line 81
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    invoke-virtual {p0, v3, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->logMetricEvent(ILandroid/os/Bundle;)V

    .line 86
    return-void

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 90
    const-string p1, "Context cannot be null."

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p0
    .line 97
.end method

.method public static setInstanceForTesting(Lcom/google/android/setupcompat/logging/SetupMetricsLogger;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
