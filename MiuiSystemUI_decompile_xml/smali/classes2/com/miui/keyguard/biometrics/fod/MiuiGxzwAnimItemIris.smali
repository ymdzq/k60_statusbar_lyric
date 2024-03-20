.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemIris;
.super Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final anim_drawables:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1e

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemIris;->anim_drawables:[I

    .line 9
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7f080e7a    # @drawable/gxzw_pulse_recognizing_anim_1 'res/drawable/gxzw_pulse_recognizing_anim_1.webp'
        0x7f080e85    # @drawable/gxzw_pulse_recognizing_anim_2 'res/drawable/gxzw_pulse_recognizing_anim_2.webp'
        0x7f080e90    # @drawable/gxzw_pulse_recognizing_anim_3 'res/drawable/gxzw_pulse_recognizing_anim_3.webp'
        0x7f080e92    # @drawable/gxzw_pulse_recognizing_anim_4 'res/drawable/gxzw_pulse_recognizing_anim_4.webp'
        0x7f080e93    # @drawable/gxzw_pulse_recognizing_anim_5 'res/drawable/gxzw_pulse_recognizing_anim_5.webp'
        0x7f080e94    # @drawable/gxzw_pulse_recognizing_anim_6 'res/drawable/gxzw_pulse_recognizing_anim_6.webp'
        0x7f080e95    # @drawable/gxzw_pulse_recognizing_anim_7 'res/drawable/gxzw_pulse_recognizing_anim_7.webp'
        0x7f080e96    # @drawable/gxzw_pulse_recognizing_anim_8 'res/drawable/gxzw_pulse_recognizing_anim_8.webp'
        0x7f080e97    # @drawable/gxzw_pulse_recognizing_anim_9 'res/drawable/gxzw_pulse_recognizing_anim_9.webp'
        0x7f080e7b    # @drawable/gxzw_pulse_recognizing_anim_10 'res/drawable/gxzw_pulse_recognizing_anim_10.webp'
        0x7f080e7c    # @drawable/gxzw_pulse_recognizing_anim_11 'res/drawable/gxzw_pulse_recognizing_anim_11.webp'
        0x7f080e7d    # @drawable/gxzw_pulse_recognizing_anim_12 'res/drawable/gxzw_pulse_recognizing_anim_12.webp'
        0x7f080e7e    # @drawable/gxzw_pulse_recognizing_anim_13 'res/drawable/gxzw_pulse_recognizing_anim_13.webp'
        0x7f080e7f    # @drawable/gxzw_pulse_recognizing_anim_14 'res/drawable/gxzw_pulse_recognizing_anim_14.webp'
        0x7f080e80    # @drawable/gxzw_pulse_recognizing_anim_15 'res/drawable/gxzw_pulse_recognizing_anim_15.webp'
        0x7f080e81    # @drawable/gxzw_pulse_recognizing_anim_16 'res/drawable/gxzw_pulse_recognizing_anim_16.webp'
        0x7f080e82    # @drawable/gxzw_pulse_recognizing_anim_17 'res/drawable/gxzw_pulse_recognizing_anim_17.webp'
        0x7f080e83    # @drawable/gxzw_pulse_recognizing_anim_18 'res/drawable/gxzw_pulse_recognizing_anim_18.webp'
        0x7f080e84    # @drawable/gxzw_pulse_recognizing_anim_19 'res/drawable/gxzw_pulse_recognizing_anim_19.webp'
        0x7f080e86    # @drawable/gxzw_pulse_recognizing_anim_20 'res/drawable/gxzw_pulse_recognizing_anim_20.webp'
        0x7f080e87    # @drawable/gxzw_pulse_recognizing_anim_21 'res/drawable/gxzw_pulse_recognizing_anim_21.webp'
        0x7f080e88    # @drawable/gxzw_pulse_recognizing_anim_22 'res/drawable/gxzw_pulse_recognizing_anim_22.webp'
        0x7f080e89    # @drawable/gxzw_pulse_recognizing_anim_23 'res/drawable/gxzw_pulse_recognizing_anim_23.webp'
        0x7f080e8a    # @drawable/gxzw_pulse_recognizing_anim_24 'res/drawable/gxzw_pulse_recognizing_anim_24.webp'
        0x7f080e8b    # @drawable/gxzw_pulse_recognizing_anim_25 'res/drawable/gxzw_pulse_recognizing_anim_25.webp'
        0x7f080e8c    # @drawable/gxzw_pulse_recognizing_anim_26 'res/drawable/gxzw_pulse_recognizing_anim_26.webp'
        0x7f080e8d    # @drawable/gxzw_pulse_recognizing_anim_27 'res/drawable/gxzw_pulse_recognizing_anim_27.webp'
        0x7f080e8e    # @drawable/gxzw_pulse_recognizing_anim_28 'res/drawable/gxzw_pulse_recognizing_anim_28.webp'
        0x7f080e8f    # @drawable/gxzw_pulse_recognizing_anim_29 'res/drawable/gxzw_pulse_recognizing_anim_29.webp'
        0x7f080e91    # @drawable/gxzw_pulse_recognizing_anim_30 'res/drawable/gxzw_pulse_recognizing_anim_30.webp'
    .end array-data
    .line 12
.end method


# virtual methods
.method public final generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;
    .locals 3

    .line 1
    new-instance p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 2
    sget-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemIris;->anim_drawables:[I

    .line 4
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x10

    .line 7
    invoke-direct {p0, v2, v1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;-><init>(IZ[I)V

    .line 9
    return-object p0
    .line 12
.end method

.method public final getFodMotionRtpId()I
    .locals 0

    .line 1
    const/16 p0, 0x9d

    .line 2
    return p0
    .line 4
.end method
