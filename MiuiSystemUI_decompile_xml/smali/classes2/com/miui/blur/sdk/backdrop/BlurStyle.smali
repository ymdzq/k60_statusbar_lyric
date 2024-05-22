.class public final Lcom/miui/blur/sdk/backdrop/BlurStyle;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEFAULT_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field public static final DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field public static final DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

.field public static final HEAVY_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;


# instance fields
.field public final mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

.field public final mBlurRadius:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 2
    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurStyle;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DUMMY:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 7
    sget-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    .line 9
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v5, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 20
    new-instance v6, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 22
    const v7, -0x7ba7a7a8

    .line 24
    invoke-direct {v6, v7, v5}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 27
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v5, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 33
    const v6, 0x40e3e3e3

    .line 35
    invoke-direct {v5, v6, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 38
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    if-eqz v1, :cond_0

    .line 44
    new-array v5, v2, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 46
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 51
    check-cast v4, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 52
    :cond_0
    const/16 v4, 0xa

    .line 54
    if-eqz v1, :cond_1

    .line 56
    new-instance v5, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    sget-object v6, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 63
    new-instance v7, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 65
    const v8, -0x709f9fa0

    .line 67
    invoke-direct {v7, v8, v6}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 70
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v6, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 76
    const v7, -0x5c0d0d0e

    .line 78
    invoke-direct {v6, v7, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 81
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    if-eqz v1, :cond_1

    .line 87
    new-instance v6, Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 89
    new-array v7, v2, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 91
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    move-result-object v5

    .line 96
    check-cast v5, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 97
    invoke-direct {v6, v4, v5}, Lcom/miui/blur/sdk/backdrop/BlurStyle;-><init>(I[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;)V

    .line 99
    goto :goto_0

    .line 102
    :cond_1
    move-object v6, v0

    .line 103
    :goto_0
    sput-object v6, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 104
    const v5, 0x75737373

    .line 106
    if-eqz v1, :cond_2

    .line 109
    new-instance v6, Ljava/util/ArrayList;

    .line 111
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    sget-object v7, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 116
    new-instance v8, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 118
    invoke-direct {v8, v5, v7}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 120
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v7, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 126
    const v8, -0x330a0a0b    # -1.2895428E8f

    .line 128
    invoke-direct {v7, v8, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 131
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    if-eqz v1, :cond_2

    .line 137
    new-instance v7, Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 139
    new-array v8, v2, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 141
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    move-result-object v6

    .line 146
    check-cast v6, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 147
    const/16 v8, 0xc

    .line 149
    invoke-direct {v7, v8, v6}, Lcom/miui/blur/sdk/backdrop/BlurStyle;-><init>(I[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;)V

    .line 151
    goto :goto_1

    .line 154
    :cond_2
    move-object v7, v0

    .line 155
    :goto_1
    sput-object v7, Lcom/miui/blur/sdk/backdrop/BlurStyle;->HEAVY_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 156
    if-eqz v1, :cond_3

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    .line 160
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 162
    sget-object v7, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 165
    new-instance v8, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 167
    const v9, 0x618a8a8a

    .line 169
    invoke-direct {v8, v9, v7}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 172
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v7, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 178
    const v8, 0x4d424242

    .line 180
    invoke-direct {v7, v8, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 183
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    if-eqz v1, :cond_3

    .line 189
    new-array v7, v2, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 191
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 193
    move-result-object v6

    .line 196
    check-cast v6, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 197
    :cond_3
    if-eqz v1, :cond_4

    .line 199
    new-instance v6, Ljava/util/ArrayList;

    .line 201
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 203
    sget-object v7, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 206
    new-instance v8, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 208
    invoke-direct {v8, v5, v7}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 210
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v5, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 216
    const v7, -0x75d9d9da    # -7.999784E-33f

    .line 218
    invoke-direct {v5, v7, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 221
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    if-eqz v1, :cond_4

    .line 227
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 229
    new-array v5, v2, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 231
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    move-result-object v5

    .line 236
    check-cast v5, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 237
    invoke-direct {v0, v4, v5}, Lcom/miui/blur/sdk/backdrop/BlurStyle;-><init>(I[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;)V

    .line 239
    :cond_4
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_DARK:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 242
    if-eqz v1, :cond_5

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    .line 246
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    sget-object v4, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 251
    new-instance v5, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 253
    const v6, 0x7f5c5c5c

    .line 255
    invoke-direct {v5, v6, v4}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 258
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v4, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 264
    const v5, -0x40e0e0e1

    .line 266
    invoke-direct {v4, v5, v3}, Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;-><init>(ILandroid/graphics/BlendMode;)V

    .line 269
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    if-eqz v1, :cond_5

    .line 275
    new-array v1, v2, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 279
    move-result-object v0

    .line 282
    check-cast v0, [Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    .line 283
    :cond_5
    return-void
    .line 285
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlurRadius:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    return-void
.end method

.method public varargs constructor <init>(I[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlurRadius:I

    .line 6
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlendConfigs:[Lcom/miui/blur/sdk/backdrop/BlurStyle$BlendConfig;

    return-void
.end method
