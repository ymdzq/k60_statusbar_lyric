.class public final Landroidx/compose/material3/tokens/TypographyTokens;
.super Ljava/lang/Object;
.source "TypographyTokens.kt"


# static fields
.field private static final BodyLarge:Landroidx/compose/ui/text/TextStyle;

.field private static final BodyMedium:Landroidx/compose/ui/text/TextStyle;

.field private static final BodySmall:Landroidx/compose/ui/text/TextStyle;

.field private static final DisplayLarge:Landroidx/compose/ui/text/TextStyle;

.field private static final DisplayMedium:Landroidx/compose/ui/text/TextStyle;

.field private static final DisplaySmall:Landroidx/compose/ui/text/TextStyle;

.field private static final HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

.field private static final HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

.field private static final HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/TypographyTokens;

.field private static final LabelLarge:Landroidx/compose/ui/text/TextStyle;

.field private static final LabelMedium:Landroidx/compose/ui/text/TextStyle;

.field private static final LabelSmall:Landroidx/compose/ui/text/TextStyle;

.field private static final TitleLarge:Landroidx/compose/ui/text/TextStyle;

.field private static final TitleMedium:Landroidx/compose/ui/text/TextStyle;

.field private static final TitleSmall:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 62

    new-instance v0, Landroidx/compose/material3/tokens/TypographyTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/TypographyTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/TypographyTokens;->INSTANCE:Landroidx/compose/material3/tokens/TypographyTokens;

    .line 26
    sget-object v0, Landroidx/compose/material3/tokens/TypeScaleTokens;->INSTANCE:Landroidx/compose/material3/tokens/TypeScaleTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyLargeFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v9

    .line 27
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyLargeWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v6

    .line 28
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyLargeSize-XSAIIZE()J

    move-result-wide v4

    .line 29
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyLargeLineHeight-XSAIIZE()J

    move-result-wide v22

    .line 30
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyLargeTracking-XSAIIZE()J

    move-result-wide v11

    .line 25
    new-instance v31, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v1, v31

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x3eff59

    const/16 v30, 0x0

    invoke-direct/range {v1 .. v30}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v31, Landroidx/compose/material3/tokens/TypographyTokens;->BodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 34
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyMediumFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v40

    .line 35
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyMediumWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v37

    .line 36
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyMediumSize-XSAIIZE()J

    move-result-wide v35

    .line 37
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyMediumLineHeight-XSAIIZE()J

    move-result-wide v53

    .line 38
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodyMediumTracking-XSAIIZE()J

    move-result-wide v42

    .line 33
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v1

    const-wide/16 v33, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const v60, 0x3eff59

    const/16 v61, 0x0

    invoke-direct/range {v32 .. v61}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->BodyMedium:Landroidx/compose/ui/text/TextStyle;

    .line 42
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodySmallFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v10

    .line 43
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodySmallWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 44
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodySmallSize-XSAIIZE()J

    move-result-wide v5

    .line 45
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodySmallLineHeight-XSAIIZE()J

    move-result-wide v23

    .line 46
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getBodySmallTracking-XSAIIZE()J

    move-result-wide v12

    .line 41
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object v2, v1

    const-wide/16 v3, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v29, 0x0

    const v30, 0x3eff59

    const/16 v31, 0x0

    invoke-direct/range {v2 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->BodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 50
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayLargeFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v40

    .line 51
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayLargeWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v37

    .line 52
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayLargeSize-XSAIIZE()J

    move-result-wide v35

    .line 53
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayLargeLineHeight-XSAIIZE()J

    move-result-wide v53

    .line 54
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayLargeTracking-XSAIIZE()J

    move-result-wide v42

    .line 49
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v1

    invoke-direct/range {v32 .. v61}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayLarge:Landroidx/compose/ui/text/TextStyle;

    .line 58
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayMediumFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v10

    .line 59
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayMediumWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 60
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayMediumSize-XSAIIZE()J

    move-result-wide v5

    .line 61
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayMediumLineHeight-XSAIIZE()J

    move-result-wide v23

    .line 62
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplayMediumTracking-XSAIIZE()J

    move-result-wide v12

    .line 57
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object v2, v1

    invoke-direct/range {v2 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayMedium:Landroidx/compose/ui/text/TextStyle;

    .line 66
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplaySmallFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v40

    .line 67
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplaySmallWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v37

    .line 68
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplaySmallSize-XSAIIZE()J

    move-result-wide v35

    .line 69
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplaySmallLineHeight-XSAIIZE()J

    move-result-wide v53

    .line 70
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getDisplaySmallTracking-XSAIIZE()J

    move-result-wide v42

    .line 65
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v1

    invoke-direct/range {v32 .. v61}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->DisplaySmall:Landroidx/compose/ui/text/TextStyle;

    .line 74
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineLargeFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v10

    .line 75
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineLargeWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 76
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineLargeSize-XSAIIZE()J

    move-result-wide v5

    .line 77
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineLargeLineHeight-XSAIIZE()J

    move-result-wide v23

    .line 78
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineLargeTracking-XSAIIZE()J

    move-result-wide v12

    .line 73
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object v2, v1

    invoke-direct/range {v2 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

    .line 82
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineMediumFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v40

    .line 83
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineMediumWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v37

    .line 84
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineMediumSize-XSAIIZE()J

    move-result-wide v35

    .line 85
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineMediumLineHeight-XSAIIZE()J

    move-result-wide v53

    .line 86
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineMediumTracking-XSAIIZE()J

    move-result-wide v42

    .line 81
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v1

    invoke-direct/range {v32 .. v61}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

    .line 90
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineSmallFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v10

    .line 91
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineSmallWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 92
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineSmallSize-XSAIIZE()J

    move-result-wide v5

    .line 93
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineSmallLineHeight-XSAIIZE()J

    move-result-wide v23

    .line 94
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getHeadlineSmallTracking-XSAIIZE()J

    move-result-wide v12

    .line 89
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object v2, v1

    invoke-direct/range {v2 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

    .line 98
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelLargeFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v40

    .line 99
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelLargeWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v37

    .line 100
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelLargeSize-XSAIIZE()J

    move-result-wide v35

    .line 101
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelLargeLineHeight-XSAIIZE()J

    move-result-wide v53

    .line 102
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelLargeTracking-XSAIIZE()J

    move-result-wide v42

    .line 97
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v1

    invoke-direct/range {v32 .. v61}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelLarge:Landroidx/compose/ui/text/TextStyle;

    .line 106
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelMediumFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v10

    .line 107
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelMediumWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 108
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelMediumSize-XSAIIZE()J

    move-result-wide v5

    .line 109
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelMediumLineHeight-XSAIIZE()J

    move-result-wide v23

    .line 110
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelMediumTracking-XSAIIZE()J

    move-result-wide v12

    .line 105
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object v2, v1

    invoke-direct/range {v2 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelMedium:Landroidx/compose/ui/text/TextStyle;

    .line 114
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelSmallFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v40

    .line 115
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelSmallWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v37

    .line 116
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelSmallSize-XSAIIZE()J

    move-result-wide v35

    .line 117
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelSmallLineHeight-XSAIIZE()J

    move-result-wide v53

    .line 118
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getLabelSmallTracking-XSAIIZE()J

    move-result-wide v42

    .line 113
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v1

    invoke-direct/range {v32 .. v61}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->LabelSmall:Landroidx/compose/ui/text/TextStyle;

    .line 122
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleLargeFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v10

    .line 123
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleLargeWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 124
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleLargeSize-XSAIIZE()J

    move-result-wide v5

    .line 125
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleLargeLineHeight-XSAIIZE()J

    move-result-wide v23

    .line 126
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleLargeTracking-XSAIIZE()J

    move-result-wide v12

    .line 121
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object v2, v1

    invoke-direct/range {v2 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->TitleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 130
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleMediumFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v40

    .line 131
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleMediumWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v37

    .line 132
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleMediumSize-XSAIIZE()J

    move-result-wide v35

    .line 133
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleMediumLineHeight-XSAIIZE()J

    move-result-wide v53

    .line 134
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleMediumTracking-XSAIIZE()J

    move-result-wide v42

    .line 129
    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v32, v1

    invoke-direct/range {v32 .. v61}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/compose/material3/tokens/TypographyTokens;->TitleMedium:Landroidx/compose/ui/text/TextStyle;

    .line 138
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleSmallFont()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object v10

    .line 139
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleSmallWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v7

    .line 140
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleSmallSize-XSAIIZE()J

    move-result-wide v5

    .line 141
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleSmallLineHeight-XSAIIZE()J

    move-result-wide v23

    .line 142
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/TypeScaleTokens;->getTitleSmallTracking-XSAIIZE()J

    move-result-wide v12

    .line 137
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    move-object v2, v0

    invoke-direct/range {v2 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/tokens/TypographyTokens;->TitleSmall:Landroidx/compose/ui/text/TextStyle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBodyLarge()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 24
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->BodyLarge:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getBodyMedium()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 32
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->BodyMedium:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getBodySmall()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 40
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->BodySmall:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getDisplayLarge()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 48
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayLarge:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getDisplayMedium()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 56
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->DisplayMedium:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getDisplaySmall()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 64
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->DisplaySmall:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getHeadlineLarge()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 72
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineLarge:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getHeadlineMedium()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 80
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineMedium:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getHeadlineSmall()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 88
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->HeadlineSmall:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getLabelLarge()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 96
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->LabelLarge:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getLabelMedium()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 104
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->LabelMedium:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getLabelSmall()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 112
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->LabelSmall:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getTitleLarge()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 120
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->TitleLarge:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getTitleMedium()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 128
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->TitleMedium:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getTitleSmall()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    .line 136
    sget-object p0, Landroidx/compose/material3/tokens/TypographyTokens;->TitleSmall:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method
