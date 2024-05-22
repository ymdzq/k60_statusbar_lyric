.class public Lcom/google/android/setupdesign/SetupWizardListLayout;
.super Lcom/google/android/setupdesign/SetupWizardLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public listMixin:Lcom/google/android/setupdesign/template/ListMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupdesign/SetupWizardListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/SetupWizardListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/setupdesign/template/ListMixin;

    .line 9
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupdesign/template/ListMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 11
    iput-object v0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 14
    const-class p1, Lcom/google/android/setupdesign/template/ListMixin;

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 18
    const-class p1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardListLayout;->getListView()Landroid/widget/ListView;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    return-void
    .line 35
.end method


# virtual methods
.method public final findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const p1, 0x102000a    # @android:id/list

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->findContainer(I)Landroid/view/ViewGroup;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 10
    move-result-object p0

    .line 13
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    .line 18
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 20
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :cond_1
    :goto_0
    return-object p0
    .line 26
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    .line 4
    return-object p0
    .line 6
.end method

.method public getDividerInset()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    iget p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetStart:I

    .line 4
    return p0
    .line 6
.end method

.method public getDividerInsetEnd()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    iget p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetEnd:I

    .line 4
    return p0
    .line 6
.end method

.method public getDividerInsetStart()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    iget p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetStart:I

    .line 4
    return p0
    .line 6
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    const p2, 0x7f0d0398    # @layout/sud_list_template '@layout/sud_list_template_header'

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 5
    iget-object p1, p0, Lcom/google/android/setupdesign/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    .line 7
    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->updateDivider()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInsets(II)V

    .line 5
    return-void
    .line 8
.end method

.method public setDividerInsets(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/setupdesign/SetupWizardListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInsets(II)V

    .line 4
    return-void
    .line 7
.end method
