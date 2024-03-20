.class public Lcom/android/settings/development/BluetoothA2dpConfigStore;
.super Ljava/lang/Object;
.source "BluetoothA2dpConfigStore.java"


# instance fields
.field private mBitsPerSample:I

.field private mChannelMode:I

.field private mCodecPriority:I

.field private mCodecSpecific1Value:J

.field private mCodecSpecific2Value:J

.field private mCodecSpecific3Value:J

.field private mCodecSpecific4Value:J

.field private mCodecType:I

.field private mLdacSpecificValue:J

.field private mLhdcSpecificValue:J

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf4240

    .line 27
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    .line 29
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    .line 30
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    .line 31
    iput v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    return-void
.end method


# virtual methods
.method public createCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 3

    .line 91
    iget v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 92
    iget-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mLdacSpecificValue:J

    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 97
    :cond_1
    iget-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mLhdcSpecificValue:J

    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    .line 100
    :cond_2
    :goto_0
    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig$Builder;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecConfig$Builder;-><init>()V

    iget v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    .line 101
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    .line 102
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    .line 103
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    .line 104
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    .line 105
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific2Value:J

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific3Value:J

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific4Value:J

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    return-object p0
.end method

.method public setBitsPerSample(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mBitsPerSample:I

    return-void
.end method

.method public setChannelMode(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mChannelMode:I

    return-void
.end method

.method public setCodecPriority(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecPriority:I

    return-void
.end method

.method public setCodecSpecific1Value(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific1Value:J

    return-void
.end method

.method public setCodecSpecific2Value(I)V
    .locals 2

    int-to-long v0, p1

    .line 67
    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific2Value:J

    return-void
.end method

.method public setCodecSpecific4Value(I)V
    .locals 2

    int-to-long v0, p1

    .line 75
    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecSpecific4Value:J

    return-void
.end method

.method public setCodecType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mCodecType:I

    return-void
.end method

.method public setLdacSpecificValue(I)V
    .locals 2

    int-to-long v0, p1

    .line 81
    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mLdacSpecificValue:J

    return-void
.end method

.method public setLhdcSpecificValue(I)V
    .locals 2

    int-to-long v0, p1

    .line 85
    iput-wide v0, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mLhdcSpecificValue:J

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/android/settings/development/BluetoothA2dpConfigStore;->mSampleRate:I

    return-void
.end method
