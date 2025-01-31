.class public Landroidx/compose/ui/graphics/colorspace/Connector;
.super Ljava/lang/Object;
.source "Connector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Connector$Companion;,
        Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Connector.kt\nandroidx/compose/ui/graphics/colorspace/Connector\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,339:1\n34#2:340\n41#2:341\n*S KotlinDebug\n*F\n+ 1 Connector.kt\nandroidx/compose/ui/graphics/colorspace/Connector\n*L\n162#1:340\n163#1:341\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

.field private static final OklabToSrgbPerceptual:Landroidx/compose/ui/graphics/colorspace/Connector;

.field private static final SrgbIdentity:Landroidx/compose/ui/graphics/colorspace/Connector;

.field private static final SrgbToOklabPerceptual:Landroidx/compose/ui/graphics/colorspace/Connector;


# instance fields
.field private final destination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field private final renderIntent:I

.field private final source:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field private final transform:[F

.field private final transformDestination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

.field private final transformSource:Landroidx/compose/ui/graphics/colorspace/ColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    .line 333
    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->identity$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/Connector;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->SrgbIdentity:Landroidx/compose/ui/graphics/colorspace/Connector;

    .line 335
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v6

    invoke-direct {v0, v3, v4, v6, v1}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->SrgbToOklabPerceptual:Landroidx/compose/ui/graphics/colorspace/Connector;

    .line 337
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Connector;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getOklab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getPerceptual-uksYyKA()I

    move-result v4

    invoke-direct {v0, v3, v2, v4, v1}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->OklabToSrgbPerceptual:Landroidx/compose/ui/graphics/colorspace/Connector;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V
    .locals 12

    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v0

    invoke-static {p1, v0, v3, v1, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->adapt$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;ILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p1

    .line 104
    :goto_0
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getModel-xdoWZVw()J

    move-result-wide v4

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v0

    invoke-static {p2, v0, v3, v1, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->adapt$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/Adaptation;ILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, p2

    .line 110
    :goto_1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->Companion:Landroidx/compose/ui/graphics/colorspace/Connector$Companion;

    invoke-static {v0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$Companion;->access$computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/Connector$Companion;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)[F

    move-result-object v10

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v9, p3

    .line 101
    invoke-direct/range {v4 .. v11}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I)V

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[F)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->source:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 76
    iput-object p2, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->destination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 77
    iput-object p3, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformSource:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 78
    iput-object p4, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformDestination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 87
    iput p5, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->renderIntent:I

    .line 88
    iput-object p6, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transform:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[F)V

    return-void
.end method

.method public static final synthetic access$getOklabToSrgbPerceptual$cp()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 1

    .line 53
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->OklabToSrgbPerceptual:Landroidx/compose/ui/graphics/colorspace/Connector;

    return-object v0
.end method

.method public static final synthetic access$getSrgbIdentity$cp()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 1

    .line 53
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->SrgbIdentity:Landroidx/compose/ui/graphics/colorspace/Connector;

    return-object v0
.end method

.method public static final synthetic access$getSrgbToOklabPerceptual$cp()Landroidx/compose/ui/graphics/colorspace/Connector;
    .locals 1

    .line 53
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Connector;->SrgbToOklabPerceptual:Landroidx/compose/ui/graphics/colorspace/Connector;

    return-object v0
.end method


# virtual methods
.method public final getDestination()Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 0

    .line 76
    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->destination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    return-object p0
.end method

.method public transform([F)[F
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformSource:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->toXyz([F)[F

    move-result-object p1

    .line 152
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transform:[F

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 153
    aget v2, p1, v1

    aget v3, v0, v1

    mul-float/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 154
    aget v2, p1, v1

    aget v3, v0, v1

    mul-float/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x2

    .line 155
    aget v2, p1, v1

    aget v0, v0, v1

    mul-float/2addr v2, v0

    aput v2, p1, v1

    .line 157
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformDestination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->fromXyz([F)[F

    move-result-object p0

    return-object p0
.end method

.method public transformToColor-wmQWz5c$ui_graphics_release(FFFF)J
    .locals 9

    .line 161
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformSource:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->toXy$ui_graphics_release(FFF)J

    move-result-wide v0

    .line 34
    sget-object v2, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    .line 41
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 164
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformSource:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->toZ$ui_graphics_release(FFF)F

    move-result p1

    .line 165
    iget-object p2, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transform:[F

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    .line 166
    aget p3, p2, p3

    mul-float/2addr v2, p3

    const/4 p3, 0x1

    .line 167
    aget p3, p2, p3

    mul-float/2addr v0, p3

    const/4 p3, 0x2

    .line 168
    aget p2, p2, p3

    mul-float/2addr p1, p2

    :cond_0
    move v6, p1

    move v5, v0

    move v4, v2

    .line 170
    iget-object v3, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->transformDestination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    iget-object v8, p0, Landroidx/compose/ui/graphics/colorspace/Connector;->destination:Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
