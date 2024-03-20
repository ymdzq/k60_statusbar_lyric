.class public abstract Landroidx/vectordrawable/graphics/drawable/AndroidResources;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final STYLEABLE_ANIMATED_VECTOR_DRAWABLE:[I

.field public static final STYLEABLE_ANIMATED_VECTOR_DRAWABLE_TARGET:[I

.field public static final STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

.field public static final STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

.field public static final STYLEABLE_VECTOR_DRAWABLE_PATH:[I

.field public static final STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    .line 9
    const/16 v0, 0x8

    .line 11
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_1

    .line 15
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_GROUP:[I

    .line 18
    const/16 v0, 0xe

    .line 20
    new-array v0, v0, [I

    .line 22
    fill-array-data v0, :array_2

    .line 24
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    .line 27
    const v0, 0x1010405    # @android:attr/pathData

    .line 29
    const v1, 0x1010003    # @android:attr/name

    .line 32
    const v2, 0x101051e    # @android:attr/fillType

    .line 35
    filled-new-array {v1, v0, v2}, [I

    .line 38
    move-result-object v0

    .line 41
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    .line 42
    const v0, 0x1010199    # @android:attr/drawable

    .line 44
    filled-new-array {v0}, [I

    .line 47
    move-result-object v0

    .line 50
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE:[I

    .line 51
    const v0, 0x10101cd    # @android:attr/animation

    .line 53
    filled-new-array {v1, v0}, [I

    .line 56
    move-result-object v0

    .line 59
    sput-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATED_VECTOR_DRAWABLE_TARGET:[I

    .line 60
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        0x1010003    # @android:attr/name
        0x1010121    # @android:attr/tint
        0x1010155    # @android:attr/height
        0x1010159    # @android:attr/width
        0x101031f    # @android:attr/alpha
        0x10103ea    # @android:attr/autoMirrored
        0x10103fb    # @android:attr/tintMode
        0x1010402    # @android:attr/viewportWidth
        0x1010403    # @android:attr/viewportHeight
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x1010003    # @android:attr/name
        0x10101b5    # @android:attr/pivotX
        0x10101b6    # @android:attr/pivotY
        0x1010324    # @android:attr/scaleX
        0x1010325    # @android:attr/scaleY
        0x1010326    # @android:attr/rotation
        0x101045a    # @android:attr/translateX
        0x101045b    # @android:attr/translateY
    .end array-data

    :array_2
    .array-data 4
        0x1010003    # @android:attr/name
        0x1010404    # @android:attr/fillColor
        0x1010405    # @android:attr/pathData
        0x1010406    # @android:attr/strokeColor
        0x1010407    # @android:attr/strokeWidth
        0x1010408    # @android:attr/trimPathStart
        0x1010409    # @android:attr/trimPathEnd
        0x101040a    # @android:attr/trimPathOffset
        0x101040b    # @android:attr/strokeLineCap
        0x101040c    # @android:attr/strokeLineJoin
        0x101040d    # @android:attr/strokeMiterLimit
        0x10104cb    # @android:attr/strokeAlpha
        0x10104cc    # @android:attr/fillAlpha
        0x101051e    # @android:attr/fillType
    .end array-data
.end method
