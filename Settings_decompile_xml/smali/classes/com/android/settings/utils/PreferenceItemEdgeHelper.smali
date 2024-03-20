.class public Lcom/android/settings/utils/PreferenceItemEdgeHelper;
.super Ljava/lang/Object;
.source "PreferenceItemEdgeHelper.java"


# direct methods
.method public static adapterItemPadding(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v0, v1}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 25
    new-instance v1, Lcom/android/settings/utils/PreferenceItemEdgeHelper$1;

    invoke-direct {v1, v0}, Lcom/android/settings/utils/PreferenceItemEdgeHelper$1;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
