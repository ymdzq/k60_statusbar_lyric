.class public final Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/animation/FontInterpolator$lerp$$inlined$sortBy$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/graphics/fonts/FontVariationAxis;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    check-cast p2, Landroid/graphics/fonts/FontVariationAxis;

    .line 14
    invoke-virtual {p2}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 20
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    check-cast p1, Landroid/graphics/fonts/FontVariationAxis;

    .line 25
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    check-cast p2, Landroid/graphics/fonts/FontVariationAxis;

    .line 31
    invoke-virtual {p2}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 37
    move-result p0

    .line 40
    return p0

    .line 41
    :pswitch_2
    check-cast p1, Landroid/graphics/fonts/FontVariationAxis;

    .line 42
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    check-cast p2, Landroid/graphics/fonts/FontVariationAxis;

    .line 48
    invoke-virtual {p2}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 54
    move-result p0

    .line 57
    return p0

    .line 58
    :goto_0
    check-cast p1, Landroid/graphics/fonts/FontVariationAxis;

    .line 59
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    check-cast p2, Landroid/graphics/fonts/FontVariationAxis;

    .line 65
    invoke-virtual {p2}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 71
    move-result p0

    .line 74
    return p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 76
.end method
