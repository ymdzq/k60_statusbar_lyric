.class public final Lcom/android/settingslib/utils/CustomDialogHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBackButton:Landroid/widget/Button;

.field public final mCustomLayout:Landroid/widget/LinearLayout;

.field public mDialog:Landroid/app/Dialog;

.field public final mDialogContent:Landroid/view/View;

.field public final mDialogIcon:Landroid/widget/ImageView;

.field public final mDialogMessage:Landroid/widget/TextView;

.field public final mDialogTitle:Landroid/widget/TextView;

.field public final mNegativeButton:Landroid/widget/Button;

.field public final mPositiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x7f0d00a6    # @layout/dialog_with_icon 'res/layout/dialog_with_icon.xml'

    .line 9
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    .line 17
    const v1, 0x7f0a02cf    # @id/dialog_with_icon_icon

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Landroid/widget/ImageView;

    .line 26
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    .line 28
    const v1, 0x7f0a02d1    # @id/dialog_with_icon_title

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0a02d0    # @id/dialog_with_icon_message

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0a027b    # @id/custom_layout

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/LinearLayout;

    .line 59
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/LinearLayout;

    .line 61
    const v1, 0x7f0a01af    # @id/button_ok

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v1

    .line 69
    check-cast v1, Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 72
    const v1, 0x7f0a01aa    # @id/button_cancel

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 80
    check-cast v1, Landroid/widget/Button;

    .line 81
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 83
    const v1, 0x7f0a01a8    # @id/button_back

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 91
    check-cast v1, Landroid/widget/Button;

    .line 92
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    .line 94
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 101
    move-result-object p1

    .line 104
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 106
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 110
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 116
    move-result-object p0

    .line 119
    const/4 p1, 0x4

    .line 120
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 121
    return-void
    .line 124
.end method


# virtual methods
.method public final setButton(IILcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    const/4 v0, 0x5

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    const/4 v0, 0x6

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(I)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 25
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(I)V

    .line 27
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 30
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    .line 37
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(I)V

    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 42
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :goto_0
    return-void
    .line 48
.end method

.method public final setVisibility(IZ)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 p2, 0x8

    .line 6
    :goto_0
    if-eqz p1, :cond_6

    .line 8
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_5

    .line 11
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    const/4 v0, 0x4

    .line 16
    if-eq p1, v0, :cond_3

    .line 17
    const/4 v0, 0x5

    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    const/4 v0, 0x6

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    goto :goto_1

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 26
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 28
    goto :goto_1

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 32
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 34
    goto :goto_1

    .line 37
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    .line 38
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 40
    goto :goto_1

    .line 43
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    goto :goto_1

    .line 49
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    goto :goto_1

    .line 55
    :cond_6
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :goto_1
    return-void
    .line 61
.end method
