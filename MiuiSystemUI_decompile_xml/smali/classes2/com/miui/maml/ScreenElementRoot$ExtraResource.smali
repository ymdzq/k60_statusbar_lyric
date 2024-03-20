.class Lcom/miui/maml/ScreenElementRoot$ExtraResource;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mResources:Ljava/util/ArrayList;

.field private mScales:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    .line 19
    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    .line 21
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 24
    invoke-static {p2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 26
    move-result v1

    .line 29
    mul-int/lit16 v1, v1, 0x1e0

    .line 30
    div-int/lit16 v1, v1, 0xf0

    .line 32
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 34
    const/4 v1, 0x0

    .line 36
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 37
    const/4 v2, 0x0

    .line 39
    iput-object v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 40
    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    iput v2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 44
    iget-object v2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 51
    const-string v2, "extraResourcesDensity"

    .line 53
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    sget-object v3, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 59
    invoke-direct {p0, v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 61
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 64
    const-string v2, "extraResourcesScreenWidth"

    .line 66
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 71
    sget-object v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 72
    invoke-direct {p0, v0, v2, v4}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 74
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 77
    const-string v2, "extraResources"

    .line 79
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 84
    sget-object v5, Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    .line 85
    invoke-direct {p0, v0, v2, v5}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 87
    new-instance v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 90
    invoke-direct {v0, p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;)V

    .line 92
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 95
    invoke-static {p2}, Lcom/miui/maml/ResourceManager;->translateDensity(I)I

    .line 97
    move-result p2

    .line 100
    mul-int/lit16 p2, p2, 0x1e0

    .line 101
    div-int/lit16 p2, p2, 0xf0

    .line 103
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 105
    iput v1, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 107
    const/high16 p2, -0x40800000    # -1.0f

    .line 109
    iput p2, v0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 111
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 118
    const-string v0, "extraScaleByDensity"

    .line 120
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 125
    invoke-direct {p0, p2, v0, v3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 126
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 129
    const-string v0, "extraScaleByScreenWidth"

    .line 131
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 136
    invoke-direct {p0, p2, v0, v4}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 137
    iget-object p2, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 140
    const-string v0, "extraScales"

    .line 142
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 147
    invoke-direct {p0, p2, p1, v5}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 148
    return-void
    .line 151
.end method

.method public static synthetic access$200(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method private inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    const-string v0, ","

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    aget-object v3, v0, v2

    .line 18
    :try_start_0
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 20
    if-ne p1, v4, :cond_0

    .line 22
    new-instance v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 29
    invoke-direct {v4, p0, v3, p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 30
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_1

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 37
    if-ne p1, v4, :cond_1

    .line 39
    new-instance v4, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 46
    invoke-direct {v4, p0, v3, p3}, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lcom/miui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lcom/miui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 47
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 53
    :catch_0
    const-string v3, "format error of attribute: "

    .line 54
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 59
    const-string v4, "ScreenElementRoot"

    .line 60
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    return-void
    .line 68
.end method

.method private static parseSizeType(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string/jumbo v0, "small"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "normal"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 p0, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, "large"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    const/4 p0, 0x3

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string/jumbo v0, "xlarge"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    const/4 p0, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0
    .line 45
.end method


# virtual methods
.method public findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 4

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p4

    .line 10
    const v0, 0x7fffffff

    .line 11
    move v1, v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 19
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 25
    iget v3, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 27
    if-eqz v3, :cond_1

    .line 29
    if-eq v3, p3, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    iget v3, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 34
    sub-int v3, p1, v3

    .line 36
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 38
    move-result v3

    .line 41
    if-ge v3, v0, :cond_2

    .line 42
    iget v0, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 44
    sub-int v0, p2, v0

    .line 46
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 48
    move-result v0

    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 52
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    move v1, v0

    .line 58
    move v0, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-ne v3, v0, :cond_0

    .line 61
    iget v3, v2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 63
    sub-int v3, p2, v3

    .line 65
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 67
    move-result v3

    .line 70
    if-ge v3, v1, :cond_3

    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 73
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    move v1, v3

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    if-ne v3, v1, :cond_0

    .line 81
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object p0

    .line 90
    const/4 p1, 0x0

    .line 91
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result p2

    .line 95
    if-eqz p2, :cond_7

    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object p2

    .line 101
    check-cast p2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 102
    iget p4, p2, Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 104
    if-ne p4, p3, :cond_6

    .line 106
    move-object p1, p2

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    if-nez p4, :cond_5

    .line 110
    move-object p1, p2

    .line 112
    goto :goto_1

    .line 113
    :cond_7
    :goto_2
    return-object p1
    .line 114
.end method

.method public findResource(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource$Resource;

    .line 8
    return-object p0
    .line 10
.end method

.method public findScale(III)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lcom/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
