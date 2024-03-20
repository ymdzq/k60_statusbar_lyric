.class Lcom/android/settings/wifi/MiuiWifiEntryPreference$1;
.super Ljava/lang/Object;
.source "MiuiWifiEntryPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiWifiEntryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/wifi/MiuiWifiEntryPreference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/wifi/MiuiWifiEntryPreference;Lcom/android/settings/wifi/MiuiWifiEntryPreference;)I
    .locals 1

    .line 664
    instance-of p0, p1, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 667
    :cond_0
    instance-of p0, p2, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 671
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    .line 672
    invoke-virtual {p2}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->-$$Nest$fgetmRssiForCompare(Lcom/android/settings/wifi/MiuiWifiEntryPreference;)I

    move-result p1

    .line 674
    invoke-static {p2}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->-$$Nest$fgetmRssiForCompare(Lcom/android/settings/wifi/MiuiWifiEntryPreference;)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_2

    .line 679
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    :cond_2
    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 661
    check-cast p1, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    check-cast p2, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/MiuiWifiEntryPreference$1;->compare(Lcom/android/settings/wifi/MiuiWifiEntryPreference;Lcom/android/settings/wifi/MiuiWifiEntryPreference;)I

    move-result p0

    return p0
.end method
