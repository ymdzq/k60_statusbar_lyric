.class Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;
.super Ljava/lang/Object;
.source "MiuiEnableBluetoothRecord.java"


# instance fields
.field private mPackageAction:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordEnableBt:Ljava/lang/String;

.field mSystemPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mSystemPackage:Ljava/util/ArrayList;

    const-string v0, "0#0#0,"

    .line 55
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mRecordEnableBt:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mPackageTime:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mPackageList:Ljava/util/LinkedList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mPackageAction:Ljava/util/HashMap;

    .line 60
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mSystemPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mSystemPackage:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mSystemPackage:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiEnableBluetoothRecord;->mSystemPackage:Ljava/util/ArrayList;

    const-string v0, "com.android.nfc"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
