.class public Lcom/android/settings/development/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public disabled:Landroid/widget/TextView;

.field public entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field public rightArrow:Landroid/widget/ImageView;

.field public rootView:Landroid/view/View;

.field public summary:Landroid/widget/TextView;

.field public widget:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/AppViewHolder;
    .locals 1

    if-nez p1, :cond_0

    .line 44
    sget p1, Lcom/android/settings/R$layout;->preference_app:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 48
    new-instance p1, Lcom/android/settings/development/AppViewHolder;

    invoke-direct {p1}, Lcom/android/settings/development/AppViewHolder;-><init>()V

    .line 49
    iput-object p0, p1, Lcom/android/settings/development/AppViewHolder;->rootView:Landroid/view/View;

    const v0, 0x1020016    # @android:id/title

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x1020006    # @android:id/icon

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x1020010    # @android:id/summary

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/android/settings/R$id;->appendix:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v0, 0x1020018    # @android:id/widget_frame

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->widget:Landroid/view/View;

    .line 56
    sget v0, Lcom/android/settings/R$id;->arrow_right:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/settings/development/AppViewHolder;->rightArrow:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/AppViewHolder;

    return-object p0
.end method


# virtual methods
.method public updateSizeText(Ljava/lang/CharSequence;I)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    .line 78
    iget-object p0, p0, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_2
    iget-wide v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    .line 82
    iget-object p0, p0, Lcom/android/settings/development/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
