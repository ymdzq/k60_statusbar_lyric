.class public Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DeviceBasicInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/DeviceBasicInfoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/device/DeviceBasicInfoPresenter;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 193
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 194
    iget-object p4, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    iget-boolean v0, p4, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    const/high16 v1, 0x42000000    # 32.0f

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-static {p4}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v1}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p4

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lcom/android/settings/R$dimen;->my_device_card_margin_edge:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    :goto_0
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 195
    iget-object p4, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    iget-boolean p4, p4, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    if-ne p2, p4, :cond_1

    .line 196
    iget-object p4, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {p4}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, v1}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 197
    iget-object p4, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {p4}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p4

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p4, v1}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 199
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p4

    if-eq p4, v0, :cond_a

    .line 200
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p2, v1, :cond_2

    goto/16 :goto_3

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    iget-boolean v1, v1, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    if-lez p2, :cond_7

    .line 204
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p3

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    const/high16 p3, 0x41200000    # 10.0f

    if-eqz v0, :cond_5

    .line 206
    rem-int/2addr p2, p4

    if-nez p2, :cond_4

    .line 207
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 209
    :cond_4
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 212
    :cond_5
    rem-int/2addr p2, p4

    if-nez p2, :cond_6

    .line 213
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 215
    :cond_6
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/android/settings/MiuiUtils;->dp2px(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_7
    if-nez v1, :cond_a

    add-int/2addr p2, v0

    .line 218
    rem-int/2addr p2, p4

    if-eqz p2, :cond_a

    .line 219
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    if-ne p2, v0, :cond_8

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    if-eqz v0, :cond_9

    .line 221
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$dimen;->my_device_card_margin_edge:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 223
    :cond_9
    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$SpaceItemDecoration;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {p0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmContext(Lcom/android/settings/device/DeviceBasicInfoPresenter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$dimen;->my_device_card_margin_edge:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_a
    :goto_3
    return-void
.end method
