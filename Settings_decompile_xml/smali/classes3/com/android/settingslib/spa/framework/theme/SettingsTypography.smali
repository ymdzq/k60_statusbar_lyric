.class final Lcom/android/settingslib/spa/framework/theme/SettingsTypography;
.super Ljava/lang/Object;
.source "SettingsTypography.kt"


# instance fields
.field private final brand:Landroidx/compose/ui/text/font/FontFamily;

.field private final plain:Landroidx/compose/ui/text/font/FontFamily;

.field private final typography:Landroidx/compose/material3/Typography;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;)V
    .locals 453

    move-object/from16 v0, p0

    const-string/jumbo v1, "settingsFontFamily"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;->getBrand()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v1

    move-object/from16 v251, v1

    move-object/from16 v221, v1

    move-object/from16 v191, v1

    move-object/from16 v161, v1

    move-object/from16 v131, v1

    move-object/from16 v101, v1

    move-object/from16 v71, v1

    move-object/from16 v41, v1

    move-object v11, v1

    iput-object v1, v0, Lcom/android/settingslib/spa/framework/theme/SettingsTypography;->brand:Landroidx/compose/ui/text/font/FontFamily;

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/android/settingslib/spa/framework/theme/SettingsFontFamily;->getPlain()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v1

    move-object/16 v431, v1

    move-object/16 v401, v1

    move-object/16 v371, v1

    move-object/16 v341, v1

    move-object/16 v311, v1

    move-object/16 v281, v1

    iput-object v1, v0, Lcom/android/settingslib/spa/framework/theme/SettingsTypography;->plain:Landroidx/compose/ui/text/font/FontFamily;

    .line 32
    new-instance v1, Landroidx/compose/material3/Typography;

    .line 35
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v8

    const/16 v3, 0x39

    .line 36
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v6

    const/16 v3, 0x40

    .line 37
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v24

    const-wide v3, -0x4036666666666666L    # -0.2

    .line 38
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v13

    .line 39
    sget-object v255, Landroidx/compose/ui/text/style/Hyphens;->Companion:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v30

    .line 33
    new-instance v252, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v3, v252

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 39
    invoke-static/range {v30 .. v30}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v30

    const v31, 0x1eff59

    const/16 v32, 0x0

    .line 33
    invoke-direct/range {v3 .. v32}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v38

    const/16 v3, 0x2d

    .line 44
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v36

    const/16 v3, 0x34

    .line 45
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v54

    const-wide/16 v3, 0x0

    .line 46
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v43

    .line 47
    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v5

    .line 41
    new-instance v14, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v33, v14

    const-wide/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    .line 47
    invoke-static {v5}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v60

    const v61, 0x1eff59

    const/16 v62, 0x0

    .line 41
    invoke-direct/range {v33 .. v62}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v68

    const/16 v5, 0x24

    .line 52
    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v66

    const/16 v6, 0x2c

    .line 53
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v84

    .line 54
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v73

    .line 55
    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v6

    .line 49
    new-instance v15, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v63, v15

    const-wide/16 v64, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v72, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const-wide/16 v78, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    .line 55
    invoke-static {v6}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v90

    const v91, 0x1eff59

    const/16 v92, 0x0

    .line 49
    invoke-direct/range {v63 .. v92}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v98

    const/16 v6, 0x20

    .line 60
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v96

    const/16 v7, 0x28

    .line 61
    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v114

    .line 62
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v103

    .line 63
    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v7

    .line 57
    new-instance v16, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v93, v16

    const-wide/16 v94, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v102, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const-wide/16 v108, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    .line 63
    invoke-static {v7}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v120

    const v121, 0x1eff59

    const/16 v122, 0x0

    .line 57
    invoke-direct/range {v93 .. v122}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v128

    const/16 v7, 0x1c

    .line 68
    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v126

    .line 69
    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v144

    .line 70
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v133

    .line 71
    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v5

    .line 65
    new-instance v17, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v123, v17

    const-wide/16 v124, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v132, 0x0

    const/16 v135, 0x0

    const/16 v136, 0x0

    const/16 v137, 0x0

    const-wide/16 v138, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const/16 v142, 0x0

    const/16 v143, 0x0

    const/16 v146, 0x0

    const/16 v147, 0x0

    const/16 v148, 0x0

    const/16 v149, 0x0

    .line 71
    invoke-static {v5}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v150

    const v151, 0x1eff59

    const/16 v152, 0x0

    .line 65
    invoke-direct/range {v123 .. v152}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v158

    const/16 v5, 0x18

    .line 76
    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v156

    .line 77
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v174

    .line 78
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(D)J

    move-result-wide v163

    .line 79
    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v3

    .line 73
    new-instance v18, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v153, v18

    const-wide/16 v154, 0x0

    const/16 v159, 0x0

    const/16 v160, 0x0

    const/16 v162, 0x0

    const/16 v165, 0x0

    const/16 v166, 0x0

    const/16 v167, 0x0

    const-wide/16 v168, 0x0

    const/16 v170, 0x0

    const/16 v171, 0x0

    const/16 v172, 0x0

    const/16 v173, 0x0

    const/16 v176, 0x0

    const/16 v177, 0x0

    const/16 v178, 0x0

    const/16 v179, 0x0

    .line 79
    invoke-static {v3}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v180

    const v181, 0x1eff59

    const/16 v182, 0x0

    .line 73
    invoke-direct/range {v153 .. v182}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v188

    const/16 v3, 0x16

    .line 84
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v186

    .line 85
    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v204

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    .line 86
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v193

    .line 87
    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v6

    .line 81
    new-instance v19, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v183, v19

    const-wide/16 v184, 0x0

    const/16 v189, 0x0

    const/16 v190, 0x0

    const/16 v192, 0x0

    const/16 v195, 0x0

    const/16 v196, 0x0

    const/16 v197, 0x0

    const-wide/16 v198, 0x0

    const/16 v200, 0x0

    const/16 v201, 0x0

    const/16 v202, 0x0

    const/16 v203, 0x0

    const/16 v206, 0x0

    const/16 v207, 0x0

    const/16 v208, 0x0

    const/16 v209, 0x0

    .line 87
    invoke-static {v6}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v210

    const v211, 0x1eff59

    const/16 v212, 0x0

    .line 81
    invoke-direct/range {v183 .. v212}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v218

    const/16 v6, 0x14

    .line 92
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v216

    .line 93
    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v234

    .line 94
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v223

    .line 95
    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v7

    .line 89
    new-instance v20, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v213, v20

    const-wide/16 v214, 0x0

    const/16 v219, 0x0

    const/16 v220, 0x0

    const/16 v222, 0x0

    const/16 v225, 0x0

    const/16 v226, 0x0

    const/16 v227, 0x0

    const-wide/16 v228, 0x0

    const/16 v230, 0x0

    const/16 v231, 0x0

    const/16 v232, 0x0

    const/16 v233, 0x0

    const/16 v236, 0x0

    const/16 v237, 0x0

    const/16 v238, 0x0

    const/16 v239, 0x0

    .line 95
    invoke-static {v7}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v240

    const v241, 0x1eff59

    const/16 v242, 0x0

    .line 89
    invoke-direct/range {v213 .. v242}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 99
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v248

    const/16 v7, 0x12

    .line 100
    invoke-static {v7}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v246

    .line 101
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    move-wide/16 v264, v7

    .line 102
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v253

    .line 103
    invoke-virtual/range {v255 .. v255}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v3

    .line 97
    new-instance v21, Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v243, v21

    const-wide/16 v244, 0x0

    const/16 v249, 0x0

    const/16 v250, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, v252

    move-object/from16 v252, v4

    move-object/from16 v8, v255

    move-object/from16 v255, v4

    move-object/16 v256, v4

    move-object/16 v257, v4

    const-wide/16 v9, 0x0

    move-wide/16 v258, v9

    move-object/16 v260, v4

    move-object/16 v261, v4

    move-object/16 v262, v4

    move-object/16 v263, v4

    move-object/16 v266, v4

    move-object/16 v267, v4

    move-object/16 v268, v4

    move-object/16 v269, v4

    .line 103
    invoke-static {v3}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v3

    move-object/16 v270, v3

    const v3, 0x1eff59

    move/16 v271, v3

    const/4 v3, 0x0

    move-object/16 v272, v3

    .line 97
    invoke-direct/range {v243 .. v272}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    move-object/16 v278, v3

    const/16 v3, 0x10

    .line 108
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    move-wide/16 v276, v9

    .line 109
    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v9

    move-wide/16 v294, v9

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 110
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v11

    move-wide/16 v283, v11

    .line 111
    invoke-virtual {v8}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v4

    .line 105
    new-instance v22, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v273, v22

    const-wide/16 v11, 0x0

    move-wide/16 v274, v11

    const/4 v11, 0x0

    move-object/16 v279, v11

    move-object/16 v280, v11

    move-object/16 v282, v11

    move-object/16 v285, v11

    move-object/16 v286, v11

    move-object/16 v287, v11

    const-wide/16 v11, 0x0

    move-wide/16 v288, v11

    const/4 v11, 0x0

    move-object/16 v290, v11

    move-object/16 v291, v11

    move-object/16 v292, v11

    move-object/16 v293, v11

    move-object/16 v296, v11

    move-object/16 v297, v11

    move-object/16 v298, v11

    move-object/16 v299, v11

    .line 111
    invoke-static {v4}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v4

    move-object/16 v300, v4

    const v4, 0x1eff59

    move/16 v301, v4

    const/4 v4, 0x0

    move-object/16 v302, v4

    .line 105
    invoke-direct/range {v273 .. v302}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    move-object/16 v308, v4

    const/16 v4, 0xe

    .line 116
    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v11

    move-wide/16 v306, v11

    .line 117
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v11

    move-wide/16 v324, v11

    .line 118
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v11

    move-wide/16 v313, v11

    .line 119
    invoke-virtual {v8}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v11

    .line 113
    new-instance v23, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v303, v23

    const-wide/16 v12, 0x0

    move-wide/16 v304, v12

    const/4 v12, 0x0

    move-object/16 v309, v12

    move-object/16 v310, v12

    move-object/16 v312, v12

    move-object/16 v315, v12

    move-object/16 v316, v12

    move-object/16 v317, v12

    const-wide/16 v12, 0x0

    move-wide/16 v318, v12

    const/4 v12, 0x0

    move-object/16 v320, v12

    move-object/16 v321, v12

    move-object/16 v322, v12

    move-object/16 v323, v12

    move-object/16 v326, v12

    move-object/16 v327, v12

    move-object/16 v328, v12

    move-object/16 v329, v12

    .line 119
    invoke-static {v11}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v11

    move-object/16 v330, v11

    const v11, 0x1eff59

    move/16 v331, v11

    const/4 v11, 0x0

    move-object/16 v332, v11

    .line 113
    invoke-direct/range {v303 .. v332}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v11

    move-object/16 v338, v11

    const/16 v11, 0xc

    .line 124
    invoke-static {v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v12

    move-wide/16 v336, v12

    .line 125
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v12

    move-wide/16 v354, v12

    .line 126
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v12

    move-wide/16 v343, v12

    .line 127
    invoke-virtual {v8}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v12

    .line 121
    new-instance v24, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v333, v24

    const-wide/16 v25, 0x0

    move-wide/16 v334, v25

    const/4 v13, 0x0

    move-object/16 v339, v13

    move-object/16 v340, v13

    move-object/16 v342, v13

    move-object/16 v345, v13

    move-object/16 v346, v13

    move-object/16 v347, v13

    move-wide/16 v348, v25

    move-object/16 v350, v13

    move-object/16 v351, v13

    move-object/16 v352, v13

    move-object/16 v353, v13

    move-object/16 v356, v13

    move-object/16 v357, v13

    move-object/16 v358, v13

    move-object/16 v359, v13

    .line 127
    invoke-static {v12}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v12

    move-object/16 v360, v12

    const v12, 0x1eff59

    move/16 v361, v12

    const/4 v12, 0x0

    move-object/16 v362, v12

    .line 121
    invoke-direct/range {v333 .. v362}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v12

    move-object/16 v368, v12

    .line 132
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v12

    move-wide/16 v366, v12

    .line 133
    invoke-static {v5}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v12

    move-wide/16 v384, v12

    .line 134
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v12

    move-wide/16 v373, v12

    .line 135
    invoke-virtual {v8}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v5

    .line 129
    new-instance v25, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v363, v25

    const-wide/16 v12, 0x0

    move-wide/16 v364, v12

    const/4 v12, 0x0

    move-object/16 v369, v12

    move-object/16 v370, v12

    move-object/16 v372, v12

    move-object/16 v375, v12

    move-object/16 v376, v12

    move-object/16 v377, v12

    const-wide/16 v12, 0x0

    move-wide/16 v378, v12

    const/4 v12, 0x0

    move-object/16 v380, v12

    move-object/16 v381, v12

    move-object/16 v382, v12

    move-object/16 v383, v12

    move-object/16 v386, v12

    move-object/16 v387, v12

    move-object/16 v388, v12

    move-object/16 v389, v12

    .line 135
    invoke-static {v5}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v5

    move-object/16 v390, v5

    const v5, 0x1eff59

    move/16 v391, v5

    const/4 v5, 0x0

    move-object/16 v392, v5

    .line 129
    invoke-direct/range {v363 .. v392}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    move-object/16 v398, v5

    .line 140
    invoke-static {v4}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    move-wide/16 v396, v4

    .line 141
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    move-wide/16 v414, v4

    .line 142
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v4

    move-wide/16 v403, v4

    .line 143
    invoke-virtual {v8}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v4

    .line 137
    new-instance v26, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v393, v26

    const-wide/16 v5, 0x0

    move-wide/16 v394, v5

    const/4 v5, 0x0

    move-object/16 v399, v5

    move-object/16 v400, v5

    move-object/16 v402, v5

    move-object/16 v405, v5

    move-object/16 v406, v5

    move-object/16 v407, v5

    const-wide/16 v5, 0x0

    move-wide/16 v408, v5

    const/4 v5, 0x0

    move-object/16 v410, v5

    move-object/16 v411, v5

    move-object/16 v412, v5

    move-object/16 v413, v5

    move-object/16 v416, v5

    move-object/16 v417, v5

    move-object/16 v418, v5

    move-object/16 v419, v5

    .line 143
    invoke-static {v4}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v4

    move-object/16 v420, v4

    const v4, 0x1eff59

    move/16 v421, v4

    const/4 v4, 0x0

    move-object/16 v422, v4

    .line 137
    invoke-direct/range {v393 .. v422}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    move-object/16 v428, v2

    .line 148
    invoke-static {v11}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v4

    move-wide/16 v426, v4

    .line 149
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v2

    move-wide/16 v444, v2

    .line 150
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->getEm(D)J

    move-result-wide v2

    move-wide/16 v433, v2

    .line 151
    invoke-virtual {v8}, Landroidx/compose/ui/text/style/Hyphens$Companion;->getAuto-vmbZdU8()I

    move-result v2

    .line 145
    new-instance v27, Landroidx/compose/ui/text/TextStyle;

    move-object/16 v423, v27

    const-wide/16 v3, 0x0

    move-wide/16 v424, v3

    const/4 v3, 0x0

    move-object/16 v429, v3

    move-object/16 v430, v3

    move-object/16 v432, v3

    move-object/16 v435, v3

    move-object/16 v436, v3

    move-object/16 v437, v3

    const-wide/16 v3, 0x0

    move-wide/16 v438, v3

    const/4 v3, 0x0

    move-object/16 v440, v3

    move-object/16 v441, v3

    move-object/16 v442, v3

    move-object/16 v443, v3

    move-object/16 v446, v3

    move-object/16 v447, v3

    move-object/16 v448, v3

    move-object/16 v449, v3

    .line 151
    invoke-static {v2}, Landroidx/compose/ui/text/style/Hyphens;->box-impl(I)Landroidx/compose/ui/text/style/Hyphens;

    move-result-object v2

    move-object/16 v450, v2

    const v2, 0x1eff59

    move/16 v451, v2

    const/4 v2, 0x0

    move-object/16 v452, v2

    .line 145
    invoke-direct/range {v423 .. v452}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Landroidx/compose/ui/text/style/LineBreak;Landroidx/compose/ui/text/style/Hyphens;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v1

    move-object v13, v7

    .line 32
    invoke-direct/range {v12 .. v27}, Landroidx/compose/material3/Typography;-><init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V

    iput-object v1, v0, Lcom/android/settingslib/spa/framework/theme/SettingsTypography;->typography:Landroidx/compose/material3/Typography;

    return-void
.end method


# virtual methods
.method public final getTypography()Landroidx/compose/material3/Typography;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/theme/SettingsTypography;->typography:Landroidx/compose/material3/Typography;

    return-object p0
.end method
