.class public Lcom/android/systemui/DessertCaseView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ALPHA_MASK:[F

.field public static final MASK:[F

.field public static final NUM_PASTRIES:I

.field public static final PASTRIES:[I

.field public static final RARE_PASTRIES:[I

.field public static final XRARE_PASTRIES:[I

.field public static final XXRARE_PASTRIES:[I


# instance fields
.field public final hsv:[F

.field public final mCellSize:I

.field public mCells:[Landroid/view/View;

.field public mColumns:I

.field public final mDrawables:Landroid/util/SparseArray;

.field public final mFreeList:Ljava/util/Set;

.field public final mHandler:Landroid/os/Handler;

.field public mHeight:I

.field public final mJuggle:Lcom/android/systemui/DessertCaseView$1;

.field public mRows:I

.field public mStarted:Z

.field public mWidth:I

.field public final tmpSet:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/android/systemui/DessertCaseView;

    .line 2
    const v0, 0x7f080c35    # @drawable/dessert_kitkat 'res/drawable-nodpi/dessert_kitkat.png'

    .line 4
    const v1, 0x7f080c27    # @drawable/dessert_android 'res/drawable-nodpi/dessert_android.png'

    .line 7
    filled-new-array {v0, v1}, [I

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    .line 14
    const/16 v1, 0x8

    .line 16
    new-array v1, v1, [I

    .line 18
    fill-array-data v1, :array_0

    .line 20
    sput-object v1, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    .line 23
    const v2, 0x7f080c2d    # @drawable/dessert_flan 'res/drawable-nodpi/dessert_flan.png'

    .line 25
    const v3, 0x7f080c34    # @drawable/dessert_keylimepie 'res/drawable-nodpi/dessert_keylimepie.png'

    .line 28
    const v4, 0x7f080c36    # @drawable/dessert_petitfour 'res/drawable-nodpi/dessert_petitfour.png'

    .line 31
    const v5, 0x7f080c2b    # @drawable/dessert_donutburger 'res/drawable-nodpi/dessert_donutburger.png'

    .line 34
    filled-new-array {v4, v5, v2, v3}, [I

    .line 37
    move-result-object v2

    .line 40
    sput-object v2, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    .line 41
    const v3, 0x7f080c29    # @drawable/dessert_dandroid 'res/drawable-nodpi/dessert_dandroid.png'

    .line 43
    const v4, 0x7f080c32    # @drawable/dessert_jandycane 'res/drawable-nodpi/dessert_jandycane.png'

    .line 46
    const v5, 0x7f080c37    # @drawable/dessert_zombiegingerbread 'res/drawable-nodpi/dessert_zombiegingerbread.png'

    .line 49
    filled-new-array {v5, v3, v4}, [I

    .line 52
    move-result-object v3

    .line 55
    sput-object v3, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    .line 56
    array-length v0, v0

    .line 58
    array-length v1, v1

    .line 59
    add-int/2addr v0, v1

    .line 60
    array-length v1, v2

    .line 61
    add-int/2addr v0, v1

    .line 62
    array-length v1, v3

    .line 63
    add-int/2addr v0, v1

    .line 64
    sput v0, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    .line 65
    const/16 v0, 0x14

    .line 67
    new-array v1, v0, [F

    .line 69
    fill-array-data v1, :array_1

    .line 71
    sput-object v1, Lcom/android/systemui/DessertCaseView;->MASK:[F

    .line 74
    new-array v0, v0, [F

    .line 76
    fill-array-data v0, :array_2

    .line 78
    sput-object v0, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    .line 81
    return-void

    .line 83
    :array_0
    .array-data 4
        0x7f080c28    # @drawable/dessert_cupcake 'res/drawable-nodpi/dessert_cupcake.png'
        0x7f080c2a    # @drawable/dessert_donut 'res/drawable-nodpi/dessert_donut.png'
        0x7f080c2c    # @drawable/dessert_eclair 'res/drawable-nodpi/dessert_eclair.png'
        0x7f080c2e    # @drawable/dessert_froyo 'res/drawable-nodpi/dessert_froyo.png'
        0x7f080c2f    # @drawable/dessert_gingerbread 'res/drawable-nodpi/dessert_gingerbread.png'
        0x7f080c30    # @drawable/dessert_honeycomb 'res/drawable-nodpi/dessert_honeycomb.png'
        0x7f080c31    # @drawable/dessert_ics 'res/drawable-nodpi/dessert_ics.png'
        0x7f080c33    # @drawable/dessert_jellybean 'res/drawable-nodpi/dessert_jellybean.png'
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 104
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 148
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    sget v2, Lcom/android/systemui/DessertCaseView;->NUM_PASTRIES:I

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance v1, Lcom/android/systemui/DessertCaseView$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/DessertCaseView$1;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 8
    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    .line 9
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 11
    iput-boolean v2, v0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    const v3, 0x7f0702be    # @dimen/dessert_case_cell_size '192.0dp'

    .line 12
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 13
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v5, 0x200

    if-ge v3, v5, :cond_0

    const/4 v3, 0x2

    .line 14
    iput v3, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v3, 0x1

    .line 15
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 16
    sget-object v3, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    sget-object v5, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    sget-object v6, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    sget-object v7, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    filled-new-array {v3, v5, v6, v7}, [[I

    move-result-object v3

    const/4 v5, 0x0

    move v6, v2

    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    aget-object v7, v3, v6

    .line 17
    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v7, v9

    .line 18
    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 19
    invoke-static {v1, v10, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 20
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 22
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 23
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 24
    new-instance v15, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/android/systemui/DessertCaseView;->MASK:[F

    invoke-direct {v15, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v13, v5, v2, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 26
    invoke-direct {v11, v1, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 27
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v12, Lcom/android/systemui/DessertCaseView;->ALPHA_MASK:[F

    invoke-direct {v2, v12}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 28
    iget v2, v0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12, v2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 29
    iget-object v2, v0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v10, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    move v2, v12

    goto :goto_1

    :cond_1
    move v12, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method public static getOccupied(Landroid/view/View;)[Landroid/graphics/Point;
    .locals 10

    .line 1
    const v0, 0x2000002

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    move-result v0

    .line 14
    const v1, 0x2000001

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Landroid/graphics/Point;

    .line 22
    const/4 v1, 0x0

    .line 24
    if-eqz p0, :cond_3

    .line 25
    if-nez v0, :cond_0

    .line 27
    goto :goto_2

    .line 29
    :cond_0
    mul-int v2, v0, v0

    .line 30
    new-array v2, v2, [Landroid/graphics/Point;

    .line 32
    move v3, v1

    .line 34
    move v4, v3

    .line 35
    :goto_0
    if-ge v3, v0, :cond_2

    .line 36
    move v5, v1

    .line 38
    :goto_1
    if-ge v5, v0, :cond_1

    .line 39
    add-int/lit8 v6, v4, 0x1

    .line 41
    new-instance v7, Landroid/graphics/Point;

    .line 43
    iget v8, p0, Landroid/graphics/Point;->x:I

    .line 45
    add-int/2addr v8, v3

    .line 47
    iget v9, p0, Landroid/graphics/Point;->y:I

    .line 48
    add-int/2addr v9, v5

    .line 50
    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 51
    aput-object v7, v2, v4

    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 56
    move v4, v6

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    return-object v2

    .line 63
    :cond_3
    :goto_2
    new-array p0, v1, [Landroid/graphics/Point;

    .line 64
    return-object p0
    .line 66
.end method


# virtual methods
.method public final declared-synchronized fillFreeList(I)V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 3
    move-result-object v0

    .line 6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 9
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 11
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 14
    check-cast v2, Ljava/util/HashSet;

    .line 16
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 18
    move-result v2

    .line 21
    if-nez v2, :cond_7

    .line 22
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 24
    check-cast v2, Ljava/util/HashSet;

    .line 26
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Landroid/graphics/Point;

    .line 36
    iget-object v3, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 38
    check-cast v3, Ljava/util/HashSet;

    .line 40
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 42
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 45
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 47
    iget-object v5, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 49
    iget v6, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 51
    mul-int/2addr v4, v6

    .line 53
    add-int/2addr v4, v3

    .line 54
    aget-object v3, v5, v4

    .line 55
    if-eqz v3, :cond_1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    .line 60
    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v4, Lcom/android/systemui/DessertCaseView$2;

    .line 65
    invoke-direct {v4, p0, v3}, Lcom/android/systemui/DessertCaseView$2;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V

    .line 67
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    .line 73
    const/4 v5, 0x0

    .line 75
    int-to-float v6, v5

    .line 76
    const/16 v7, 0xc

    .line 77
    int-to-float v7, v7

    .line 79
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 80
    move-result-wide v8

    .line 83
    double-to-float v8, v8

    .line 84
    invoke-static {v7, v6, v8, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 85
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    float-to-int v6, v6

    .line 89
    int-to-float v6, v6

    .line 90
    const/high16 v7, 0x41f00000    # 30.0f

    .line 91
    mul-float/2addr v6, v7

    .line 93
    aput v6, v4, v5

    .line 94
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->hsv:[F

    .line 96
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 98
    move-result v4

    .line 101
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 102
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 105
    move-result-wide v6

    .line 108
    double-to-float v4, v6

    .line 109
    const v6, 0x3a03126f    # 5.0E-4f

    .line 110
    cmpg-float v6, v4, v6

    .line 113
    const/high16 v7, 0x3f000000    # 0.5f

    .line 115
    if-gez v6, :cond_2

    .line 117
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    .line 119
    sget-object v6, Lcom/android/systemui/DessertCaseView;->XXRARE_PASTRIES:[I

    .line 121
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 123
    move-result-wide v8

    .line 126
    const/4 v10, 0x3

    .line 127
    int-to-double v10, v10

    .line 128
    mul-double/2addr v8, v10

    .line 129
    double-to-int v8, v8

    .line 130
    aget v6, v6, v8

    .line 131
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v4

    .line 136
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 137
    goto :goto_1

    .line 139
    :cond_2
    const v6, 0x3ba3d70a    # 0.005f

    .line 140
    cmpg-float v6, v4, v6

    .line 143
    if-gez v6, :cond_3

    .line 145
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    .line 147
    sget-object v6, Lcom/android/systemui/DessertCaseView;->XRARE_PASTRIES:[I

    .line 149
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 151
    move-result-wide v8

    .line 154
    const/4 v10, 0x4

    .line 155
    int-to-double v10, v10

    .line 156
    mul-double/2addr v8, v10

    .line 157
    double-to-int v8, v8

    .line 158
    aget v6, v6, v8

    .line 159
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v4

    .line 164
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 165
    goto :goto_1

    .line 167
    :cond_3
    cmpg-float v6, v4, v7

    .line 168
    if-gez v6, :cond_4

    .line 170
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    .line 172
    sget-object v6, Lcom/android/systemui/DessertCaseView;->RARE_PASTRIES:[I

    .line 174
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 176
    move-result-wide v8

    .line 179
    const/16 v10, 0x8

    .line 180
    int-to-double v10, v10

    .line 182
    mul-double/2addr v8, v10

    .line 183
    double-to-int v8, v8

    .line 184
    aget v6, v6, v8

    .line 185
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object v4

    .line 190
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 191
    goto :goto_1

    .line 193
    :cond_4
    const v6, 0x3f333333    # 0.7f

    .line 194
    cmpg-float v4, v4, v6

    .line 197
    if-gez v4, :cond_5

    .line 199
    iget-object v4, p0, Lcom/android/systemui/DessertCaseView;->mDrawables:Landroid/util/SparseArray;

    .line 201
    sget-object v6, Lcom/android/systemui/DessertCaseView;->PASTRIES:[I

    .line 203
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 205
    move-result-wide v8

    .line 208
    const/4 v10, 0x2

    .line 209
    int-to-double v10, v10

    .line 210
    mul-double/2addr v8, v10

    .line 211
    double-to-int v8, v8

    .line 212
    aget v6, v6, v8

    .line 213
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 215
    move-result-object v4

    .line 218
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 219
    goto :goto_1

    .line 221
    :cond_5
    const/4 v4, 0x0

    .line 222
    :goto_1
    if-eqz v4, :cond_6

    .line 223
    invoke-virtual {v3}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    .line 225
    move-result-object v6

    .line 228
    invoke-virtual {v6, v4}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_6
    iget v4, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 232
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 234
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 236
    invoke-virtual {p0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    invoke-virtual {p0, v3, v2, v5}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 241
    if-lez p1, :cond_0

    .line 244
    const v2, 0x2000002

    .line 246
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 249
    move-result-object v2

    .line 252
    check-cast v2, Ljava/lang/Integer;

    .line 253
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 255
    move-result v2

    .line 258
    int-to-float v2, v2

    .line 259
    mul-float/2addr v7, v2

    .line 260
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 261
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 264
    const/4 v4, 0x0

    .line 267
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 268
    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 271
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 275
    move-result-object v3

    .line 278
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 279
    move-result-object v3

    .line 282
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 283
    move-result-object v2

    .line 286
    const/high16 v3, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 289
    move-result-object v2

    .line 292
    int-to-long v3, p1

    .line 293
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    goto/16 :goto_0

    .line 297
    :cond_7
    monitor-exit p0

    .line 299
    return-void

    .line 300
    :catchall_0
    move-exception p1

    .line 301
    monitor-exit p0

    .line 302
    throw p1
    .line 303
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method

.method public final declared-synchronized onSizeChanged(IIII)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 3
    iget p3, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    .line 6
    if-ne p3, p1, :cond_0

    .line 8
    iget p3, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-ne p3, p2, :cond_0

    .line 12
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    iget-boolean p3, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 16
    const/4 p4, 0x0

    .line 18
    if-eqz p3, :cond_1

    .line 19
    iput-boolean p4, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 21
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    :cond_1
    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    .line 30
    iput p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    .line 32
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 37
    iget-object p1, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 40
    check-cast p1, Ljava/util/HashSet;

    .line 42
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 44
    iget p1, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    .line 47
    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 49
    div-int/2addr p1, p2

    .line 51
    iput p1, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 52
    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    .line 54
    div-int/2addr v0, p2

    .line 56
    iput v0, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 57
    mul-int/2addr p1, v0

    .line 59
    new-array p1, p1, [Landroid/view/View;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 62
    const/high16 p1, 0x3e800000    # 0.25f

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 69
    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mWidth:I

    .line 72
    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 74
    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 76
    mul-int/2addr v0, v1

    .line 78
    sub-int/2addr p2, v0

    .line 79
    int-to-float p2, p2

    .line 80
    const/high16 v0, 0x3f000000    # 0.5f

    .line 81
    mul-float/2addr p2, v0

    .line 83
    mul-float/2addr p2, p1

    .line 84
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 85
    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mHeight:I

    .line 88
    iget v1, p0, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 90
    iget v2, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 92
    mul-int/2addr v1, v2

    .line 94
    sub-int/2addr p2, v1

    .line 95
    int-to-float p2, p2

    .line 96
    mul-float/2addr p2, v0

    .line 97
    mul-float/2addr p2, p1

    .line 98
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 99
    move p1, p4

    .line 102
    :goto_0
    iget p2, p0, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 103
    if-ge p1, p2, :cond_3

    .line 105
    move p2, p4

    .line 107
    :goto_1
    iget v0, p0, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 108
    if-ge p2, v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 112
    new-instance v1, Landroid/graphics/Point;

    .line 114
    invoke-direct {v1, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 116
    check-cast v0, Ljava/util/HashSet;

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 p2, p2, 0x1

    .line 124
    goto :goto_1

    .line 126
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 127
    goto :goto_0

    .line 129
    :cond_3
    if-eqz p3, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/DessertCaseView;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_4
    monitor-exit p0

    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    monitor-exit p0

    .line 138
    throw p1
    .line 139
.end method

.method public final declared-synchronized place(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    monitor-enter p0

    .line 8
    :try_start_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 9
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 11
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 13
    move-result-wide v5

    .line 16
    double-to-float v5, v5

    .line 17
    const v6, 0x2000001

    .line 18
    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 21
    move-result-object v7

    .line 24
    const/4 v8, 0x0

    .line 25
    if-eqz v7, :cond_0

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    .line 28
    move-result-object v7

    .line 31
    array-length v9, v7

    .line 32
    const/4 v10, 0x0

    .line 33
    :goto_0
    if-ge v10, v9, :cond_0

    .line 34
    aget-object v11, v7, v10

    .line 36
    iget-object v12, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 38
    check-cast v12, Ljava/util/HashSet;

    .line 40
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v12, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 45
    iget v13, v11, Landroid/graphics/Point;->y:I

    .line 47
    iget v14, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 49
    mul-int/2addr v13, v14

    .line 51
    iget v11, v11, Landroid/graphics/Point;->x:I

    .line 52
    add-int/2addr v13, v11

    .line 54
    aput-object v8, v12, v13

    .line 55
    add-int/lit8 v10, v10, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_0
    const v7, 0x3c23d70a    # 0.01f

    .line 60
    cmpg-float v7, v5, v7

    .line 63
    const/4 v9, 0x3

    .line 65
    const/4 v10, 0x2

    .line 66
    const/4 v11, 0x1

    .line 67
    if-gez v7, :cond_1

    .line 68
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 70
    sub-int/2addr v5, v9

    .line 72
    if-ge v3, v5, :cond_3

    .line 73
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 75
    sub-int/2addr v5, v9

    .line 77
    if-ge v4, v5, :cond_3

    .line 78
    const/4 v9, 0x4

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const v7, 0x3dcccccd    # 0.1f

    .line 82
    cmpg-float v7, v5, v7

    .line 85
    if-gez v7, :cond_2

    .line 87
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 89
    sub-int/2addr v5, v10

    .line 91
    if-ge v3, v5, :cond_3

    .line 92
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 94
    sub-int/2addr v5, v10

    .line 96
    if-ge v4, v5, :cond_3

    .line 97
    goto :goto_1

    .line 99
    :cond_2
    const v7, 0x3ea8f5c3    # 0.33f

    .line 100
    cmpg-float v5, v5, v7

    .line 103
    if-gez v5, :cond_3

    .line 105
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 107
    sub-int/2addr v5, v11

    .line 109
    if-eq v3, v5, :cond_3

    .line 110
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 112
    sub-int/2addr v5, v11

    .line 114
    if-eq v4, v5, :cond_3

    .line 115
    move v9, v10

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move v9, v11

    .line 119
    :goto_1
    invoke-virtual {v0, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v2

    .line 126
    const v5, 0x2000002

    .line 127
    invoke-virtual {v0, v5, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 130
    iget-object v2, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    .line 133
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    .line 138
    move-result-object v2

    .line 141
    array-length v5, v2

    .line 142
    const/4 v6, 0x0

    .line 143
    :goto_2
    if-ge v6, v5, :cond_5

    .line 144
    aget-object v7, v2, v6

    .line 146
    iget-object v10, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 148
    iget v11, v7, Landroid/graphics/Point;->y:I

    .line 150
    iget v12, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 152
    mul-int/2addr v11, v12

    .line 154
    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 155
    add-int/2addr v11, v7

    .line 157
    aget-object v7, v10, v11

    .line 158
    if-eqz v7, :cond_4

    .line 160
    iget-object v10, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    .line 162
    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 167
    goto :goto_2

    .line 169
    :cond_5
    iget-object v5, v1, Lcom/android/systemui/DessertCaseView;->tmpSet:Ljava/util/HashSet;

    .line 170
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object v5

    .line 175
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result v6

    .line 179
    if-eqz v6, :cond_9

    .line 180
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object v6

    .line 185
    check-cast v6, Landroid/view/View;

    .line 186
    invoke-static {v6}, Lcom/android/systemui/DessertCaseView;->getOccupied(Landroid/view/View;)[Landroid/graphics/Point;

    .line 188
    move-result-object v7

    .line 191
    array-length v10, v7

    .line 192
    const/4 v11, 0x0

    .line 193
    :goto_4
    if-ge v11, v10, :cond_7

    .line 194
    aget-object v12, v7, v11

    .line 196
    iget-object v13, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 198
    check-cast v13, Ljava/util/HashSet;

    .line 200
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v13, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 205
    iget v14, v12, Landroid/graphics/Point;->y:I

    .line 207
    iget v15, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 209
    mul-int/2addr v14, v15

    .line 211
    iget v12, v12, Landroid/graphics/Point;->x:I

    .line 212
    add-int/2addr v14, v12

    .line 214
    aput-object v8, v13, v14

    .line 215
    add-int/lit8 v11, v11, 0x1

    .line 217
    goto :goto_4

    .line 219
    :cond_7
    if-eq v6, v0, :cond_6

    .line 220
    const v7, 0x2000001

    .line 222
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 225
    if-eqz p3, :cond_8

    .line 228
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 230
    move-result-object v7

    .line 233
    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 234
    move-result-object v7

    .line 237
    const/high16 v10, 0x3f000000    # 0.5f

    .line 238
    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 240
    move-result-object v7

    .line 243
    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 244
    move-result-object v7

    .line 247
    const/4 v10, 0x0

    .line 248
    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 249
    move-result-object v7

    .line 252
    const-wide/16 v10, 0x1f4

    .line 253
    invoke-virtual {v7, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 255
    move-result-object v7

    .line 258
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    .line 259
    invoke-direct {v10}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 261
    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 264
    move-result-object v7

    .line 267
    new-instance v10, Lcom/android/systemui/DessertCaseView$4;

    .line 268
    invoke-direct {v10, v1, v6}, Lcom/android/systemui/DessertCaseView$4;-><init>(Lcom/android/systemui/DessertCaseView;Landroid/view/View;)V

    .line 270
    invoke-virtual {v7, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 273
    move-result-object v6

    .line 276
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 277
    goto :goto_3

    .line 280
    :cond_8
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 281
    goto :goto_3

    .line 284
    :cond_9
    array-length v5, v2

    .line 285
    const/4 v6, 0x0

    .line 286
    :goto_5
    if-ge v6, v5, :cond_a

    .line 287
    aget-object v7, v2, v6

    .line 289
    iget-object v8, v1, Lcom/android/systemui/DessertCaseView;->mCells:[Landroid/view/View;

    .line 291
    iget v10, v7, Landroid/graphics/Point;->y:I

    .line 293
    iget v11, v1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 295
    mul-int/2addr v10, v11

    .line 297
    iget v11, v7, Landroid/graphics/Point;->x:I

    .line 298
    add-int/2addr v10, v11

    .line 300
    aput-object v0, v8, v10

    .line 301
    iget-object v8, v1, Lcom/android/systemui/DessertCaseView;->mFreeList:Ljava/util/Set;

    .line 303
    check-cast v8, Ljava/util/HashSet;

    .line 305
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v6, v6, 0x1

    .line 310
    goto :goto_5

    .line 312
    :cond_a
    const/4 v2, 0x0

    .line 313
    int-to-float v2, v2

    .line 314
    const/4 v5, 0x4

    .line 315
    int-to-float v5, v5

    .line 316
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 317
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    double-to-float v6, v6

    .line 321
    invoke-static {v5, v2, v6, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 322
    move-result v2

    .line 325
    float-to-int v2, v2

    .line 326
    int-to-float v2, v2

    .line 327
    const/high16 v5, 0x42b40000    # 90.0f

    .line 328
    mul-float/2addr v2, v5

    .line 330
    if-eqz p3, :cond_b

    .line 331
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->bringToFront()V

    .line 333
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 336
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 338
    const/4 v6, 0x2

    .line 341
    new-array v6, v6, [Landroid/animation/Animator;

    .line 342
    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 344
    const/4 v8, 0x1

    .line 346
    new-array v10, v8, [F

    .line 347
    int-to-float v11, v9

    .line 349
    const/4 v12, 0x0

    .line 350
    aput v11, v10, v12

    .line 351
    invoke-static {v0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 353
    move-result-object v7

    .line 356
    aput-object v7, v6, v12

    .line 357
    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 359
    new-array v10, v8, [F

    .line 361
    aput v11, v10, v12

    .line 363
    invoke-static {v0, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 365
    move-result-object v7

    .line 368
    aput-object v7, v6, v8

    .line 369
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 371
    new-instance v6, Landroid/view/animation/AnticipateOvershootInterpolator;

    .line 374
    invoke-direct {v6}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    .line 376
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 379
    const-wide/16 v6, 0x1f4

    .line 382
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 384
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 387
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 389
    const/4 v7, 0x3

    .line 392
    new-array v7, v7, [Landroid/animation/Animator;

    .line 393
    sget-object v8, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 395
    const/4 v10, 0x1

    .line 397
    new-array v11, v10, [F

    .line 398
    const/4 v12, 0x0

    .line 400
    aput v2, v11, v12

    .line 401
    invoke-static {v0, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 403
    move-result-object v2

    .line 406
    aput-object v2, v7, v12

    .line 407
    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    .line 409
    new-array v8, v10, [F

    .line 411
    iget v11, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 413
    mul-int/2addr v3, v11

    .line 415
    sub-int/2addr v9, v10

    .line 416
    mul-int/2addr v11, v9

    .line 417
    div-int/lit8 v11, v11, 0x2

    .line 418
    add-int/2addr v3, v11

    .line 420
    int-to-float v3, v3

    .line 421
    const/4 v11, 0x0

    .line 422
    aput v3, v8, v11

    .line 423
    invoke-static {v0, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 425
    move-result-object v2

    .line 428
    aput-object v2, v7, v10

    .line 429
    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    .line 431
    new-array v3, v10, [F

    .line 433
    iget v8, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 435
    mul-int/2addr v4, v8

    .line 437
    mul-int/2addr v9, v8

    .line 438
    const/4 v8, 0x2

    .line 439
    div-int/2addr v9, v8

    .line 440
    add-int/2addr v4, v9

    .line 441
    int-to-float v4, v4

    .line 442
    const/4 v9, 0x0

    .line 443
    aput v4, v3, v9

    .line 444
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 446
    move-result-object v2

    .line 449
    aput-object v2, v7, v8

    .line 450
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 452
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 455
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 457
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 460
    const-wide/16 v2, 0x1f4

    .line 463
    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 465
    new-instance v2, Lcom/android/systemui/DessertCaseView$3;

    .line 468
    invoke-direct {v2, v0}, Lcom/android/systemui/DessertCaseView$3;-><init>(Landroid/view/View;)V

    .line 470
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 473
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 476
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 479
    goto :goto_6

    .line 482
    :cond_b
    iget v5, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 483
    mul-int/2addr v3, v5

    .line 485
    add-int/lit8 v6, v9, -0x1

    .line 486
    mul-int/2addr v5, v6

    .line 488
    div-int/lit8 v5, v5, 0x2

    .line 489
    add-int/2addr v3, v5

    .line 491
    int-to-float v3, v3

    .line 492
    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    .line 493
    iget v3, v1, Lcom/android/systemui/DessertCaseView;->mCellSize:I

    .line 496
    mul-int/2addr v4, v3

    .line 498
    mul-int/2addr v6, v3

    .line 499
    div-int/lit8 v6, v6, 0x2

    .line 500
    add-int/2addr v4, v6

    .line 502
    int-to-float v3, v4

    .line 503
    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    .line 504
    int-to-float v3, v9

    .line 507
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 508
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 511
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :goto_6
    monitor-exit p0

    .line 517
    return-void

    .line 518
    :catchall_0
    move-exception v0

    .line 519
    monitor-exit p0

    .line 520
    throw v0
    .line 521
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 7
    const/16 v0, 0x7d0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    .line 16
    const-wide/16 v1, 0x1388

    .line 18
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    return-void
    .line 23
.end method
