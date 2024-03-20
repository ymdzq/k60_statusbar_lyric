.class public abstract Lcom/android/systemui/animation/ViewHierarchyAnimator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

.field public static final DEFAULT_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final PROPERTIES:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    .line 7
    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 9
    sget-object v0, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 11
    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 13
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$LEFT;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    new-instance v2, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    .line 21
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    .line 23
    new-instance v1, Lkotlin/Pair;

    .line 26
    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$TOP;

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 36
    new-instance v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    .line 37
    invoke-direct {v3, v0, v2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    .line 39
    new-instance v2, Lkotlin/Pair;

    .line 42
    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$RIGHT;

    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 52
    new-instance v4, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    .line 53
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    .line 55
    new-instance v3, Lkotlin/Pair;

    .line 58
    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound$BOTTOM;

    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->getLabel()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 68
    new-instance v5, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;

    .line 69
    invoke-direct {v5, v0, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createViewProperty$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V

    .line 71
    new-instance v4, Lkotlin/Pair;

    .line 74
    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    filled-new-array {v1, v2, v3, v4}, [Lkotlin/Pair;

    .line 79
    move-result-object v0

    .line 82
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 83
    move-result-object v0

    .line 86
    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator;->PROPERTIES:Ljava/util/Map;

    .line 87
    return-void
    .line 89
.end method
