.class public final Lcom/android/systemui/people/PeopleTileViewHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

.field public static final DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

.field public static final DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

.field public static final EMOJI_PATTERN:Ljava/util/regex/Pattern;

.field public static final MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final mAppWidgetId:I

.field public final mContext:Landroid/content/Context;

.field public final mDensity:F

.field public final mHeight:I

.field public mIntegerFormat:Ljava/text/NumberFormat;

.field public final mIsLeftToRight:Z

.field public final mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

.field public final mLayoutSize:I

.field public mLocale:Ljava/util/Locale;

.field public mMediumVerticalPadding:I

.field public final mTile:Landroid/app/people/PeopleSpaceTile;

.field public final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[!][!]+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    const-string v0, "[?][?]+"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    .line 16
    const-string v0, "[!?][!?]+"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    .line 24
    const-string v0, "![?].*|.*[?]!"

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    const-string v0, "\\p{RI}\\p{RI}|(\\p{Emoji}(\\p{EMod}|\\x{FE0F}\\x{20E3}?|[\\x{E0020}-\\x{E007E}]+\\x{E007F})|[\\p{Emoji}&&\\p{So}])(\\x{200D}\\p{Emoji}(\\p{EMod}|\\x{FE0F}\\x{20E3}?|[\\x{E0020}-\\x{E007E}]+\\x{E007F})?)*"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    return-void
    .line 42
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IIILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 9
    iput p3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    move-result-object p1

    .line 20
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 23
    iput p4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    .line 25
    iput p5, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 27
    const p1, 0x7f071021    # @dimen/required_height_for_large '168.0dp'

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 32
    move-result p1

    .line 35
    const/4 p2, 0x1

    .line 36
    const/4 p3, 0x0

    .line 37
    const/4 p6, 0x2

    .line 38
    if-lt p5, p1, :cond_0

    .line 39
    const p1, 0x7f071023    # @dimen/required_width_for_large '120.0dp'

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 44
    move-result p1

    .line 47
    if-lt p4, p1, :cond_0

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    const p1, 0x7f071022    # @dimen/required_height_for_medium '80.0dp'

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 54
    move-result p1

    .line 57
    if-lt p5, p1, :cond_1

    .line 58
    const p1, 0x7f071024    # @dimen/required_width_for_medium '136.0dp'

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 63
    move-result p1

    .line 66
    if-lt p4, p1, :cond_1

    .line 67
    const p1, 0x7f0700aa    # @dimen/avatar_size_for_medium '52.0dp'

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 72
    move-result p1

    .line 75
    const/4 p4, 0x4

    .line 76
    add-int/2addr p1, p4

    .line 77
    const v0, 0x7f070d09    # @dimen/name_text_size_for_medium_content '12.0sp'

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 81
    move-result v0

    .line 84
    add-int/2addr v0, p1

    .line 85
    sub-int/2addr p5, v0

    .line 86
    invoke-static {p5, p6}, Ljava/lang/Math;->floorDiv(II)I

    .line 87
    move-result p1

    .line 90
    const/16 p5, 0x10

    .line 91
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    .line 93
    move-result p1

    .line 96
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result p1

    .line 100
    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    .line 101
    move p6, p2

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move p6, p3

    .line 105
    :goto_0
    iput p6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 108
    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 112
    move-result p1

    .line 115
    if-nez p1, :cond_2

    .line 116
    goto :goto_1

    .line 118
    :cond_2
    move p2, p3

    .line 119
    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    .line 120
    return-void
    .line 122
.end method

.method public static createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)Landroid/widget/RemoteViews;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    const-string v1, "appWidgetSizes"

    .line 12
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v1

    .line 30
    const v2, 0x7f070284    # @dimen/default_width '146.0dp'

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 34
    move-result v1

    .line 37
    div-float/2addr v1, v0

    .line 38
    float-to-int v1, v1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v2

    .line 43
    const v3, 0x7f070280    # @dimen/default_height '92.0dp'

    .line 44
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    move-result v2

    .line 50
    div-float/2addr v2, v0

    .line 51
    float-to-int v0, v2

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    const/4 v3, 0x2

    .line 55
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    const-string v3, "appWidgetMinWidth"

    .line 59
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 61
    move-result v3

    .line 64
    const-string v4, "appWidgetMaxHeight"

    .line 65
    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 67
    move-result v4

    .line 70
    new-instance v5, Landroid/util/SizeF;

    .line 71
    int-to-float v3, v3

    .line 73
    int-to-float v4, v4

    .line 74
    invoke-direct {v5, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    .line 75
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v3, "appWidgetMaxWidth"

    .line 81
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 83
    move-result v1

    .line 86
    const-string v3, "appWidgetMinHeight"

    .line 87
    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 89
    move-result p3

    .line 92
    new-instance v0, Landroid/util/SizeF;

    .line 93
    int-to-float v1, v1

    .line 95
    int-to-float p3, p3

    .line 96
    invoke-direct {v0, v1, p3}, Landroid/util/SizeF;-><init>(FF)V

    .line 97
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    move-object v1, v2

    .line 103
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 104
    move-result-object p3

    .line 107
    invoke-interface {p3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    .line 108
    move-result-object p3

    .line 111
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 112
    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;

    .line 116
    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 118
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 121
    move-result-object p0

    .line 124
    invoke-interface {p3, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 125
    move-result-object p0

    .line 128
    check-cast p0, Ljava/util/Map;

    .line 129
    new-instance p1, Landroid/widget/RemoteViews;

    .line 131
    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;-><init>(Ljava/util/Map;)V

    .line 133
    return-object p1
    .line 136
.end method

.method public static getPersonIconBitmap(Landroid/content/Context;IZLandroid/graphics/drawable/Icon;Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    if-nez p3, :cond_0

    .line 5
    const v2, 0x7f080ef2    # @drawable/ic_avatar_with_badge 'res/drawable/ic_avatar_with_badge.xml'

    .line 7
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 22
    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 25
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance v2, Lcom/android/systemui/people/PeopleStoryIconFactory;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static {p0, v4}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    .line 37
    move v4, p1

    .line 40
    invoke-direct {v2, p0, v3, p1}, Lcom/android/systemui/people/PeopleStoryIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;I)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 48
    move-result-object v3

    .line 51
    new-instance v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    .line 52
    invoke-direct {v5, v0, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 54
    new-instance v0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;

    .line 57
    :try_start_0
    iget-object v3, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    const/16 v4, 0x80

    .line 61
    move-object/from16 v6, p4

    .line 63
    move/from16 v7, p5

    .line 65
    invoke-virtual {v3, v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 67
    move-result-object v3

    .line 70
    iget-object v4, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v4, v3}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 73
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    iget-object v3, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 80
    move-result-object v3

    .line 83
    :goto_0
    move-object v6, v3

    .line 84
    iget v7, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconBitmapSize:I

    .line 85
    iget v8, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mImportantConversationColor:I

    .line 87
    iget v10, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconSize:F

    .line 89
    iget v11, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mDensity:F

    .line 91
    iget v12, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mAccentColor:I

    .line 93
    move-object v4, v0

    .line 95
    move/from16 v9, p6

    .line 96
    move/from16 v13, p2

    .line 98
    invoke-direct/range {v4 .. v13}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;-><init>(Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;Landroid/graphics/drawable/Drawable;IIZFFIZ)V

    .line 100
    if-eqz p7, :cond_1

    .line 103
    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    .line 105
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 109
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 112
    move-result-object v0

    .line 115
    return-object v0
    .line 116
.end method

.method public static isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getNotificationPolicyState()I

    .line 6
    move-result v1

    .line 9
    and-int/lit8 v2, v1, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 12
    return v0

    .line 14
    :cond_1
    and-int/lit8 v2, v1, 0x4

    .line 15
    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    return v0

    .line 25
    :cond_2
    and-int/lit8 v2, v1, 0x8

    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 28
    if-eqz v2, :cond_3

    .line 30
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    .line 32
    move-result v2

    .line 35
    cmpl-float v2, v2, v3

    .line 36
    if-nez v2, :cond_3

    .line 38
    return v0

    .line 40
    :cond_3
    and-int/lit8 v1, v1, 0x10

    .line 41
    if-eqz v1, :cond_5

    .line 43
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    .line 45
    move-result v1

    .line 48
    const/high16 v2, 0x3f000000    # 0.5f

    .line 49
    cmpl-float v1, v1, v2

    .line 51
    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    .line 55
    move-result v1

    .line 58
    cmpl-float v1, v1, v3

    .line 59
    if-nez v1, :cond_5

    .line 61
    :cond_4
    return v0

    .line 63
    :cond_5
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->canBypassDnd()Z

    .line 64
    move-result p0

    .line 67
    xor-int/lit8 p0, p0, 0x1

    .line 68
    return p0
    .line 70
.end method

.method public static setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const v1, 0x7f0a031f    # @id/emojis

    .line 6
    if-eqz v0, :cond_0

    .line 9
    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13
    return-void

    .line 16
    :cond_0
    const v0, 0x7f0a031c    # @id/emoji1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20
    const v0, 0x7f0a031d    # @id/emoji2

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    const v0, 0x7f0a031e    # @id/emoji3

    .line 29
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 36
    return-void
    .line 39
.end method

.method public static setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const v1, 0x7f0a0750    # @id/punctuations

    .line 6
    if-eqz v0, :cond_0

    .line 9
    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13
    return-void

    .line 16
    :cond_0
    const v0, 0x7f0a074a    # @id/punctuation1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20
    const v0, 0x7f0a074b    # @id/punctuation2

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    const v0, 0x7f0a074c    # @id/punctuation3

    .line 29
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    const v0, 0x7f0a074d    # @id/punctuation4

    .line 35
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 38
    const v0, 0x7f0a074e    # @id/punctuation5

    .line 41
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 44
    const v0, 0x7f0a074f    # @id/punctuation6

    .line 47
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 54
    return-void
    .line 57
.end method


# virtual methods
.method public final createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    new-instance v7, Landroid/widget/RemoteViews;

    .line 4
    iget-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    iget v5, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 14
    if-eq v5, v4, :cond_1

    .line 16
    if-eq v5, v3, :cond_0

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 20
    move-result v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v6, 0x7f0d02c4    # @layout/people_tile_with_suppression_detail_content_vertical 'res/layout/people_tile_with_suppression_detail_content_vertical.xml'

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    const v6, 0x7f0d02c3    # @layout/people_tile_with_suppression_detail_content_horizontal 'res/layout/people_tile_with_suppression_detail_content_horizontal.xml'

    .line 29
    :goto_0
    invoke-direct {v7, v0, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 32
    const v0, 0x7f0700ab    # @dimen/avatar_size_for_medium_empty '64.0dp'

    .line 35
    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 38
    move-result v0

    .line 41
    const v6, 0x7f070772    # @dimen/max_people_avatar_size '108.0dp'

    .line 42
    invoke-virtual {v1, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 45
    move-result v6

    .line 48
    const v8, 0x7f1308cb    # @string/paused_by_dnd 'Paused by Do Not Disturb'

    .line 49
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v8

    .line 55
    const v9, 0x7f0a0970    # @id/text_content

    .line 56
    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    if-ne v5, v3, :cond_2

    .line 62
    const v3, 0x7f070200    # @dimen/content_text_size_for_large '14.0sp'

    .line 64
    goto :goto_1

    .line 67
    :cond_2
    const v3, 0x7f070201    # @dimen/content_text_size_for_medium '12.0sp'

    .line 68
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object v10

    .line 74
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 75
    move-result v10

    .line 78
    const/4 v11, 0x0

    .line 79
    invoke-virtual {v7, v9, v11, v10}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 80
    invoke-virtual {v1, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 83
    move-result v10

    .line 86
    const-string/jumbo v11, "setMaxLines"

    .line 87
    iget v12, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 90
    const/16 v13, 0x10

    .line 92
    if-ne v5, v4, :cond_3

    .line 94
    sub-int/2addr v12, v13

    .line 96
    div-int/2addr v12, v10

    .line 97
    invoke-virtual {v7, v9, v11, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 98
    goto/16 :goto_7

    .line 101
    :cond_3
    int-to-float v4, v13

    .line 103
    iget v9, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 104
    mul-float/2addr v4, v9

    .line 106
    float-to-int v13, v4

    .line 107
    const/16 v4, 0xe

    .line 108
    int-to-float v4, v4

    .line 110
    mul-float/2addr v4, v9

    .line 111
    float-to-int v4, v4

    .line 112
    if-nez v5, :cond_4

    .line 113
    const v14, 0x7f07101e    # @dimen/regular_predefined_icon '18.0dp'

    .line 115
    goto :goto_2

    .line 118
    :cond_4
    const v14, 0x7f0704ca    # @dimen/largest_predefined_icon '32.0dp'

    .line 119
    :goto_2
    invoke-virtual {v1, v14}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 122
    move-result v14

    .line 125
    add-int/lit8 v12, v12, -0x20

    .line 126
    sub-int/2addr v12, v14

    .line 128
    const v15, 0x7f070e55    # @dimen/padding_between_suppressed_layout_items '8.0dp'

    .line 129
    invoke-virtual {v1, v15}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 132
    move-result v15

    .line 135
    move/from16 v16, v14

    .line 136
    iget v14, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    .line 138
    add-int/lit8 v1, v14, -0x20

    .line 140
    sub-int v0, v12, v0

    .line 142
    mul-int/lit8 v15, v15, 0x2

    .line 144
    move/from16 v17, v4

    .line 146
    sub-int v4, v0, v15

    .line 148
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    .line 150
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    move/from16 v18, v13

    .line 155
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    move-result-object v13

    .line 160
    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 161
    move-result v3

    .line 164
    const/4 v13, 0x0

    .line 165
    invoke-virtual {v0, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    const v3, 0x10301ad    # @android:style/TextAppearance.DeviceDefault

    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 172
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 175
    move-result-object v0

    .line 178
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 179
    move-result v3

    .line 182
    int-to-float v1, v1

    .line 183
    mul-float/2addr v1, v9

    .line 184
    float-to-int v1, v1

    .line 185
    const/4 v13, 0x0

    .line 186
    invoke-static {v8, v13, v3, v0, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 187
    move-result-object v0

    .line 190
    invoke-virtual {v0, v13}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 191
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 195
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    goto :goto_4

    .line 199
    :catch_0
    move-exception v0

    .line 200
    goto :goto_3

    .line 201
    :catch_1
    move-exception v0

    .line 202
    move/from16 v18, v13

    .line 203
    :goto_3
    const-string v1, "Could not create static layout: "

    .line 205
    const-string v3, "PeopleTileView"

    .line 207
    invoke-static {v1, v0, v3}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    .line 212
    :goto_4
    if-nez v0, :cond_5

    .line 213
    const v0, 0x7fffffff

    .line 215
    goto :goto_5

    .line 218
    :cond_5
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    .line 219
    move-result v0

    .line 222
    int-to-float v0, v0

    .line 223
    div-float/2addr v0, v9

    .line 224
    float-to-int v0, v0

    .line 225
    :goto_5
    const v13, 0x7f0a071c    # @id/predefined_icon

    .line 226
    if-gt v0, v4, :cond_6

    .line 229
    const/4 v1, 0x2

    .line 231
    if-ne v5, v1, :cond_6

    .line 232
    sub-int/2addr v12, v0

    .line 234
    sub-int/2addr v12, v15

    .line 235
    const/4 v0, 0x0

    .line 236
    const v1, 0x7f0a0970    # @id/text_content

    .line 237
    invoke-virtual {v7, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    div-int/2addr v4, v10

    .line 243
    invoke-virtual {v7, v1, v11, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 244
    const/4 v0, 0x0

    .line 247
    invoke-virtual {v7, v13, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 248
    add-int/lit8 v14, v14, -0x20

    .line 251
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    .line 253
    move-result v0

    .line 256
    const/high16 v1, 0x41200000    # 10.0f

    .line 257
    mul-float/2addr v9, v1

    .line 259
    float-to-int v1, v9

    .line 260
    invoke-static {v0, v1, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 261
    move-result v0

    .line 264
    const/high16 v2, 0x1020000    # @android:id/background

    .line 265
    move-object v1, v7

    .line 267
    move/from16 v3, v18

    .line 268
    move/from16 v4, v17

    .line 270
    move/from16 v5, v18

    .line 272
    move/from16 v6, v18

    .line 274
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 276
    move/from16 v1, v16

    .line 279
    int-to-float v1, v1

    .line 281
    const/4 v2, 0x1

    .line 282
    invoke-virtual {v7, v13, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 283
    invoke-virtual {v7, v13, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 286
    goto :goto_6

    .line 289
    :cond_6
    if-eqz v5, :cond_7

    .line 290
    new-instance v7, Landroid/widget/RemoteViews;

    .line 292
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 297
    const v1, 0x7f0d02c0    # @layout/people_tile_small 'res/layout/people_tile_small.xml'

    .line 298
    invoke-direct {v7, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 301
    :cond_7
    move-object/from16 v1, p0

    .line 304
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    .line 306
    move-result v0

    .line 309
    const v1, 0x7f0a05b0    # @id/messages_count

    .line 310
    const/16 v2, 0x8

    .line 313
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 315
    const v1, 0x7f0a0672    # @id/name

    .line 318
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 321
    invoke-virtual {v7, v13, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 324
    :goto_6
    const/4 v1, 0x0

    .line 327
    invoke-virtual {v7, v13, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 328
    const v1, 0x7f081147    # @drawable/ic_qs_dnd_on 'res/drawable/ic_qs_dnd_on.xml'

    .line 331
    invoke-virtual {v7, v13, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 334
    :goto_7
    new-instance v1, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    .line 337
    invoke-direct {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;-><init>(Landroid/widget/RemoteViews;I)V

    .line 339
    return-object v1
    .line 342
.end method

.method public final createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v1, Landroid/widget/RemoteViews;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v3

    .line 11
    const/4 v4, 0x2

    .line 12
    iget v5, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 13
    const/4 v6, 0x1

    .line 15
    if-eq v5, v6, :cond_1

    .line 16
    if-eq v5, v4, :cond_0

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 20
    move-result v7

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v7, 0x7f0d02bb    # @layout/people_tile_large_with_status_content 'res/layout/people_tile_large_with_status_content.xml'

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    const v7, 0x7f0d02bd    # @layout/people_tile_medium_with_content 'res/layout/people_tile_medium_with_content.xml'

    .line 29
    :goto_0
    invoke-direct {v1, v3, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    .line 38
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v7

    .line 45
    const v8, 0x7f130153    # @string/audio_status 'Listening'

    .line 46
    const v9, 0x7f130c3f    # @string/video_status 'Watching'

    .line 49
    const-string v10, ""

    .line 52
    const v11, 0x7f1304ad    # @string/game_status 'Playing'

    .line 54
    if-eqz v7, :cond_2

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 59
    move-result v3

    .line 62
    packed-switch v3, :pswitch_data_0

    .line 63
    move-object v3, v10

    .line 66
    goto :goto_1

    .line 67
    :pswitch_0
    const v3, 0x7f130bfa    # @string/upcoming_birthday_status 'Birthday soon'

    .line 68
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 74
    goto :goto_1

    .line 75
    :pswitch_1
    const v3, 0x7f130692    # @string/location_status 'Sharing location'

    .line 76
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 82
    goto :goto_1

    .line 83
    :pswitch_2
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 87
    goto :goto_1

    .line 88
    :pswitch_3
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 92
    goto :goto_1

    .line 93
    :pswitch_4
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 97
    goto :goto_1

    .line 98
    :pswitch_5
    const v3, 0x7f130853    # @string/new_story_status 'New story'

    .line 99
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 105
    goto :goto_1

    .line 106
    :pswitch_6
    const v3, 0x7f130145    # @string/anniversary_status 'Anniversary'

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 113
    goto :goto_1

    .line 114
    :pswitch_7
    const v3, 0x7f1301a8    # @string/birthday_status 'Birthday'

    .line 115
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 121
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPredefinedIconVisible(Landroid/widget/RemoteViews;)V

    .line 122
    const v7, 0x7f0a0970    # @id/text_content

    .line 125
    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 131
    move-result v12

    .line 134
    const/16 v13, 0x8

    .line 135
    if-eq v12, v6, :cond_3

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 139
    move-result v12

    .line 142
    if-ne v12, v13, :cond_4

    .line 143
    :cond_3
    const-string/jumbo v12, "\ud83c\udf82"

    .line 145
    invoke-static {v1, v12}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 148
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    .line 151
    move-result-object v12

    .line 154
    const/4 v14, 0x0

    .line 155
    const-string/jumbo v15, "setTextColor"

    .line 156
    const v8, 0x7f0a0672    # @id/name

    .line 159
    if-eqz v12, :cond_6

    .line 162
    const v9, 0x7f0a0825    # @id/scrim_layout

    .line 164
    invoke-virtual {v1, v9, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 167
    const v9, 0x7f0a08eb    # @id/status_icon

    .line 170
    invoke-virtual {v1, v9, v12}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 173
    if-ne v5, v4, :cond_5

    .line 176
    const/16 v3, 0x50

    .line 178
    const v9, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 180
    const-string/jumbo v14, "setGravity"

    .line 183
    invoke-virtual {v1, v9, v14, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 186
    invoke-virtual {v1, v8, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    const v3, 0x1010036    # @android:attr/textColorPrimary

    .line 192
    invoke-virtual {v1, v7, v15, v3}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 195
    goto :goto_2

    .line 198
    :cond_5
    if-ne v5, v6, :cond_7

    .line 199
    invoke-virtual {v1, v7, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    invoke-virtual {v1, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    goto :goto_2

    .line 207
    :cond_6
    const v3, 0x1010038    # @android:attr/textColorSecondary

    .line 208
    invoke-virtual {v1, v7, v15, v3}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 211
    invoke-virtual {v0, v1, v14}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 214
    :cond_7
    :goto_2
    const v3, 0x7f0700a6    # @dimen/availability_dot_status_padding '8.0dp'

    .line 217
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 223
    move-result v3

    .line 226
    packed-switch v3, :pswitch_data_1

    .line 227
    const v3, 0x7f081116    # @drawable/ic_person 'res/drawable/ic_person.xml'

    .line 230
    goto :goto_3

    .line 233
    :pswitch_8
    const v3, 0x7f080ffa    # @drawable/ic_gift 'res/drawable/ic_gift.xml'

    .line 234
    goto :goto_3

    .line 237
    :pswitch_9
    const v3, 0x7f081036    # @drawable/ic_location 'res/drawable/ic_location.xml'

    .line 238
    goto :goto_3

    .line 241
    :pswitch_a
    const v3, 0x7f081119    # @drawable/ic_play_games 'res/drawable/ic_play_games.xml'

    .line 242
    goto :goto_3

    .line 245
    :pswitch_b
    const v3, 0x7f0811dc    # @drawable/ic_video 'res/drawable/ic_video.xml'

    .line 246
    goto :goto_3

    .line 249
    :pswitch_c
    const v3, 0x7f081102    # @drawable/ic_music_note 'res/drawable/ic_music_note.xml'

    .line 250
    goto :goto_3

    .line 253
    :pswitch_d
    const v3, 0x7f081114    # @drawable/ic_pages 'res/drawable/ic_pages.xml'

    .line 254
    goto :goto_3

    .line 257
    :pswitch_e
    const v3, 0x7f080f3f    # @drawable/ic_celebration 'res/drawable/ic_celebration.xml'

    .line 258
    goto :goto_3

    .line 261
    :pswitch_f
    const v3, 0x7f080f02    # @drawable/ic_cake 'res/drawable/ic_cake.xml'

    .line 262
    :goto_3
    const v9, 0x7f0a071c    # @id/predefined_icon

    .line 265
    invoke-virtual {v1, v9, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 268
    iget-object v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 271
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 273
    move-result-object v3

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    .line 277
    move-result-object v13

    .line 280
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 281
    move-result v13

    .line 284
    if-nez v13, :cond_8

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    .line 287
    move-result-object v10

    .line 290
    goto :goto_4

    .line 291
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 292
    move-result v13

    .line 295
    packed-switch v13, :pswitch_data_2

    .line 296
    goto :goto_4

    .line 299
    :pswitch_10
    const v10, 0x7f130bfb    # @string/upcoming_birthday_status_content_description 'It's %1$s’s birthday soon'

    .line 300
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 303
    move-result-object v3

    .line 306
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    move-result-object v10

    .line 310
    goto :goto_4

    .line 311
    :pswitch_11
    const v10, 0x7f130693    # @string/location_status_content_description '%1$s is sharing location'

    .line 312
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 315
    move-result-object v3

    .line 318
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    move-result-object v10

    .line 322
    goto :goto_4

    .line 323
    :pswitch_12
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 324
    move-result-object v10

    .line 327
    goto :goto_4

    .line 328
    :pswitch_13
    const v3, 0x7f130c3f    # @string/video_status 'Watching'

    .line 329
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 332
    move-result-object v10

    .line 335
    goto :goto_4

    .line 336
    :pswitch_14
    const v3, 0x7f130153    # @string/audio_status 'Listening'

    .line 337
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 340
    move-result-object v10

    .line 343
    goto :goto_4

    .line 344
    :pswitch_15
    const v10, 0x7f130854    # @string/new_story_status_content_description '%1$s shared a new story'

    .line 345
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 348
    move-result-object v3

    .line 351
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    move-result-object v10

    .line 355
    goto :goto_4

    .line 356
    :pswitch_16
    const v10, 0x7f130146    # @string/anniversary_status_content_description 'It's %1$s’s anniversary'

    .line 357
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 360
    move-result-object v3

    .line 363
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    move-result-object v10

    .line 367
    goto :goto_4

    .line 368
    :pswitch_17
    const v10, 0x7f1301a9    # @string/birthday_status_content_description 'It's %1$s’s birthday'

    .line 369
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 372
    move-result-object v3

    .line 375
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    move-result-object v10

    .line 379
    :goto_4
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 380
    move-result-object v0

    .line 383
    filled-new-array {v0, v10}, [Ljava/lang/Object;

    .line 384
    move-result-object v0

    .line 387
    const v3, 0x7f130852    # @string/new_status_content_description '%1$s has a status update: %2$s'

    .line 388
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    move-result-object v0

    .line 394
    if-eqz v5, :cond_c

    .line 395
    if-eq v5, v6, :cond_a

    .line 397
    if-eq v5, v4, :cond_9

    .line 399
    goto :goto_6

    .line 401
    :cond_9
    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 402
    goto :goto_6

    .line 405
    :cond_a
    if-nez v12, :cond_b

    .line 406
    goto :goto_5

    .line 408
    :cond_b
    move v7, v8

    .line 409
    :goto_5
    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 410
    goto :goto_6

    .line 413
    :cond_c
    invoke-virtual {v1, v9, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 414
    :goto_6
    return-object v1

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 418
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 438
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
    .line 458
.end method

.method public final decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    invoke-static {p1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 16
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    move-result-object p0

    .line 23
    invoke-static {p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 24
    invoke-static {p1, p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 27
    return-object p1
    .line 30
.end method

.method public getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 24
    move-result v2

    .line 27
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 28
    move-result v3

    .line 31
    new-instance v4, Landroid/util/Pair;

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v5

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v6

    .line 41
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 48
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result p0

    .line 59
    const/4 p1, 0x2

    .line 60
    const/4 v2, 0x0

    .line 61
    if-ge p0, p1, :cond_1

    .line 62
    return-object v2

    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result p1

    .line 69
    if-ge p0, p1, :cond_3

    .line 70
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object p1

    .line 75
    check-cast p1, Landroid/util/Pair;

    .line 76
    add-int/lit8 v3, p0, -0x1

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 83
    check-cast v4, Landroid/util/Pair;

    .line 84
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 99
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 103
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 113
    check-cast p0, Ljava/lang/CharSequence;

    .line 114
    return-object p0

    .line 116
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 117
    goto :goto_1

    .line 119
    :cond_3
    return-object v2
    .line 120
.end method

.method public getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    .line 16
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    const-string p0, "!?"

    .line 28
    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 37
    move-result v0

    .line 40
    const-string v1, "!"

    .line 41
    if-nez v0, :cond_2

    .line 43
    return-object v1

    .line 45
    :cond_2
    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 52
    move-result v0

    .line 55
    const-string v2, "?"

    .line 56
    if-nez v0, :cond_3

    .line 58
    return-object v2

    .line 60
    :cond_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 61
    move-result p0

    .line 64
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 65
    move-result p1

    .line 68
    if-ge p0, p1, :cond_4

    .line 69
    return-object v2

    .line 71
    :cond_4
    return-object v1
    .line 72
.end method

.method public final getLayoutSmallByHeight()I
    .locals 1

    .line 1
    const v0, 0x7f071022    # @dimen/required_height_for_medium '80.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 5
    move-result v0

    .line 8
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 9
    if-lt p0, v0, :cond_0

    .line 11
    const p0, 0x7f0d02c0    # @layout/people_tile_small 'res/layout/people_tile_small.xml'

    .line 13
    return p0

    .line 16
    :cond_0
    const p0, 0x7f0d02c1    # @layout/people_tile_small_horizontal 'res/layout/people_tile_small_horizontal.xml'

    .line 17
    return p0
    .line 20
.end method

.method public final getLineHeightFromResource(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 2
    :try_start_0
    new-instance v1, Landroid/widget/TextView;

    .line 4
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 18
    const p1, 0x10301ad    # @android:style/TextAppearance.DeviceDefault

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 24
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    .line 27
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    div-float/2addr p1, p0

    .line 34
    float-to-int p0, p1

    .line 35
    return p0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "Could not create text view: "

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    const-string v0, "PeopleTileView"

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const p1, 0x7f070201    # @dimen/content_text_size_for_medium '12.0sp'

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 60
    move-result p0

    .line 63
    return p0
    .line 64
.end method

.method public final getMaxAvatarSize(Landroid/widget/RemoteViews;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 2
    move-result p1

    .line 5
    const v0, 0x7f0700aa    # @dimen/avatar_size_for_medium '52.0dp'

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 9
    move-result v1

    .line 12
    const v2, 0x7f0d02bc    # @layout/people_tile_medium_empty 'res/layout/people_tile_medium_empty.xml'

    .line 13
    const v3, 0x7f070773    # @dimen/max_people_avatar_size_for_large_content '64.0dp'

    .line 16
    if-ne p1, v2, :cond_0

    .line 19
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 21
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    const v2, 0x7f0d02bd    # @layout/people_tile_medium_with_content 'res/layout/people_tile_medium_with_content.xml'

    .line 26
    if-ne p1, v2, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 31
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    const v0, 0x7f0d02c0    # @layout/people_tile_small 'res/layout/people_tile_small.xml'

    .line 36
    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    .line 39
    iget v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 41
    if-ne p1, v0, :cond_2

    .line 43
    const v0, 0x7f070d0a    # @dimen/name_text_size_for_small '14.0sp'

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 48
    move-result v0

    .line 51
    const/16 v1, 0x12

    .line 52
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 54
    move-result v0

    .line 57
    add-int/2addr v0, v1

    .line 58
    sub-int v0, v4, v0

    .line 59
    add-int/lit8 v1, v2, -0x8

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 63
    move-result v1

    .line 66
    :cond_2
    const v0, 0x7f0d02c1    # @layout/people_tile_small_horizontal 'res/layout/people_tile_small_horizontal.xml'

    .line 67
    if-ne p1, v0, :cond_3

    .line 70
    add-int/lit8 v0, v4, -0xa

    .line 72
    add-int/lit8 v1, v2, -0x10

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 76
    move-result v1

    .line 79
    :cond_3
    const v0, 0x7f0d02ba    # @layout/people_tile_large_with_notification_content 'res/layout/people_tile_large_with_notification_content.xml'

    .line 80
    const v5, 0x7f070200    # @dimen/content_text_size_for_large '14.0sp'

    .line 83
    if-ne p1, v0, :cond_4

    .line 86
    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 88
    move-result p1

    .line 91
    mul-int/lit8 p1, p1, 0x3

    .line 92
    add-int/lit8 p1, p1, 0x3e

    .line 94
    sub-int/2addr v4, p1

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 97
    move-result p0

    .line 100
    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    .line 101
    move-result p0

    .line 104
    return p0

    .line 105
    :cond_4
    const v0, 0x7f0d02bb    # @layout/people_tile_large_with_status_content 'res/layout/people_tile_large_with_status_content.xml'

    .line 106
    if-ne p1, v0, :cond_5

    .line 109
    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 111
    move-result p1

    .line 114
    mul-int/lit8 p1, p1, 0x3

    .line 115
    add-int/lit8 p1, p1, 0x4c

    .line 117
    sub-int/2addr v4, p1

    .line 119
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 120
    move-result p0

    .line 123
    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    .line 124
    move-result p0

    .line 127
    return p0

    .line 128
    :cond_5
    const v0, 0x7f0d02b8    # @layout/people_tile_large_empty 'res/layout/people_tile_large_empty.xml'

    .line 129
    if-ne p1, v0, :cond_6

    .line 132
    const p1, 0x7f070d07    # @dimen/name_text_size_for_large '16.0sp'

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 137
    move-result p1

    .line 140
    add-int/lit8 p1, p1, 0x1c

    .line 141
    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 143
    move-result v0

    .line 146
    add-int/2addr v0, p1

    .line 147
    add-int/lit8 v0, v0, 0x10

    .line 148
    add-int/lit8 v0, v0, 0xa

    .line 150
    add-int/lit8 v0, v0, 0x10

    .line 152
    sub-int/2addr v4, v0

    .line 154
    add-int/lit8 v2, v2, -0x1c

    .line 155
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 157
    move-result v1

    .line 160
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 161
    invoke-static {p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    .line 163
    move-result p1

    .line 166
    if-eqz p1, :cond_7

    .line 167
    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 169
    if-eqz p1, :cond_7

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    .line 173
    move-result-object p1

    .line 176
    iget v1, p1, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;->mAvatarSize:I

    .line 177
    :cond_7
    const p1, 0x7f070772    # @dimen/max_people_avatar_size '108.0dp'

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 182
    move-result p0

    .line 185
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 186
    move-result p0

    .line 189
    return p0
    .line 190
.end method

.method public final getSizeInDp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    move-result p1

    .line 11
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 12
    div-float/2addr p1, p0

    .line 14
    float-to-int p0, p1

    .line 15
    return p0
    .line 16
.end method

.method public getViews()Landroid/widget/RemoteViews;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x8

    .line 6
    const-string v4, "PeopleTileView"

    .line 8
    iget-object v5, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 10
    iget-object v6, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 12
    if-eqz v5, :cond_25

    .line 14
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->isPackageSuspended()Z

    .line 16
    move-result v7

    .line 19
    if-nez v7, :cond_25

    .line 20
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    .line 22
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    goto/16 :goto_10

    .line 28
    :cond_0
    invoke-static {v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    .line 30
    move-result v7

    .line 33
    if-eqz v7, :cond_1

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    .line 36
    move-result-object v0

    .line 39
    iget-object v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 40
    goto/16 :goto_12

    .line 42
    :cond_1
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationCategory()Ljava/lang/String;

    .line 44
    move-result-object v7

    .line 47
    const-string v8, "missed_call"

    .line 48
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v7

    .line 53
    const v8, 0x7f130851    # @string/new_notification_text_content_description '%1$s sent a message: %2$s'

    .line 54
    const/4 v9, 0x2

    .line 57
    const v10, 0x7f0a0970    # @id/text_content

    .line 58
    const v11, 0x7f0a071c    # @id/predefined_icon

    .line 61
    iget v12, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 64
    const v13, 0x7f0a05b0    # @id/messages_count

    .line 66
    const-string/jumbo v14, "setTextColor"

    .line 69
    if-eqz v7, :cond_6

    .line 72
    new-instance v7, Landroid/widget/RemoteViews;

    .line 74
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    move-result-object v15

    .line 79
    if-eq v12, v0, :cond_3

    .line 80
    if-eq v12, v9, :cond_2

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 84
    move-result v0

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const v0, 0x7f0d02bb    # @layout/people_tile_large_with_status_content 'res/layout/people_tile_large_with_status_content.xml'

    .line 89
    goto :goto_0

    .line 92
    :cond_3
    const v0, 0x7f0d02bd    # @layout/people_tile_medium_with_content 'res/layout/people_tile_medium_with_content.xml'

    .line 93
    :goto_0
    invoke-direct {v7, v15, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 99
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPredefinedIconVisible(Landroid/widget/RemoteViews;)V

    .line 102
    invoke-virtual {v7, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    invoke-virtual {v7, v13, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 111
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    .line 114
    move-result-object v0

    .line 117
    invoke-virtual {v7, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 121
    move-result-object v2

    .line 124
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 128
    invoke-virtual {v6, v8, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 132
    if-nez v12, :cond_4

    .line 133
    move v2, v11

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    move v2, v10

    .line 137
    :goto_1
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 138
    const v0, 0x1010543    # @android:attr/colorError

    .line 141
    invoke-virtual {v7, v10, v14, v0}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 144
    const-string/jumbo v2, "setColorFilter"

    .line 147
    invoke-virtual {v7, v11, v2, v0}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 150
    const v0, 0x7f081118    # @drawable/ic_phone_missed 'res/drawable/ic_phone_missed.xml'

    .line 153
    invoke-virtual {v7, v11, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 156
    if-ne v12, v9, :cond_5

    .line 159
    const-string/jumbo v0, "setGravity"

    .line 161
    const/16 v2, 0x50

    .line 164
    const v8, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 166
    invoke-virtual {v7, v8, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 169
    const v0, 0x7f0704c9    # @dimen/larger_predefined_icon '24.0dp'

    .line 172
    invoke-virtual {v7, v11, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 175
    invoke-virtual {v7, v11, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 178
    :cond_5
    const v0, 0x7f0700a4    # @dimen/availability_dot_notification_padding '12.0dp'

    .line 181
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    .line 184
    move-object v0, v7

    .line 187
    goto/16 :goto_12

    .line 188
    :cond_6
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 193
    if-eqz v0, :cond_14

    .line 194
    new-instance v7, Landroid/widget/RemoteViews;

    .line 196
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 201
    const/4 v13, 0x1

    .line 202
    if-eq v12, v13, :cond_8

    .line 203
    if-eq v12, v9, :cond_7

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 207
    move-result v13

    .line 210
    goto :goto_2

    .line 211
    :cond_7
    const v13, 0x7f0d02ba    # @layout/people_tile_large_with_notification_content 'res/layout/people_tile_large_with_notification_content.xml'

    .line 212
    goto :goto_2

    .line 215
    :cond_8
    const v13, 0x7f0d02bd    # @layout/people_tile_medium_with_content 'res/layout/people_tile_medium_with_content.xml'

    .line 216
    :goto_2
    invoke-direct {v7, v0, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 219
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 222
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationSender()Ljava/lang/CharSequence;

    .line 225
    move-result-object v13

    .line 228
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationDataUri()Landroid/net/Uri;

    .line 229
    move-result-object v0

    .line 232
    const v15, 0x7f0a042a    # @id/image

    .line 233
    if-eqz v0, :cond_9

    .line 236
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 238
    move-result-object v8

    .line 241
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 242
    move-result-object v8

    .line 245
    const v9, 0x7f130850    # @string/new_notification_image_content_description '%1$s sent an image'

    .line 246
    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    move-result-object v8

    .line 252
    invoke-virtual {v7, v15, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v7, v15, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    invoke-virtual {v7, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 259
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 262
    move-result-object v9

    .line 265
    invoke-static {v9, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    .line 266
    move-result-object v0

    .line 269
    new-instance v9, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda4;

    .line 270
    invoke-direct {v9, v1}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    .line 272
    invoke-static {v0, v9}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    .line 275
    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 279
    move-result-object v0

    .line 282
    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto/16 :goto_6

    .line 286
    :catch_0
    move-exception v0

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    .line 289
    const-string v14, "Could not decode image: "

    .line 291
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v0

    .line 302
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v7, v10, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 306
    invoke-virtual {v7, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 309
    invoke-virtual {v7, v15, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 312
    goto :goto_6

    .line 315
    :cond_9
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 316
    move-result v0

    .line 319
    xor-int/lit8 v0, v0, 0x1

    .line 320
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 322
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    .line 325
    move-result-object v0

    .line 328
    if-eqz v13, :cond_a

    .line 329
    move-object v2, v13

    .line 331
    goto :goto_3

    .line 332
    :cond_a
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 333
    move-result-object v2

    .line 336
    :goto_3
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 337
    move-result-object v2

    .line 340
    invoke-virtual {v6, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 341
    move-result-object v2

    .line 344
    if-nez v12, :cond_b

    .line 345
    move v8, v11

    .line 347
    goto :goto_4

    .line 348
    :cond_b
    move v8, v10

    .line 349
    :goto_4
    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 353
    const v0, 0x1010036    # @android:attr/textColorPrimary

    .line 356
    invoke-virtual {v7, v10, v14, v0}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 359
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    .line 362
    move-result-object v0

    .line 365
    invoke-virtual {v7, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 366
    if-ne v12, v9, :cond_c

    .line 369
    const v16, 0x7f0a0672    # @id/name

    .line 371
    const/16 v17, 0x0

    .line 374
    const/16 v18, 0x0

    .line 376
    const/16 v19, 0x0

    .line 378
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 380
    move-result-object v0

    .line 383
    const v2, 0x7f07006f    # @dimen/above_notification_text_padding '22.0dp'

    .line 384
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 387
    move-result v20

    .line 390
    move v2, v15

    .line 391
    move-object v15, v7

    .line 392
    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 393
    goto :goto_5

    .line 396
    :cond_c
    move v2, v15

    .line 397
    :goto_5
    invoke-virtual {v7, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 398
    const v0, 0x7f08106a    # @drawable/ic_message 'res/drawable/ic_message.xml'

    .line 401
    invoke-virtual {v7, v11, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 404
    :goto_6
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    .line 407
    move-result v0

    .line 410
    const/4 v2, 0x1

    .line 411
    if-le v0, v2, :cond_12

    .line 412
    if-ne v12, v2, :cond_f

    .line 414
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 416
    move-result-object v0

    .line 419
    const v2, 0x7f0700df    # @dimen/before_messages_count_padding '40.0dp'

    .line 420
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 423
    move-result v0

    .line 426
    const v16, 0x7f0a0672    # @id/name

    .line 427
    iget-boolean v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    .line 430
    if-eqz v2, :cond_d

    .line 432
    const/4 v8, 0x0

    .line 434
    move/from16 v17, v8

    .line 435
    goto :goto_7

    .line 437
    :cond_d
    move/from16 v17, v0

    .line 438
    :goto_7
    const/16 v18, 0x0

    .line 440
    if-eqz v2, :cond_e

    .line 442
    goto :goto_8

    .line 444
    :cond_e
    const/4 v0, 0x0

    .line 445
    :goto_8
    move/from16 v19, v0

    .line 446
    const/16 v20, 0x0

    .line 448
    move-object v15, v7

    .line 450
    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 451
    :cond_f
    const v0, 0x7f0a05b0    # @id/messages_count

    .line 454
    const/4 v2, 0x0

    .line 457
    invoke-virtual {v7, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 458
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    .line 461
    move-result v0

    .line 464
    const/4 v2, 0x6

    .line 465
    if-lt v0, v2, :cond_10

    .line 466
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 468
    move-result-object v0

    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    move-result-object v2

    .line 475
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 476
    move-result-object v2

    .line 479
    const v8, 0x7f13072d    # @string/messages_count_overflow_indicator '%d+'

    .line 480
    invoke-virtual {v0, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 483
    move-result-object v0

    .line 486
    goto :goto_9

    .line 487
    :cond_10
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 488
    move-result-object v2

    .line 491
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 492
    move-result-object v2

    .line 495
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 496
    move-result-object v2

    .line 499
    const/4 v8, 0x0

    .line 500
    invoke-virtual {v2, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 501
    move-result-object v2

    .line 504
    iget-object v8, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    .line 505
    invoke-virtual {v2, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 507
    move-result v8

    .line 510
    if-nez v8, :cond_11

    .line 511
    iput-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    .line 513
    invoke-static {v2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 515
    move-result-object v2

    .line 518
    iput-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    .line 519
    :cond_11
    iget-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    .line 521
    int-to-long v8, v0

    .line 523
    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 524
    move-result-object v0

    .line 527
    :goto_9
    const v2, 0x7f0a05b0    # @id/messages_count

    .line 528
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 531
    if-nez v12, :cond_12

    .line 534
    invoke-virtual {v7, v11, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 536
    :cond_12
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 539
    move-result v0

    .line 542
    const v2, 0x7f0a08fe    # @id/subtext

    .line 543
    if-nez v0, :cond_13

    .line 546
    const/4 v0, 0x0

    .line 548
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 549
    invoke-virtual {v7, v2, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 552
    goto :goto_a

    .line 555
    :cond_13
    invoke-virtual {v7, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 556
    :goto_a
    const v0, 0x7f0700a4    # @dimen/availability_dot_notification_padding '12.0dp'

    .line 559
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    .line 562
    move-object v2, v7

    .line 565
    goto/16 :goto_13

    .line 566
    :cond_14
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 568
    move-result-object v0

    .line 571
    if-nez v0, :cond_15

    .line 572
    new-array v0, v2, [Landroid/app/people/ConversationStatus;

    .line 574
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 576
    move-result-object v0

    .line 579
    goto :goto_b

    .line 580
    :cond_15
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 581
    move-result-object v0

    .line 584
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 585
    move-result-object v0

    .line 588
    new-instance v2, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;

    .line 589
    invoke-direct {v2, v1}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    .line 591
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 594
    move-result-object v0

    .line 597
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 598
    move-result-object v2

    .line 601
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 602
    move-result-object v0

    .line 605
    check-cast v0, Ljava/util/List;

    .line 606
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 608
    move-result-object v2

    .line 611
    new-instance v7, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;

    .line 612
    invoke-direct {v7, v9}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 614
    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 617
    move-result-object v2

    .line 620
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 621
    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 625
    move-result v7

    .line 628
    if-eqz v7, :cond_16

    .line 629
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 631
    move-result-object v2

    .line 634
    check-cast v2, Landroid/app/people/ConversationStatus;

    .line 635
    goto :goto_c

    .line 637
    :cond_16
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    .line 638
    move-result-object v2

    .line 641
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 642
    move-result v2

    .line 645
    if-nez v2, :cond_17

    .line 646
    new-instance v2, Landroid/app/people/ConversationStatus$Builder;

    .line 648
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    .line 650
    move-result-object v7

    .line 653
    const/4 v8, 0x1

    .line 654
    invoke-direct {v2, v7, v8}, Landroid/app/people/ConversationStatus$Builder;-><init>(Ljava/lang/String;I)V

    .line 655
    invoke-virtual {v2}, Landroid/app/people/ConversationStatus$Builder;->build()Landroid/app/people/ConversationStatus;

    .line 658
    move-result-object v2

    .line 661
    goto :goto_c

    .line 662
    :cond_17
    const/4 v2, 0x0

    .line 663
    :goto_c
    if-eqz v2, :cond_18

    .line 664
    invoke-virtual {v1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    .line 666
    move-result-object v0

    .line 669
    goto/16 :goto_12

    .line 670
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 672
    move-result v2

    .line 675
    if-nez v2, :cond_19

    .line 676
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 678
    move-result-object v0

    .line 681
    new-instance v2, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;

    .line 682
    invoke-direct {v2}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;-><init>()V

    .line 684
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 687
    move-result-object v2

    .line 690
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    .line 691
    move-result-object v0

    .line 694
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 695
    move-result-object v0

    .line 698
    check-cast v0, Landroid/app/people/ConversationStatus;

    .line 699
    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    .line 701
    move-result-object v0

    .line 704
    goto/16 :goto_12

    .line 705
    :cond_19
    new-instance v0, Landroid/widget/RemoteViews;

    .line 707
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 709
    move-result-object v2

    .line 712
    const/4 v7, 0x1

    .line 713
    if-eq v12, v7, :cond_1b

    .line 714
    if-eq v12, v9, :cond_1a

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 718
    move-result v8

    .line 721
    goto :goto_d

    .line 722
    :cond_1a
    const v8, 0x7f0d02b8    # @layout/people_tile_large_empty 'res/layout/people_tile_large_empty.xml'

    .line 723
    goto :goto_d

    .line 726
    :cond_1b
    const v8, 0x7f0d02bc    # @layout/people_tile_medium_empty 'res/layout/people_tile_medium_empty.xml'

    .line 727
    :goto_d
    invoke-direct {v0, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 730
    const v2, 0x7f0a0672    # @id/name

    .line 733
    const-string/jumbo v8, "setMaxLines"

    .line 736
    invoke-virtual {v0, v2, v8, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 739
    if-nez v12, :cond_1c

    .line 742
    const/4 v7, 0x0

    .line 744
    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 745
    invoke-virtual {v0, v11, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 748
    const v7, 0x7f0a05b0    # @id/messages_count

    .line 751
    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 754
    :cond_1c
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 757
    move-result-object v7

    .line 760
    if-eqz v7, :cond_1d

    .line 761
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 763
    move-result-object v7

    .line 766
    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 767
    :cond_1d
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    .line 770
    move-result-wide v9

    .line 773
    const-wide/16 v13, 0x0

    .line 774
    cmp-long v7, v9, v13

    .line 776
    if-nez v7, :cond_1e

    .line 778
    const-string v7, "Could not get valid last interaction"

    .line 780
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    goto :goto_e

    .line 785
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 786
    move-result-wide v13

    .line 789
    sub-long/2addr v13, v9

    .line 790
    invoke-static {v13, v14}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 791
    move-result-object v7

    .line 794
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 795
    move-result-wide v9

    .line 798
    const-wide/16 v13, 0x1

    .line 799
    cmp-long v9, v9, v13

    .line 801
    if-gtz v9, :cond_1f

    .line 803
    :goto_e
    const/4 v7, 0x0

    .line 805
    goto :goto_f

    .line 806
    :cond_1f
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 807
    move-result-wide v9

    .line 810
    const-wide/16 v13, 0x7

    .line 811
    cmp-long v9, v9, v13

    .line 813
    if-gez v9, :cond_20

    .line 815
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 817
    move-result-wide v9

    .line 820
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 821
    move-result-object v7

    .line 824
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 825
    move-result-object v7

    .line 828
    const v9, 0x7f130367    # @string/days_timestamp '%1$s days ago'

    .line 829
    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 832
    move-result-object v7

    .line 835
    goto :goto_f

    .line 836
    :cond_20
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 837
    move-result-wide v9

    .line 840
    cmp-long v9, v9, v13

    .line 841
    if-nez v9, :cond_21

    .line 843
    const v7, 0x7f1308ab    # @string/one_week_timestamp '1 week ago'

    .line 845
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 848
    move-result-object v7

    .line 851
    goto :goto_f

    .line 852
    :cond_21
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 853
    move-result-wide v9

    .line 856
    const-wide/16 v13, 0xe

    .line 857
    cmp-long v9, v9, v13

    .line 859
    if-gez v9, :cond_22

    .line 861
    const v7, 0x7f1308c3    # @string/over_one_week_timestamp 'Over 1 week ago'

    .line 863
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 866
    move-result-object v7

    .line 869
    goto :goto_f

    .line 870
    :cond_22
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 871
    move-result-wide v9

    .line 874
    cmp-long v7, v9, v13

    .line 875
    if-nez v7, :cond_23

    .line 877
    const v7, 0x7f130bef    # @string/two_weeks_timestamp '2 weeks ago'

    .line 879
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 882
    move-result-object v7

    .line 885
    goto :goto_f

    .line 886
    :cond_23
    const v7, 0x7f1308c4    # @string/over_two_weeks_timestamp 'Over 2 weeks ago'

    .line 887
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 890
    move-result-object v7

    .line 893
    :goto_f
    const v9, 0x7f0a04b3    # @id/last_interaction

    .line 894
    if-eqz v7, :cond_24

    .line 897
    const/4 v2, 0x0

    .line 899
    invoke-virtual {v0, v9, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 900
    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 903
    goto :goto_12

    .line 906
    :cond_24
    invoke-virtual {v0, v9, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 907
    const/4 v7, 0x1

    .line 910
    if-ne v12, v7, :cond_27

    .line 911
    const/4 v7, 0x3

    .line 913
    invoke-virtual {v0, v2, v8, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 914
    goto :goto_12

    .line 917
    :cond_25
    :goto_10
    if-eqz v5, :cond_26

    .line 918
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    .line 920
    move-result v0

    .line 923
    if-eqz v0, :cond_26

    .line 924
    new-instance v0, Landroid/widget/RemoteViews;

    .line 926
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 928
    move-result-object v2

    .line 931
    const v7, 0x7f0d02c5    # @layout/people_tile_work_profile_quiet_layout 'res/layout/people_tile_work_profile_quiet_layout.xml'

    .line 932
    invoke-direct {v0, v2, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 935
    goto :goto_11

    .line 938
    :cond_26
    new-instance v0, Landroid/widget/RemoteViews;

    .line 939
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 941
    move-result-object v2

    .line 944
    const v7, 0x7f0d02c2    # @layout/people_tile_suppressed_layout 'res/layout/people_tile_suppressed_layout.xml'

    .line 945
    invoke-direct {v0, v2, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 948
    :goto_11
    const v2, 0x7f080f55    # @drawable/ic_conversation_icon 'res/drawable/ic_conversation_icon.xml'

    .line 951
    invoke-virtual {v6, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 954
    move-result-object v2

    .line 957
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 958
    move-result-object v2

    .line 961
    const/high16 v7, 0x3f800000    # 1.0f

    .line 962
    invoke-static {v7}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    .line 964
    move-result-object v7

    .line 967
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 968
    invoke-static {v2}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 971
    move-result-object v2

    .line 974
    const v7, 0x7f0a0412    # @id/icon

    .line 975
    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 978
    :cond_27
    :goto_12
    move-object v2, v0

    .line 981
    :goto_13
    invoke-virtual {v1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    .line 982
    move-result v0

    .line 985
    if-nez v5, :cond_28

    .line 986
    goto/16 :goto_19

    .line 988
    :cond_28
    :try_start_1
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 990
    move-result-object v7

    .line 993
    if-eqz v7, :cond_29

    .line 994
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 996
    move-result-object v7

    .line 999
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1000
    move-result-object v7

    .line 1003
    new-instance v8, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;

    .line 1004
    const/4 v9, 0x1

    .line 1006
    invoke-direct {v8, v9}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1007
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 1010
    move-result v7

    .line 1013
    if-eqz v7, :cond_29

    .line 1014
    const/4 v7, 0x1

    .line 1016
    goto :goto_14

    .line 1017
    :cond_29
    const/4 v7, 0x0

    .line 1018
    :goto_14
    const v8, 0x7f0a00f6    # @id/availability

    .line 1019
    if-eqz v7, :cond_2a

    .line 1022
    const/4 v3, 0x0

    .line 1024
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1025
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1028
    move-result-object v3

    .line 1031
    const v7, 0x7f0700a5    # @dimen/availability_dot_shown_padding '4.0dp'

    .line 1032
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1035
    move-result v3

    .line 1038
    const v7, 0x7f1308cf    # @string/person_available 'Available'

    .line 1039
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1042
    move-result-object v7

    .line 1045
    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1046
    goto :goto_15

    .line 1049
    :cond_2a
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1050
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1053
    move-result-object v3

    .line 1056
    const v7, 0x7f0700a3    # @dimen/availability_dot_missing_padding '12.0dp'

    .line 1057
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1060
    move-result v3

    .line 1063
    :goto_15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1064
    move-result-object v7

    .line 1067
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 1068
    move-result v7

    .line 1071
    if-nez v7, :cond_2b

    .line 1072
    const/4 v7, 0x1

    .line 1074
    goto :goto_16

    .line 1075
    :cond_2b
    const/4 v7, 0x0

    .line 1076
    :goto_16
    const v8, 0x7f0a06e0    # @id/padding_before_availability

    .line 1077
    if-eqz v7, :cond_2c

    .line 1080
    move v9, v3

    .line 1082
    goto :goto_17

    .line 1083
    :cond_2c
    const/4 v9, 0x0

    .line 1084
    :goto_17
    const/4 v10, 0x0

    .line 1085
    if-eqz v7, :cond_2d

    .line 1086
    const/4 v3, 0x0

    .line 1088
    :cond_2d
    move v11, v3

    .line 1089
    const/4 v12, 0x0

    .line 1090
    move-object v7, v2

    .line 1091
    invoke-virtual/range {v7 .. v12}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1092
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 1095
    move-result-object v3

    .line 1098
    if-eqz v3, :cond_2e

    .line 1099
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 1101
    move-result-object v3

    .line 1104
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1105
    move-result-object v3

    .line 1108
    new-instance v7, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;

    .line 1109
    const/4 v8, 0x0

    .line 1111
    invoke-direct {v7, v8}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1112
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 1115
    move-result v3

    .line 1118
    if-eqz v3, :cond_2e

    .line 1119
    const/4 v3, 0x1

    .line 1121
    goto :goto_18

    .line 1122
    :cond_2e
    const/4 v3, 0x0

    .line 1123
    :goto_18
    iget-object v7, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 1124
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    .line 1126
    move-result-object v10

    .line 1129
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 1130
    move-result-object v11

    .line 1133
    sget-object v8, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 1134
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 1136
    move-result-object v8

    .line 1139
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1140
    move-result v12

    .line 1143
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    .line 1144
    move-result v13

    .line 1147
    invoke-static {v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    .line 1148
    move-result v14

    .line 1151
    move v8, v0

    .line 1152
    move v9, v3

    .line 1153
    invoke-static/range {v7 .. v14}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;IZLandroid/graphics/drawable/Icon;Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;

    .line 1154
    move-result-object v0

    .line 1157
    const v7, 0x7f0a06fe    # @id/person_icon

    .line 1158
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1161
    if-eqz v3, :cond_2f

    .line 1164
    const/4 v0, 0x1

    .line 1166
    new-array v0, v0, [Ljava/lang/Object;

    .line 1167
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 1169
    move-result-object v3

    .line 1172
    const/4 v8, 0x0

    .line 1173
    aput-object v3, v0, v8

    .line 1174
    const v3, 0x7f130854    # @string/new_story_status_content_description '%1$s shared a new story'

    .line 1176
    invoke-virtual {v6, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1179
    move-result-object v0

    .line 1182
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1183
    goto :goto_19

    .line 1186
    :cond_2f
    const/4 v0, 0x0

    .line 1187
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1188
    goto :goto_19

    .line 1191
    :catch_1
    move-exception v0

    .line 1192
    const-string v3, "Failed to set common fields: "

    .line 1193
    invoke-static {v3, v0, v4}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1195
    :goto_19
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 1198
    invoke-static {v0}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 1200
    move-result v3

    .line 1203
    if-eqz v3, :cond_31

    .line 1204
    if-nez v5, :cond_30

    .line 1206
    goto :goto_1a

    .line 1208
    :cond_30
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    .line 1209
    const-class v7, Lcom/android/systemui/people/widget/LaunchConversationActivity;

    .line 1211
    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1213
    const v7, 0x50808000

    .line 1216
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1219
    const-string v7, "extra_tile_id"

    .line 1222
    iget-object v8, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    .line 1224
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    const-string v7, "extra_package_name"

    .line 1229
    iget-object v8, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 1231
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    const-string v7, "extra_user_handle"

    .line 1236
    new-instance v8, Landroid/os/UserHandle;

    .line 1238
    iget v0, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 1240
    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1242
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1245
    const-string v0, "extra_notification_key"

    .line 1248
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    .line 1250
    move-result-object v5

    .line 1253
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1254
    iget v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    .line 1257
    const/high16 v1, 0xa000000

    .line 1259
    invoke-static {v6, v0, v3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1261
    move-result-object v0

    .line 1264
    const/high16 v1, 0x1020000    # @android:id/background

    .line 1265
    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1267
    goto :goto_1a

    .line 1270
    :catch_2
    move-exception v0

    .line 1271
    const-string v1, "Failed to add launch intents: "

    .line 1272
    invoke-static {v1, v0, v4}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1274
    :cond_31
    :goto_1a
    return-object v2
    .line 1277
.end method

.method public final setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    move-result p2

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 15
    const v1, 0x7f0707c0    # @dimen/medium_content_padding_above_name '4.0dp'

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v7

    .line 22
    const v3, 0x7f0a05aa    # @id/medium_content

    .line 23
    const/4 v0, 0x0

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    .line 27
    if-eqz p0, :cond_0

    .line 29
    move v4, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v4, v0

    .line 33
    :goto_0
    const/4 v5, 0x0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    move v6, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v6, p2

    .line 39
    :goto_1
    move-object v2, p1

    .line 40
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 41
    return-void
.end method

.method public final setMaxLines(Landroid/widget/RemoteViews;Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    const v2, 0x7f070d08    # @dimen/name_text_size_for_large_content '14.0sp'

    .line 7
    invoke-virtual {p0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 10
    move-result v2

    .line 13
    const v3, 0x7f070200    # @dimen/content_text_size_for_large '14.0sp'

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    const v2, 0x7f070d09    # @dimen/name_text_size_for_medium_content '12.0sp'

    .line 18
    invoke-virtual {p0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 21
    move-result v2

    .line 24
    const v3, 0x7f070201    # @dimen/content_text_size_for_medium '12.0sp'

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 28
    move-result v4

    .line 31
    const v5, 0x7f0d02bb    # @layout/people_tile_large_with_status_content 'res/layout/people_tile_large_with_status_content.xml'

    .line 32
    const/4 v6, 0x1

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    move v4, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v4, 0x0

    .line 40
    :goto_1
    if-eq v0, v6, :cond_4

    .line 41
    if-eq v0, v1, :cond_2

    .line 43
    const/4 v0, -0x1

    .line 45
    goto :goto_4

    .line 46
    :cond_2
    if-eqz v4, :cond_3

    .line 47
    const/16 v0, 0x4c

    .line 49
    goto :goto_2

    .line 51
    :cond_3
    const/16 v0, 0x3e

    .line 52
    :goto_2
    const v4, 0x7f070773    # @dimen/max_people_avatar_size_for_large_content '64.0dp'

    .line 54
    invoke-virtual {p0, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 57
    move-result v4

    .line 60
    add-int/2addr v4, v2

    .line 61
    add-int/2addr v4, v0

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    add-int/lit8 v2, v2, 0xc

    .line 64
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    .line 66
    mul-int/2addr v0, v1

    .line 68
    add-int v4, v0, v2

    .line 69
    :goto_3
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 71
    sub-int/2addr v0, v4

    .line 73
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 74
    move-result p0

    .line 77
    invoke-static {v0, p0}, Ljava/lang/Math;->floorDiv(II)I

    .line 78
    move-result p0

    .line 81
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result p0

    .line 85
    if-eqz p2, :cond_5

    .line 86
    add-int/lit8 p0, p0, -0x1

    .line 88
    :cond_5
    const p2, 0x7f0a0970    # @id/text_content

    .line 90
    const-string/jumbo v0, "setMaxLines"

    .line 93
    invoke-virtual {p1, p2, v0, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 96
    return-void
    .line 99
.end method

.method public final setPredefinedIconVisible(Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1
    const v0, 0x7f0a071c    # @id/predefined_icon

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 9
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    const v2, 0x7f0700e0    # @dimen/before_predefined_icon_padding '30.0dp'

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result v0

    .line 26
    const v3, 0x7f0a0672    # @id/name

    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    .line 30
    if-eqz p0, :cond_0

    .line 32
    move v4, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v0

    .line 36
    :goto_0
    const/4 v5, 0x0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    move v6, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v6, v1

    .line 42
    :goto_1
    const/4 v7, 0x0

    .line 43
    move-object v2, p1

    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 45
    :cond_2
    return-void
    .line 48
.end method

.method public final setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 7
    const v8, 0x7f0a071c    # @id/predefined_icon

    .line 10
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v7, v8, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 14
    const v2, 0x7f0a0970    # @id/text_content

    .line 17
    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 20
    const v9, 0x7f0a0672    # @id/name

    .line 23
    invoke-virtual {v7, v9, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 26
    const v3, 0x7f0a042a    # @id/image

    .line 29
    invoke-virtual {v7, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 32
    invoke-virtual {v7, v2, v9}, Landroid/widget/RemoteViews;->setAccessibilityTraversalAfter(II)V

    .line 35
    const/4 v10, 0x0

    .line 38
    const/16 v11, 0x8

    .line 39
    iget v12, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 41
    if-nez v12, :cond_0

    .line 43
    invoke-virtual {v7, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 45
    invoke-virtual {v7, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v7, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 52
    invoke-virtual {v7, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 55
    invoke-virtual {v7, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 58
    const v1, 0x7f0a08fe    # @id/subtext

    .line 61
    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    invoke-virtual {v7, v3, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 67
    const v1, 0x7f0a0825    # @id/scrim_layout

    .line 70
    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 73
    :goto_0
    const/4 v1, 0x1

    .line 76
    iget-object v13, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 77
    if-ne v12, v1, :cond_1

    .line 79
    iget v14, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 81
    const/high16 v1, 0x41800000    # 16.0f

    .line 83
    mul-float/2addr v1, v14

    .line 85
    float-to-double v1, v1

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 87
    move-result-wide v1

    .line 90
    double-to-int v5, v1

    .line 91
    iget v1, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    .line 92
    int-to-float v1, v1

    .line 94
    mul-float/2addr v1, v14

    .line 95
    float-to-double v1, v1

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 97
    move-result-wide v1

    .line 100
    double-to-int v6, v1

    .line 101
    const v2, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 102
    move-object/from16 v1, p1

    .line 105
    move v3, v5

    .line 107
    move v4, v6

    .line 108
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 109
    const v2, 0x7f0a0672    # @id/name

    .line 112
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 119
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    move-result-object v1

    .line 125
    const v2, 0x7f0707c1    # @dimen/medium_height_for_max_name_text_size '104.0dp'

    .line 126
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 129
    move-result v1

    .line 132
    div-float/2addr v1, v14

    .line 133
    float-to-int v1, v1

    .line 134
    iget v2, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 135
    if-le v2, v1, :cond_1

    .line 137
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v1

    .line 142
    const v2, 0x7f070771    # @dimen/max_name_text_size_for_medium '14.0sp'

    .line 143
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 146
    move-result v1

    .line 149
    float-to-int v1, v1

    .line 150
    int-to-float v1, v1

    .line 151
    invoke-virtual {v7, v9, v10, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 152
    :cond_1
    const/4 v1, 0x2

    .line 155
    if-ne v12, v1, :cond_2

    .line 156
    const v2, 0x7f0a0672    # @id/name

    .line 158
    const/4 v3, 0x0

    .line 161
    const/4 v4, 0x0

    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v1

    .line 167
    const v6, 0x7f0700e4    # @dimen/below_name_text_padding '16.0dp'

    .line 168
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 171
    move-result v6

    .line 174
    move-object/from16 v1, p1

    .line 175
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 177
    const/16 v1, 0x30

    .line 180
    const v2, 0x7f0a0223    # @id/id_0x7f0a0223

    .line 182
    const-string/jumbo v3, "setGravity"

    .line 185
    invoke-virtual {v7, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 188
    :cond_2
    const v1, 0x7f07101e    # @dimen/regular_predefined_icon '18.0dp'

    .line 191
    invoke-virtual {v7, v8, v1}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 194
    invoke-virtual {v7, v8, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 197
    const v1, 0x7f0a05b0    # @id/messages_count

    .line 200
    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    iget-object v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 206
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 208
    move-result-object v1

    .line 211
    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 214
    move-result-object v0

    .line 217
    invoke-virtual {v7, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 218
    :cond_3
    return-object v7
    .line 221
.end method
