.class Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference$1;
.super Ljava/lang/Object;
.source "BluetoothVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference$1;->this$0:Lcom/android/settings/bluetooth/BluetoothVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->performClick()V

    return-void
.end method
