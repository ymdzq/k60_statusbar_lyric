.class public Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PanelSlicesAdapter.java"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/panel/PanelSlicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceRowViewHolder"
.end annotation


# instance fields
.field final mSliceSliderLayout:Landroid/widget/LinearLayout;

.field final sliceView:Landroidx/slice/widget/SliceView;

.field final synthetic this$0:Lcom/android/settings/panel/PanelSlicesAdapter;


# direct methods
.method public static synthetic $r8$lambda$zvfv-kNL51iTMjpnWfGT5ptQjvI(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->lambda$onBind$0(Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/panel/PanelSlicesAdapter;Landroid/view/View;)V
    .locals 2

    .line 123
    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    .line 124
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    sget p1, Lcom/android/settings/R$id;->slice_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/slice/widget/SliceView;

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v0, 0x2

    .line 126
    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceView;->setMode(I)V

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p1, v1}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 129
    sget p1, Lcom/android/settings/R$id;->slice_slider_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mSliceSliderLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method private isValidSlice(Landroidx/slice/Slice;)Z
    .locals 2

    .line 164
    invoke-virtual {p1}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object p0

    const-string v0, "error"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    .line 168
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "slice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private synthetic lambda$onBind$0(Landroidx/slice/Slice;Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .locals 6

    .line 151
    iget-object p3, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p3

    .line 152
    invoke-virtual {p3}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x67a

    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    invoke-static {p0}, Lcom/android/settings/panel/PanelSlicesAdapter;->-$$Nest$fgetmMetricsCategory(Lcom/android/settings/panel/PanelSlicesAdapter;)I

    move-result v3

    .line 156
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    iget v5, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public isDividerAllowedAbove()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isDividerAllowedBelow()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBind(Landroidx/slice/Slice;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->isValidSlice(Landroidx/slice/Slice;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setShowActionDividers(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;Landroidx/slice/Slice;)V

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    return-void

    .line 138
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
