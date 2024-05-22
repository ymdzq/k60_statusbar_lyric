.class public final Lcom/android/systemui/util/animation/TransitionViewState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public alpha:F

.field public final contentTranslation:Landroid/graphics/PointF;

.field public height:I

.field public measureHeight:I

.field public measureWidth:I

.field public final translation:Landroid/graphics/PointF;

.field public final widgetStates:Ljava/util/Map;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    .line 16
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    .line 23
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 13

    .line 1
    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/android/systemui/util/animation/TransitionViewState;

    .line 4
    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 9
    iput v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    .line 11
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 13
    iput v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    .line 15
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->measureHeight:I

    .line 17
    iput v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->measureHeight:I

    .line 19
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->measureWidth:I

    .line 21
    iput v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->measureWidth:I

    .line 23
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    .line 25
    iput v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    .line 27
    iget-object v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    .line 29
    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    .line 31
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 33
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 37
    iget-object v0, p1, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    .line 42
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 44
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    .line 51
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 53
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 55
    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p0

    .line 62
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    iget-object v1, p1, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 84
    check-cast v0, Lcom/android/systemui/util/animation/WidgetState;

    .line 85
    iget v4, v0, Lcom/android/systemui/util/animation/WidgetState;->x:F

    .line 87
    iget v5, v0, Lcom/android/systemui/util/animation/WidgetState;->y:F

    .line 89
    iget v6, v0, Lcom/android/systemui/util/animation/WidgetState;->width:I

    .line 91
    iget v7, v0, Lcom/android/systemui/util/animation/WidgetState;->height:I

    .line 93
    iget v8, v0, Lcom/android/systemui/util/animation/WidgetState;->measureWidth:I

    .line 95
    iget v9, v0, Lcom/android/systemui/util/animation/WidgetState;->measureHeight:I

    .line 97
    iget v10, v0, Lcom/android/systemui/util/animation/WidgetState;->alpha:F

    .line 99
    iget v11, v0, Lcom/android/systemui/util/animation/WidgetState;->scale:F

    .line 101
    iget-boolean v12, v0, Lcom/android/systemui/util/animation/WidgetState;->gone:Z

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    new-instance v0, Lcom/android/systemui/util/animation/WidgetState;

    .line 108
    move-object v3, v0

    .line 110
    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/util/animation/WidgetState;-><init>(FFIIIIFFZ)V

    .line 111
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    goto :goto_0

    .line 117
    :cond_1
    return-object p1
    .line 118
.end method
