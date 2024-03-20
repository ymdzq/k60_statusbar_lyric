.class public final synthetic Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings$$ExternalSyntheticLambda2;->f$0:Lcom/android/wifitrackerlib/WifiEntry;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiSavedAccessPointsWifiSettings;->$r8$lambda$XfuZ-8tb9ldB9kG3pmPWI9FEPH0(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
