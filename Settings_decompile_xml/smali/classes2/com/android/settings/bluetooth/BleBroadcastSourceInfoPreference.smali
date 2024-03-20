.class public final Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;
.super Lcom/android/settings/widget/GearPreference;
.source "BleBroadcastSourceInfoPreference.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference$SortType;
    }
.end annotation


# static fields
.field private static EMPTY_BD_ADDR:Ljava/lang/String; = "00:00:00:00:00:00"


# instance fields
.field private mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

.field private final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private final mCurrentTime:J

.field private final mIndex:Ljava/lang/Integer;

.field mResources:Landroid/content/res/Resources;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;Ljava/lang/Integer;I)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mResources:Landroid/content/res/Resources;

    .line 97
    iput-object p4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mIndex:Ljava/lang/Integer;

    .line 99
    iput-object p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 100
    iput-object p3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 101
    invoke-virtual {p2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mCurrentTime:J

    .line 103
    iput p5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mType:I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->onDeviceAttributesChanged()V

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 5

    .line 220
    instance-of v0, p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    if-nez v0, :cond_0

    .line 222
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    .line 225
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mType:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 232
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    .line 230
    :cond_1
    iget-wide v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mCurrentTime:J

    check-cast p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    iget-wide p0, p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mCurrentTime:J

    cmp-long p0, v3, p0

    if-lez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    const-string v0, "BleBroadcastSourceInfoPreference"

    const-string v3, ">>compareTo"

    .line 227
    invoke-static {v0, v3}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mIndex:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->getSourceInfoIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 66
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "BleBroadcastSourceInfoPreference"

    if-eqz p1, :cond_2

    .line 198
    instance-of v2, p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    if-nez v2, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    check-cast p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p0

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 208
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "equals returns: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_0
    const-string p0, "Not an Instance of BleBroadcastSourceInfoPreference:"

    .line 199
    invoke-static {v1, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method formSyncSummaryString(Landroid/bluetooth/BleBroadcastSourceInfo;)Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "Metadata Synced"

    goto :goto_0

    :cond_0
    const-string p0, "Metadata not synced"

    .line 153
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "Audio Synced"

    goto :goto_1

    :cond_1
    const-string p1, "Audio not synced"

    .line 158
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    return-object p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    .line 116
    sget p0, Lcom/android/settings/R$layout;->preference_widget_gear:I

    return p0
.end method

.method getSourceInfoIndex()Ljava/lang/Integer;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->hashCode()I

    move-result p0

    return p0
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 163
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(Self)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 173
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 176
    sget-object v0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->EMPTY_BD_ADDR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "BleBroadcastSourceInfoPreference"

    const-string/jumbo v1, "seem to be an entry source Info"

    .line 177
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EMPTY ENTRY"

    .line 180
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    sget v0, Lcom/android/settings/R$drawable;->ic_media_stream:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v0

    if-nez v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->formSyncSummaryString(Landroid/bluetooth/BleBroadcastSourceInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string v0, ""

    .line 186
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 191
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    return-void
.end method

.method public setBleBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->onDeviceAttributesChanged()V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->mBleSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
