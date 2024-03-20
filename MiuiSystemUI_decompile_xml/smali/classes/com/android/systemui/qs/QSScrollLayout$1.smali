.class public final Lcom/android/systemui/qs/QSScrollLayout$1;
.super Landroid/util/Property;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Float;

    .line 2
    const-string v1, "qsScrollLayoutContentTransY"

    .line 4
    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/QSScrollLayout;

    .line 2
    iget p0, p1, Lcom/android/systemui/qs/QSScrollLayout;->mContentTranslationY:F

    .line 4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/qs/QSScrollLayout;

    .line 2
    check-cast p2, Ljava/lang/Float;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 6
    move-result p0

    .line 9
    iput p0, p1, Lcom/android/systemui/qs/QSScrollLayout;->mContentTranslationY:F

    .line 10
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 12
    return-void
    .line 15
.end method
