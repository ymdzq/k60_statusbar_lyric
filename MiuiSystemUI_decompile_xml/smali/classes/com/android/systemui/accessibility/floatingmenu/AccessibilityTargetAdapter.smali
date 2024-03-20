.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mIconWidthHeight:I

.field public mItemPadding:I

.field public final mTargets:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mTargets:Ljava/util/List;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mTargets:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->getItemCount()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    sub-int/2addr p0, v0

    .line 7
    if-ne p1, p0, :cond_0

    .line 8
    const/4 p0, 0x2

    .line 10
    return p0

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :cond_1
    return v0
    .line 16
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mTargets:Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 9
    check-cast p2, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 10
    invoke-virtual {p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;->mIconView:Landroid/view/View;

    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mIconWidthHeight:I

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v2

    .line 26
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    if-ne v3, v0, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    :goto_0
    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->mItemPadding:I

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->getItemCount()I

    .line 41
    move-result p0

    .line 44
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;->updateItemPadding(II)V

    .line 45
    new-instance p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$$ExternalSyntheticLambda0;

    .line 48
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)V

    .line 50
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 53
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getStateDescription()Ljava/lang/CharSequence;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getFragmentType()I

    .line 72
    move-result p0

    .line 75
    const/4 p2, 0x2

    .line 76
    const/4 v0, 0x0

    .line 77
    if-ne p0, p2, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object p0

    .line 83
    const p2, 0x7f130080    # @string/accessibility_floating_button_action_double_tap_to_toggle 'toggle'

    .line 84
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-object p0, v0

    .line 92
    :goto_1
    sget-object p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 93
    invoke-static {p1, p2, p0, v0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 95
    return-void
    .line 98
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0d0030    # @layout/accessibility_floating_menu_item 'res/layout/accessibility_floating_menu_item.xml'

    .line 10
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object p0

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$TopViewHolder;

    .line 20
    invoke-direct {p1, v1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$TopViewHolder;-><init>(ILandroid/view/View;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x2

    .line 26
    if-ne p1, p2, :cond_1

    .line 27
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$TopViewHolder;

    .line 29
    const/4 p2, 0x1

    .line 31
    invoke-direct {p1, p2, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$TopViewHolder;-><init>(ILandroid/view/View;)V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;

    .line 36
    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    :goto_0
    return-object p1
    .line 41
.end method
