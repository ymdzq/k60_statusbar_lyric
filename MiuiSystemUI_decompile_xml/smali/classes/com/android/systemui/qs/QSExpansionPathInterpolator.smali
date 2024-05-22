.class public final Lcom/android/systemui/qs/QSExpansionPathInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final pathInterpolatorBuilder:Lcom/android/systemui/qs/PathInterpolatorBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/PathInterpolatorBuilder;-><init>(F)V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->pathInterpolatorBuilder:Lcom/android/systemui/qs/PathInterpolatorBuilder;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final getYInterpolator()Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSExpansionPathInterpolator;->pathInterpolatorBuilder:Lcom/android/systemui/qs/PathInterpolatorBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[F)V

    .line 13
    return-object v0
    .line 16
.end method
