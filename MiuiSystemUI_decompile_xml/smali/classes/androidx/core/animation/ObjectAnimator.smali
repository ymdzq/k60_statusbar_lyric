.class public final Landroidx/core/animation/ObjectAnimator;
.super Landroidx/core/animation/ValueAnimator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mProperty:Landroid/util/Property;

.field public mPropertyName:Ljava/lang/String;

.field public mTarget:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/core/animation/ValueAnimator;-><init>()V

    .line 2
    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    move-object v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    if-eq v0, p1, :cond_3

    .line 17
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->cancel()V

    .line 23
    :cond_1
    if-nez p1, :cond_2

    .line 26
    goto :goto_1

    .line 28
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 29
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    :goto_1
    iput-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 34
    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 36
    :cond_3
    iget-object p1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 38
    if-eqz p1, :cond_4

    .line 40
    aget-object p1, p1, v2

    .line 42
    iget-object v0, p1, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1, p2}, Landroidx/core/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    .line 46
    iget-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 54
    iget-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_4
    iget-object p1, p0, Landroidx/core/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    .line 61
    if-eqz p1, :cond_5

    .line 63
    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 68
    iput-object p1, p0, Landroidx/core/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 69
    :cond_5
    iput-object p2, p0, Landroidx/core/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    .line 71
    iput-boolean v2, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 73
    return-void
    .line 75
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/animation/ObjectAnimator;

    .line 2
    invoke-direct {v0, p0, p1}, Landroidx/core/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .line 4
    invoke-virtual {v0, p2}, Landroidx/core/animation/ObjectAnimator;->setFloatValues([F)V

    .line 7
    return-object v0
    .line 10
.end method


# virtual methods
.method public final animateValue(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    iget-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 12
    if-eqz v1, :cond_1

    .line 14
    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->cancel()V

    .line 18
    return-void

    .line 21
    :cond_1
    invoke-super {p0, p1}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    .line 22
    iget-object p1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 25
    array-length p1, p1

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_1
    if-ge v1, p1, :cond_2

    .line 29
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 31
    aget-object v2, v2, v1

    .line 33
    invoke-virtual {v2, v0}, Landroidx/core/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_1

    .line 40
    :cond_2
    return-void
    .line 41
.end method

.method public final clone()Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/ObjectAnimator;

    return-object p0
.end method

.method public final clone()Landroidx/core/animation/ValueAnimator;
    .locals 0

    .line 2
    invoke-super {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/ObjectAnimator;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-super {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/ObjectAnimator;

    return-object p0
.end method

.method public final getNameForTrace()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "animator:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_2

    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    iget-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 23
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_3

    .line 26
    array-length v1, v1

    .line 28
    if-lez v1, :cond_3

    .line 29
    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v3, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 32
    array-length v3, v3

    .line 34
    if-ge v1, v3, :cond_3

    .line 35
    if-nez v1, :cond_2

    .line 37
    const-string v2, ""

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    const-string v3, ","

    .line 42
    invoke-static {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 47
    :goto_1
    invoke-static {v2}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v2

    .line 51
    iget-object v3, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 52
    aget-object v3, v3, v1

    .line 54
    iget-object v3, v3, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    move-object v1, v2

    .line 68
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    return-object p0
    .line 76
.end method

.method public final initAnimation()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 2
    if-nez v0, :cond_d

    .line 4
    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    move-object v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    :goto_0
    if-eqz v0, :cond_c

    .line 17
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 19
    array-length v2, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_1
    if-ge v4, v2, :cond_c

    .line 24
    iget-object v5, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 26
    aget-object v5, v5, v4

    .line 28
    iget-object v6, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 30
    const/4 v7, 0x1

    .line 32
    const-string v8, "PropertyValuesHolder"

    .line 33
    if-eqz v6, :cond_5

    .line 35
    :try_start_0
    iget-object v6, v5, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 37
    check-cast v6, Landroidx/core/animation/KeyframeSet;

    .line 39
    iget-object v6, v6, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 41
    if-nez v6, :cond_1

    .line 43
    move v9, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 47
    move-result v9

    .line 50
    :goto_2
    move-object v11, v1

    .line 51
    move v10, v3

    .line 52
    :goto_3
    if-ge v10, v9, :cond_b

    .line 53
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v12

    .line 58
    check-cast v12, Landroidx/core/animation/Keyframe;

    .line 59
    iget-boolean v13, v12, Landroidx/core/animation/Keyframe;->mHasValue:Z

    .line 61
    if-eqz v13, :cond_2

    .line 63
    iget-boolean v13, v12, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z

    .line 65
    if-eqz v13, :cond_4

    .line 67
    :cond_2
    if-nez v11, :cond_3

    .line 69
    iget-object v11, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 71
    invoke-virtual {v11, v0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v11

    .line 76
    :cond_3
    invoke-virtual {v12, v11}, Landroidx/core/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 77
    iput-boolean v7, v12, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 82
    goto :goto_3

    .line 84
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    const-string v9, "No such property ("

    .line 87
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 92
    invoke-virtual {v9}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 94
    move-result-object v9

    .line 97
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v9, ") on target object "

    .line 101
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v9, ". Trying reflection instead"

    .line 109
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 117
    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object v1, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 121
    :cond_5
    iget-object v6, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 123
    if-nez v6, :cond_b

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    move-result-object v6

    .line 130
    iget-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 131
    if-nez v9, :cond_6

    .line 133
    iget-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 135
    sget-object v10, Landroidx/core/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 137
    const-string/jumbo v11, "set"

    .line 139
    invoke-virtual {v5, v6, v10, v11, v9}, Landroidx/core/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 142
    move-result-object v9

    .line 145
    iput-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 146
    :cond_6
    iget-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    .line 148
    check-cast v9, Landroidx/core/animation/KeyframeSet;

    .line 150
    iget-object v9, v9, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 152
    if-nez v9, :cond_7

    .line 154
    move v10, v3

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 158
    move-result v10

    .line 161
    :goto_4
    move v11, v3

    .line 162
    :goto_5
    if-ge v11, v10, :cond_b

    .line 163
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v12

    .line 168
    check-cast v12, Landroidx/core/animation/Keyframe;

    .line 169
    iget-boolean v13, v12, Landroidx/core/animation/Keyframe;->mHasValue:Z

    .line 171
    if-eqz v13, :cond_8

    .line 173
    iget-boolean v13, v12, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z

    .line 175
    if-eqz v13, :cond_a

    .line 177
    :cond_8
    iget-object v13, v5, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 179
    if-nez v13, :cond_9

    .line 181
    sget-object v13, Landroidx/core/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    .line 183
    const-string v14, "get"

    .line 185
    invoke-virtual {v5, v6, v13, v14, v1}, Landroidx/core/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 187
    move-result-object v13

    .line 190
    iput-object v13, v5, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 191
    if-nez v13, :cond_9

    .line 193
    goto :goto_7

    .line 195
    :cond_9
    :try_start_1
    iget-object v13, v5, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 196
    new-array v14, v3, [Ljava/lang/Object;

    .line 198
    invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v13

    .line 203
    invoke-virtual {v12, v13}, Landroidx/core/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 204
    iput-boolean v7, v12, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    goto :goto_6

    .line 209
    :catch_1
    move-exception v12

    .line 210
    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    .line 211
    move-result-object v12

    .line 214
    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    goto :goto_6

    .line 218
    :catch_2
    move-exception v12

    .line 219
    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    .line 220
    move-result-object v12

    .line 223
    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_a
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 227
    goto :goto_5

    .line 229
    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 230
    goto/16 :goto_1

    .line 232
    :cond_c
    invoke-super {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation()V

    .line 234
    :cond_d
    return-void
    .line 237
.end method

.method public final isInitialized()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    .line 2
    return p0
    .line 4
.end method

.method public final setDuration(J)Landroidx/core/animation/Animator;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    return-object p0
.end method

.method public final setDuration(J)Landroidx/core/animation/ValueAnimator;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    return-object p0
.end method

.method public final setDuration(J)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    return-void
.end method

.method public final varargs setFloatValues([F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    array-length v0, v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/animation/ValueAnimator;->setFloatValues([F)V

    .line 10
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    sget-object v1, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 18
    new-instance v1, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 20
    invoke-direct {v1, v0, p1}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;[F)V

    .line 22
    filled-new-array {v1}, [Landroidx/core/animation/PropertyValuesHolder;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setValues([Landroidx/core/animation/PropertyValuesHolder;)V

    .line 29
    goto :goto_1

    .line 32
    :cond_2
    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 33
    sget-object v1, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 35
    new-instance v1, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 37
    invoke-direct {v1, v0, p1}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    .line 39
    filled-new-array {v1}, [Landroidx/core/animation/PropertyValuesHolder;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setValues([Landroidx/core/animation/PropertyValuesHolder;)V

    .line 46
    :goto_1
    return-void
    .line 49
.end method

.method public final varargs setIntValues([I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final start()V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/core/animation/AnimationHandler;->getInstance()Landroidx/core/animation/AnimationHandler;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    :goto_0
    if-ltz v1, :cond_2

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;

    .line 20
    if-nez v2, :cond_0

    .line 22
    goto :goto_1

    .line 24
    :cond_0
    instance-of v3, v2, Landroidx/core/animation/ObjectAnimator;

    .line 25
    if-eqz v3, :cond_1

    .line 27
    check-cast v2, Landroidx/core/animation/ObjectAnimator;

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    .line 35
    return-void
    .line 38
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ObjectAnimator@"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", target "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 25
    if-nez v1, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    iget-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 42
    if-eqz v1, :cond_1

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_1
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 47
    array-length v2, v2

    .line 49
    if-ge v1, v2, :cond_1

    .line 50
    const-string v2, "\n    "

    .line 52
    invoke-static {v0, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v0

    .line 57
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    .line 58
    aget-object v2, v2, v1

    .line 60
    invoke-virtual {v2}, Landroidx/core/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_1

    .line 75
    :cond_1
    return-object v0
    .line 76
.end method
