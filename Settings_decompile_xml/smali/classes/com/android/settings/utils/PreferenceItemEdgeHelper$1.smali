.class Lcom/android/settings/utils/PreferenceItemEdgeHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PreferenceItemEdgeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/PreferenceItemEdgeHelper;->adapterItemPadding(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$padding:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/android/settings/utils/PreferenceItemEdgeHelper$1;->val$padding:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 29
    iget p1, p0, Lcom/android/settings/utils/PreferenceItemEdgeHelper$1;->val$padding:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    iget p0, p0, Lcom/android/settings/utils/PreferenceItemEdgeHelper$1;->val$padding:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p2, p1, p3, p0, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
