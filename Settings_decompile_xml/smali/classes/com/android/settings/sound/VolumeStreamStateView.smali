.class public Lcom/android/settings/sound/VolumeStreamStateView;
.super Landroid/widget/ImageView;
.source "VolumeStreamStateView.java"


# static fields
.field private static final A2DP_STATE_SET:[I

.field private static final MUTED_STATE_SET:[I

.field private static final WIRED_STATE_SET:[I


# instance fields
.field private final DEVICE_OUT_ALL_WIRED:I

.field private mStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/android/settings/R$attr;->state_muted:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/sound/VolumeStreamStateView;->MUTED_STATE_SET:[I

    .line 17
    sget v0, Lcom/android/settings/R$attr;->state_wired:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/sound/VolumeStreamStateView;->WIRED_STATE_SET:[I

    .line 18
    sget v0, Lcom/android/settings/R$attr;->state_a2dp:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/sound/VolumeStreamStateView;->A2DP_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->mStream:I

    const/16 p1, 0xc

    .line 21
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->DEVICE_OUT_ALL_WIRED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->mStream:I

    const/16 p1, 0xc

    .line 21
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->DEVICE_OUT_ALL_WIRED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->mStream:I

    const/16 p1, 0xc

    .line 21
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->DEVICE_OUT_ALL_WIRED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->mStream:I

    const/16 p1, 0xc

    .line 21
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->DEVICE_OUT_ALL_WIRED:I

    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 p1, p1, 0x3

    .line 43
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 44
    iget v0, p0, Lcom/android/settings/sound/VolumeStreamStateView;->mStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 46
    iget v1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    .line 47
    iget p0, p0, Lcom/android/settings/sound/VolumeStreamStateView;->mStream:I

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    if-nez p0, :cond_0

    .line 48
    sget-object p0, Lcom/android/settings/sound/VolumeStreamStateView;->MUTED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    :cond_0
    and-int/lit8 p0, v1, 0xc

    if-eqz p0, :cond_1

    .line 51
    sget-object p0, Lcom/android/settings/sound/VolumeStreamStateView;->WIRED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 52
    :cond_1
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 53
    sget-object p0, Lcom/android/settings/sound/VolumeStreamStateView;->A2DP_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    :cond_2
    :goto_0
    return-object p1
.end method

.method public setStream(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/android/settings/sound/VolumeStreamStateView;->mStream:I

    return-void
.end method
