.class Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;
.super Ljava/lang/Object;
.source "MiuiBluetoothBroadcastSourcePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mStatus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->-$$Nest$fgetmStatus(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBluetoothBroadcastSourcePreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->-$$Nest$fgetmStatus(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 134
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->leaveBroadcastSession()V

    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "BluetoothLeBroadcastMetadata is null, do nothing."

    .line 138
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBroadcastSettngs:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isAnyDeviceSyncedPA()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 141
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->please_stop_listen_broadcast_audio:I

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/ToastUtil;->show(Landroid/content/Context;II)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBroadcastSettngs:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->isSourceOpened()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->please_stop_broadcast_audio:I

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/ToastUtil;->show(Landroid/content/Context;II)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 147
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBroadcastSettngs:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->launchBroadcastCodeDialog(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference$1;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;->mBroadcastSettngs:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->addSource(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastSourcePreference;)V

    :goto_0
    return-void
.end method
