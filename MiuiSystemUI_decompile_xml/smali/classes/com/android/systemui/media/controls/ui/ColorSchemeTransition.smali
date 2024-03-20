.class public final Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final accentPrimary:Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

.field public final context:Landroid/content/Context;

.field public final mediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

.field public final multiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

.field public final turbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/models/player/MediaViewHolder;Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->context:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->multiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->turbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    .line 13
    const p2, 0x7f06034c    # @color/material_dynamic_secondary95 '@color/m3_ref_palette_dynamic_secondary95'

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 18
    move-result p1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p1

    .line 25
    sget-object p2, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$surfaceColor$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$surfaceColor$1;

    .line 26
    new-instance p3, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$surfaceColor$2;

    .line 28
    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$surfaceColor$2;-><init>(Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;)V

    .line 30
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    move-object v1, p1

    .line 37
    check-cast v1, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 38
    const p1, 0x1010036    # @android:attr/textColorPrimary

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->loadDefaultColor(I)I

    .line 43
    move-result p2

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p2

    .line 50
    sget-object p3, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$1;

    .line 51
    new-instance p4, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$2;

    .line 53
    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$2;-><init>(Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;)V

    .line 55
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p2

    .line 61
    move-object v3, p2

    .line 62
    check-cast v3, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 63
    iput-object v3, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->loadDefaultColor(I)I

    .line 67
    move-result p2

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p2

    .line 74
    sget-object p3, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentSecondary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentSecondary$1;

    .line 75
    sget-object p4, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentSecondary$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentSecondary$2;

    .line 77
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 82
    move-object v4, p2

    .line 83
    check-cast v4, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->loadDefaultColor(I)I

    .line 86
    move-result p2

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object p2

    .line 93
    new-instance p3, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$colorSeamless$1;

    .line 94
    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$colorSeamless$1;-><init>(Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;)V

    .line 96
    sget-object p4, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$colorSeamless$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$colorSeamless$2;

    .line 99
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object p2

    .line 104
    move-object v2, p2

    .line 105
    check-cast v2, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->loadDefaultColor(I)I

    .line 108
    move-result p1

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object p1

    .line 115
    sget-object p2, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textPrimary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textPrimary$1;

    .line 116
    new-instance p3, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textPrimary$2;

    .line 118
    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textPrimary$2;-><init>(Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;)V

    .line 120
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 126
    move-object v5, p1

    .line 127
    check-cast v5, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 128
    const p1, 0x1010039    # @android:attr/textColorPrimaryInverse

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->loadDefaultColor(I)I

    .line 133
    move-result p1

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object p1

    .line 140
    sget-object p2, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textPrimaryInverse$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textPrimaryInverse$1;

    .line 141
    sget-object p3, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textPrimaryInverse$2;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textPrimaryInverse$2;

    .line 143
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-result-object p1

    .line 148
    move-object v6, p1

    .line 149
    check-cast v6, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 150
    const p1, 0x1010038    # @android:attr/textColorSecondary

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->loadDefaultColor(I)I

    .line 155
    move-result p1

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object p1

    .line 162
    sget-object p2, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textSecondary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textSecondary$1;

    .line 163
    new-instance p3, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textSecondary$2;

    .line 165
    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textSecondary$2;-><init>(Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;)V

    .line 167
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 173
    move-object v7, p1

    .line 174
    check-cast v7, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 175
    const p1, 0x1010212    # @android:attr/textColorTertiary

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->loadDefaultColor(I)I

    .line 180
    move-result p1

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object p1

    .line 187
    sget-object p2, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textTertiary$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textTertiary$1;

    .line 188
    new-instance p3, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textTertiary$2;

    .line 190
    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$textTertiary$2;-><init>(Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;)V

    .line 192
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object p0

    .line 198
    move-object v8, p0

    .line 199
    check-cast v8, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 200
    filled-new-array/range {v1 .. v8}, [Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;

    .line 202
    return-void
.end method


# virtual methods
.method public final loadDefaultColor(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->context:Landroid/content/Context;

    .line 2
    invoke-static {p1, p0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
