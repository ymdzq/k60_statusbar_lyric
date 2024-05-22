.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemNone;
.super Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final anim_drawables:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x7f080e57    # @drawable/gxzw_blank 'res/drawable/gxzw_blank.webp'

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemNone;->anim_drawables:[I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final generalNormalRecognizing()Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;
    .locals 3

    .line 1
    new-instance p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 2
    sget-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemNone;->anim_drawables:[I

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, v2, v1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;-><init>(IZ[I)V

    .line 8
    return-object p0
    .line 11
.end method

.method public final getFodMotionRtpId()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method
