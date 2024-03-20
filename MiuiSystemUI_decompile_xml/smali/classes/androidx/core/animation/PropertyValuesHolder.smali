.class public abstract Landroidx/core/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DOUBLE_VARIANTS:[Ljava/lang/Class;

.field public static final FLOAT_VARIANTS:[Ljava/lang/Class;

.field public static final INTEGER_VARIANTS:[Ljava/lang/Class;

.field public static final sGetterPropertyMap:Ljava/util/HashMap;

.field public static final sSetterPropertyMap:Ljava/util/HashMap;


# instance fields
.field public mEvaluator:Landroidx/core/animation/TypeEvaluator;

.field public mGetter:Ljava/lang/reflect/Method;

.field public mKeyframes:Landroidx/core/animation/Keyframes;

.field public mProperty:Landroid/util/Property;

.field public mPropertyName:Ljava/lang/String;

.field public mSetter:Ljava/lang/reflect/Method;

.field public final mTmpValueArray:[Ljava/lang/Object;

.field public mValueType:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 2
    const-class v1, Ljava/lang/Float;

    .line 4
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 6
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    const-class v4, Ljava/lang/Double;

    .line 10
    const-class v5, Ljava/lang/Integer;

    .line 12
    move-object v0, v6

    .line 14
    move-object v2, v7

    .line 15
    move-object v3, v8

    .line 16
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 21
    const-class v1, Ljava/lang/Integer;

    .line 23
    const-class v4, Ljava/lang/Float;

    .line 25
    const-class v5, Ljava/lang/Double;

    .line 27
    move-object v0, v8

    .line 29
    move-object v2, v6

    .line 30
    move-object v3, v7

    .line 31
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Landroidx/core/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 36
    const-class v1, Ljava/lang/Double;

    .line 38
    const-class v4, Ljava/lang/Float;

    .line 40
    const-class v5, Ljava/lang/Integer;

    .line 42
    move-object v0, v7

    .line 44
    move-object v3, v8

    .line 45
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    .line 46
    move-result-object v0

    .line 49
    sput-object v0, Landroidx/core/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    sput-object v0, Landroidx/core/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    .line 59
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    sput-object v0, Landroidx/core/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    .line 64
    return-void
    .line 66
.end method

.method public constructor <init>(Landroid/util/Property;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 9
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 10
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 3
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 4
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method public static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    :cond_1
    :goto_0
    return-object p0
    .line 43
.end method


# virtual methods
.method public abstract calculateValue(F)V
.end method

.method public clone()Landroidx/core/animation/PropertyValuesHolder;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/core/animation/PropertyValuesHolder;

    .line 6
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 12
    iput-object v1, v0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 14
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 16
    invoke-interface {v1}, Landroidx/core/animation/Keyframes;->clone()Landroidx/core/animation/Keyframes;

    .line 18
    move-result-object v1

    .line 21
    iput-object v1, v0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 22
    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    .line 24
    iput-object p0, v0, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object v0

    .line 28
    :catch_0
    const/4 p0, 0x0

    .line 29
    return-object p0
    .line 30
.end method

.method public abstract getAnimatedValue()Ljava/lang/Object;
.end method

.method public final getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 2
    invoke-static {p2, v0}, Landroidx/core/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p3, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    new-array v3, v2, [Ljava/lang/Class;

    .line 17
    const-class v4, Ljava/lang/Float;

    .line 19
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    sget-object v4, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const-class v4, Ljava/lang/Integer;

    .line 30
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    sget-object v4, Landroidx/core/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    const-class v4, Ljava/lang/Double;

    .line 41
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    sget-object v4, Landroidx/core/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    filled-new-array {p3}, [Ljava/lang/Class;

    .line 52
    move-result-object v4

    .line 55
    :goto_0
    array-length v5, v4

    .line 56
    const/4 v6, 0x0

    .line 57
    move v7, v6

    .line 58
    :goto_1
    if-ge v7, v5, :cond_4

    .line 59
    aget-object v8, v4, v7

    .line 61
    aput-object v8, v3, v6

    .line 63
    :try_start_1
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    move-result-object v1

    .line 68
    iput-object v8, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    return-object v1

    .line 71
    :catch_0
    :try_start_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    move-result-object v1

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 76
    iput-object v8, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    return-object v1

    .line 81
    :catch_1
    add-int/lit8 v7, v7, 0x1

    .line 82
    goto :goto_1

    .line 84
    :catch_2
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string v2, "Method "

    .line 89
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 94
    invoke-static {p2, p0}, Landroidx/core/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string p0, "() with type "

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string p0, " not found on target class "

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    const-string p1, "PropertyValuesHolder"

    .line 123
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_5
    return-object v1
    .line 128
.end method

.method public abstract setAnimatedValue(Ljava/lang/Object;)V
.end method

.method public varargs setFloatValues([F)V
    .locals 8

    .line 1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 2
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 4
    array-length v0, p1

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result v1

    .line 11
    new-array v1, v1, [Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 12
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    new-instance v0, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 19
    invoke-direct {v0, v3}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(F)V

    .line 21
    aput-object v0, v1, v4

    .line 24
    aget p1, p1, v4

    .line 26
    new-instance v0, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 28
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {v0, v3, p1}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    .line 32
    aput-object v0, v1, v2

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    goto :goto_1

    .line 43
    :cond_0
    move v2, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    aget v5, p1, v4

    .line 46
    new-instance v6, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 48
    invoke-direct {v6, v3, v5}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    .line 50
    aput-object v6, v1, v4

    .line 53
    move v3, v2

    .line 55
    :goto_0
    if-ge v3, v0, :cond_0

    .line 56
    int-to-float v5, v3

    .line 58
    add-int/lit8 v6, v0, -0x1

    .line 59
    int-to-float v6, v6

    .line 61
    div-float/2addr v5, v6

    .line 62
    aget v6, p1, v3

    .line 63
    new-instance v7, Landroidx/core/animation/Keyframe$FloatKeyframe;

    .line 65
    invoke-direct {v7, v5, v6}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    .line 67
    aput-object v7, v1, v3

    .line 70
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 72
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    move v4, v2

    .line 78
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_0

    .line 81
    :goto_1
    if-eqz v2, :cond_3

    .line 82
    const-string p1, "Animator"

    .line 84
    const-string v0, "Bad value (NaN) in float animator"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_3
    new-instance p1, Landroidx/core/animation/FloatKeyframeSet;

    .line 91
    invoke-direct {p1, v1}, Landroidx/core/animation/FloatKeyframeSet;-><init>([Landroidx/core/animation/Keyframe$FloatKeyframe;)V

    .line 93
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 96
    return-void
    .line 98
.end method

.method public varargs setIntValues([I)V
    .locals 7

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 4
    array-length v0, p1

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result v1

    .line 11
    new-array v1, v1, [Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 12
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    new-instance v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 19
    invoke-direct {v0, v3}, Landroidx/core/animation/Keyframe$IntKeyframe;-><init>(F)V

    .line 21
    aput-object v0, v1, v4

    .line 24
    aget p1, p1, v4

    .line 26
    new-instance v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 28
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {v0, v3, p1}, Landroidx/core/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 32
    aput-object v0, v1, v2

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    aget v5, p1, v4

    .line 38
    new-instance v6, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 40
    invoke-direct {v6, v3, v5}, Landroidx/core/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 42
    aput-object v6, v1, v4

    .line 45
    :goto_0
    if-ge v2, v0, :cond_1

    .line 47
    int-to-float v3, v2

    .line 49
    add-int/lit8 v4, v0, -0x1

    .line 50
    int-to-float v4, v4

    .line 52
    div-float/2addr v3, v4

    .line 53
    aget v4, p1, v2

    .line 54
    new-instance v5, Landroidx/core/animation/Keyframe$IntKeyframe;

    .line 56
    invoke-direct {v5, v3, v4}, Landroidx/core/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 58
    aput-object v5, v1, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p1, Landroidx/core/animation/IntKeyframeSet;

    .line 66
    invoke-direct {p1, v1}, Landroidx/core/animation/IntKeyframeSet;-><init>([Landroidx/core/animation/Keyframe$IntKeyframe;)V

    .line 68
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 71
    return-void
    .line 73
.end method

.method public abstract setProperty(Landroid/util/Property;)V
.end method

.method public final setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    monitor-enter p2

    .line 2
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    move-result-object v0

    .line 6
    check-cast v0, Ljava/util/HashMap;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v2, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/reflect/Method;

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 30
    invoke-virtual {p0, p1, p3, p4}, Landroidx/core/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    move-result-object v1

    .line 35
    if-nez v0, :cond_2

    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2
    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_3
    monitor-exit p2

    .line 51
    return-object v1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
    .line 55
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ": "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method
