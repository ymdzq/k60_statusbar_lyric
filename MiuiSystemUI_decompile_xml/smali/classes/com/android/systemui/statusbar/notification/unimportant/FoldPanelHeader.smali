.class public Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mBack:Landroid/widget/ImageView;

.field public mSettings:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;->mBack:Landroid/widget/ImageView;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    const-class p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 6
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->setShowingUnimportant(Z)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;->mSettings:Landroid/widget/ImageView;

    .line 19
    if-ne p1, p0, :cond_1

    .line 21
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->startNotificationFoldSettingsActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_1
    :goto_0
    return-void
    .line 31
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0a28    # @id/unimportant_back

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;->mBack:Landroid/widget/ImageView;

    .line 14
    const v0, 0x7f0a0a2a    # @id/unimportant_title

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0a0a29    # @id/unimportant_icon

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;->mSettings:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;->mBack:Landroid/widget/ImageView;

    .line 36
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;->mSettings:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;->mBack:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v1

    .line 51
    const v2, 0x7f130046    # @string/accessibility_back 'Back'

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;->mSettings:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object p0

    .line 67
    const v1, 0x7f1300ef    # @string/accessibility_settings 'Settings'

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    return-void
    .line 78
.end method
