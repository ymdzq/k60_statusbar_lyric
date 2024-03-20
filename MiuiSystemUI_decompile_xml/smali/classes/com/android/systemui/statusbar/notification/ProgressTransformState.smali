.class public final Lcom/android/systemui/statusbar/notification/ProgressTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sInstancePool:Landroid/util/Pools$SimplePool;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 2
    const/16 v1, 0x28

    .line 4
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final recycle()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 2
    sget-object v0, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 7
    return-void
    .line 10
.end method

.method public final sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    .line 8
    return p0
    .line 10
.end method
