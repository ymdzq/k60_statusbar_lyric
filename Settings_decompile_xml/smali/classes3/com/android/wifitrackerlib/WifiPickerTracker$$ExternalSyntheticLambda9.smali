.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda9;->f$0:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda9;->f$0:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->$r8$lambda$H-MlneuHOyDhEk_UjdbbL12R9VI(Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
