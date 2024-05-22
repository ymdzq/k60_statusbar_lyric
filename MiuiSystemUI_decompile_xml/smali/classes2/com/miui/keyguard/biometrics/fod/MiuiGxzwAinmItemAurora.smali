.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemAurora;
.super Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final anim_drawables:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemAurora;->anim_drawables:[I

    .line 9
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7f080e39    # @drawable/gxzw_aurora_recognizing_anim_1 'res/drawable/gxzw_aurora_recognizing_anim_1.webp'
        0x7f080e44    # @drawable/gxzw_aurora_recognizing_anim_2 'res/drawable/gxzw_aurora_recognizing_anim_2.webp'
        0x7f080e4f    # @drawable/gxzw_aurora_recognizing_anim_3 'res/drawable/gxzw_aurora_recognizing_anim_3.webp'
        0x7f080e51    # @drawable/gxzw_aurora_recognizing_anim_4 'res/drawable/gxzw_aurora_recognizing_anim_4.webp'
        0x7f080e52    # @drawable/gxzw_aurora_recognizing_anim_5 'res/drawable/gxzw_aurora_recognizing_anim_5.webp'
        0x7f080e53    # @drawable/gxzw_aurora_recognizing_anim_6 'res/drawable/gxzw_aurora_recognizing_anim_6.webp'
        0x7f080e54    # @drawable/gxzw_aurora_recognizing_anim_7 'res/drawable/gxzw_aurora_recognizing_anim_7.webp'
        0x7f080e55    # @drawable/gxzw_aurora_recognizing_anim_8 'res/drawable/gxzw_aurora_recognizing_anim_8.webp'
        0x7f080e56    # @drawable/gxzw_aurora_recognizing_anim_9 'res/drawable/gxzw_aurora_recognizing_anim_9.webp'
        0x7f080e3a    # @drawable/gxzw_aurora_recognizing_anim_10 'res/drawable/gxzw_aurora_recognizing_anim_10.webp'
        0x7f080e3b    # @drawable/gxzw_aurora_recognizing_anim_11 'res/drawable/gxzw_aurora_recognizing_anim_11.webp'
        0x7f080e3c    # @drawable/gxzw_aurora_recognizing_anim_12 'res/drawable/gxzw_aurora_recognizing_anim_12.webp'
        0x7f080e3d    # @drawable/gxzw_aurora_recognizing_anim_13 'res/drawable/gxzw_aurora_recognizing_anim_13.webp'
        0x7f080e3e    # @drawable/gxzw_aurora_recognizing_anim_14 'res/drawable/gxzw_aurora_recognizing_anim_14.webp'
        0x7f080e3f    # @drawable/gxzw_aurora_recognizing_anim_15 'res/drawable/gxzw_aurora_recognizing_anim_15.webp'
        0x7f080e40    # @drawable/gxzw_aurora_recognizing_anim_16 'res/drawable/gxzw_aurora_recognizing_anim_16.webp'
        0x7f080e41    # @drawable/gxzw_aurora_recognizing_anim_17 'res/drawable/gxzw_aurora_recognizing_anim_17.webp'
        0x7f080e42    # @drawable/gxzw_aurora_recognizing_anim_18 'res/drawable/gxzw_aurora_recognizing_anim_18.webp'
        0x7f080e43    # @drawable/gxzw_aurora_recognizing_anim_19 'res/drawable/gxzw_aurora_recognizing_anim_19.webp'
        0x7f080e45    # @drawable/gxzw_aurora_recognizing_anim_20 'res/drawable/gxzw_aurora_recognizing_anim_20.webp'
        0x7f080e46    # @drawable/gxzw_aurora_recognizing_anim_21 'res/drawable/gxzw_aurora_recognizing_anim_21.webp'
        0x7f080e47    # @drawable/gxzw_aurora_recognizing_anim_22 'res/drawable/gxzw_aurora_recognizing_anim_22.webp'
        0x7f080e48    # @drawable/gxzw_aurora_recognizing_anim_23 'res/drawable/gxzw_aurora_recognizing_anim_23.webp'
        0x7f080e49    # @drawable/gxzw_aurora_recognizing_anim_24 'res/drawable/gxzw_aurora_recognizing_anim_24.webp'
    .end array-data
    .line 12
.end method


# virtual methods
.method public final generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;
    .locals 3

    .line 1
    new-instance p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 2
    sget-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemAurora;->anim_drawables:[I

    .line 4
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x20

    .line 7
    invoke-direct {p0, v2, v1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;-><init>(IZ[I)V

    .line 9
    return-object p0
    .line 12
.end method

.method public final getFodMotionRtpId()I
    .locals 0

    .line 1
    const/16 p0, 0xa0

    .line 2
    return p0
    .line 4
.end method
