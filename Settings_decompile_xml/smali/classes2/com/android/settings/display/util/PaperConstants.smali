.class public Lcom/android/settings/display/util/PaperConstants;
.super Ljava/lang/Object;
.source "PaperConstants.java"


# static fields
.field public static final DEFAULT_TEXTURE_EYECARE_LEVEL:I

.field public static final DEFAULT_TEXTURE_MODE_LEVEL:F

.field public static final PAPER_MODE_MAX_LEVEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "paper_mode_max_level"

    const/high16 v1, 0x41000000    # 8.0f

    .line 17
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const-string/jumbo v1, "sys.paper_mode_max_level"

    .line 16
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/display/util/PaperConstants;->PAPER_MODE_MAX_LEVEL:I

    .line 18
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x5

    const-string/jumbo v1, "sys.paper_mode_default_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/settings/display/util/PaperConstants;->DEFAULT_TEXTURE_MODE_LEVEL:F

    const-string/jumbo v0, "paper_eyecare_default_texture"

    const/16 v1, 0xd

    .line 20
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/display/util/PaperConstants;->DEFAULT_TEXTURE_EYECARE_LEVEL:I

    return-void
.end method
