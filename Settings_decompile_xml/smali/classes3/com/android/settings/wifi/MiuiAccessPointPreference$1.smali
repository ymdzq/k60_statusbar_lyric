.class Lcom/android/settings/wifi/MiuiAccessPointPreference$1;
.super Ljava/lang/Object;
.source "MiuiAccessPointPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiAccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/wifi/AccessPointPreference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPointPreference;)I
    .locals 1

    .line 500
    instance-of p0, p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 503
    :cond_0
    instance-of p0, p2, Lcom/android/settingslib/wifi/AccessPointPreference;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 507
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    .line 508
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result p1

    .line 510
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_2

    .line 515
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    :cond_2
    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 497
    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    check-cast p2, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/MiuiAccessPointPreference$1;->compare(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPointPreference;)I

    move-result p0

    return p0
.end method
