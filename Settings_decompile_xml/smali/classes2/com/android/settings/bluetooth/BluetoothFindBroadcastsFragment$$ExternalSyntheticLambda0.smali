.class public final synthetic Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

.field public final synthetic f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    invoke-static {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->$r8$lambda$EnziHrG86sSBAw4dUdYMeQJw8oc(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
