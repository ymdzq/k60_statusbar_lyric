.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private mSelectedTile:Lcom/android/settingslib/drawer/Tile;

.field private mSourceMetricCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProfileSelectDialog"

    const/4 v1, 0x3

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)Landroid/app/Dialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;",
            "Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 108
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 110
    sget v1, Lcom/android/settings/R$layout;->user_select_title:I

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DialogTitle;

    .line 112
    sget v3, Lcom/android/settingslib/R$string;->choose_profile:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/DialogTitle;->setText(I)V

    .line 114
    sget v3, Lcom/android/settings/R$layout;->user_select:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    sget v2, Lcom/android/settings/R$id;->list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView;

    .line 118
    invoke-static {p0, p1, p2}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->createUserRecycleViewAdapter(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 117
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 119
    new-instance p1, Lcom/android/internal/widget/LinearLayoutManager;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 122
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;ILandroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .line 78
    new-instance v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;

    invoke-direct {v0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "selectedTile"

    .line 80
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "sourceMetricCategory"

    .line 81
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    iput-object p3, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 84
    iput-object p4, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 85
    iput-object p5, v0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    const-string/jumbo p1, "select_profile"

    .line 86
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3

    .line 167
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 173
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    :cond_1
    sget-boolean v1, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete the user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfileSelectDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 153
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    .line 154
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(I)V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 132
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSourceMetricCategory:I

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 134
    :goto_0
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntentWithProfile(Landroid/content/Intent;IZ)Z

    const p1, 0x8000

    .line 136
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "selectedTile"

    .line 93
    const-class v1, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    const-string/jumbo v0, "sourceMetricCategory"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSourceMetricCategory:I

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mSelectedTile:Lcom/android/settingslib/drawer/Tile;

    iget-object v0, v0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-static {p1, v0, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->createDialog(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 161
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_0

    .line 162
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
