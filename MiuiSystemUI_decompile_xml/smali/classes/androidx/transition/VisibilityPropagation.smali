.class public abstract Landroidx/transition/VisibilityPropagation;
.super Landroidx/transition/TransitionPropagation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:visibilityPropagation:visibility"

    .line 2
    const-string v1, "android:visibilityPropagation:center"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    .line 10
    return-void
    .line 12
.end method

.method public static getViewCoordinate(Landroidx/transition/TransitionValues;I)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    const-string v1, "android:visibilityPropagation:center"

    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, [I

    .line 16
    if-nez p0, :cond_1

    .line 18
    return v0

    .line 20
    :cond_1
    aget p0, p0, p1

    .line 21
    return p0
    .line 23
.end method
