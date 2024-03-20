.class public final synthetic Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;

    .line 2
    check-cast p1, Landroid/view/View;

    .line 4
    check-cast p2, Landroid/view/View;

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mIsVertical:Z

    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTmpInt:[I

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTmpInt:[I

    .line 15
    aget v1, p1, v0

    .line 17
    iget-object v2, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mOffset:[I

    .line 19
    aget v2, v2, v0

    .line 21
    sub-int/2addr v1, v2

    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 24
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mTmpInt:[I

    .line 27
    aget p1, p1, v0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/NearestTouchFrame;->mOffset:[I

    .line 31
    aget p0, p0, v0

    .line 33
    sub-int/2addr p1, p0

    .line 35
    sub-int/2addr v1, p1

    .line 36
    return v1
    .line 37
.end method
