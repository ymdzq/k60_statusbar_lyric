.class public abstract Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    const v1, 0x7f0d0189    # @layout/media_recommendations 'res/layout/media_recommendations.xml'

    .line 5
    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v1, 0x7f0d018c    # @layout/media_smartspace_recommendations 'res/layout/media_smartspace_recommendations.xml'

    .line 13
    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    move-result-object p0

    .line 19
    :goto_0
    const/4 p1, 0x3

    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 21
    new-instance p1, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;

    .line 24
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;-><init>(Landroid/view/View;Z)V

    .line 26
    return-object p1
    .line 29
.end method
