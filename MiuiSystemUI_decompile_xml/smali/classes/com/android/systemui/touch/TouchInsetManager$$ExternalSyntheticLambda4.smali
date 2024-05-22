.class public final synthetic Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(ILjava/util/HashMap;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashMap;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashMap;

    .line 8
    check-cast p1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/AttachedSurfaceControl;

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Landroid/graphics/Region;

    .line 35
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, Landroid/graphics/Region;

    .line 41
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 43
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 45
    return-void

    .line 48
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashMap;

    .line 49
    check-cast p1, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroid/view/AttachedSurfaceControl;

    .line 57
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    move-result p0

    .line 62
    if-nez p0, :cond_1

    .line 63
    const/4 p0, 0x0

    .line 65
    invoke-interface {v0, p0}, Landroid/view/AttachedSurfaceControl;->setTouchableRegion(Landroid/graphics/Region;)V

    .line 66
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 72
    check-cast p0, Landroid/graphics/Region;

    .line 73
    invoke-virtual {p0}, Landroid/graphics/Region;->recycle()V

    .line 75
    return-void

    .line 78
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashMap;

    .line 79
    check-cast p1, Ljava/util/HashMap;

    .line 81
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 83
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 87
    move-result-object p1

    .line 90
    new-instance v0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;

    .line 91
    const/4 v1, 0x2

    .line 93
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;-><init>(ILjava/util/HashMap;)V

    .line 94
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 97
    return-void

    .line 100
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashMap;

    .line 101
    check-cast p1, Landroid/view/View;

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 105
    move-result-object v0

    .line 108
    if-nez v0, :cond_2

    .line 109
    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 115
    if-nez v1, :cond_3

    .line 116
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 118
    move-result-object v1

    .line 121
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    .line 125
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 133
    move-result-object v2

    .line 136
    check-cast v2, Landroid/view/ViewGroup;

    .line 137
    invoke-virtual {v2, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 139
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object p0

    .line 145
    check-cast p0, Landroid/graphics/Region;

    .line 146
    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 148
    invoke-virtual {p0, v1, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 150
    :goto_1
    return-void

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 154
.end method
