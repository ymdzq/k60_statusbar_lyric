.class public Lcom/android/settings/bluetooth/GroupForgetDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "GroupForgetDialogFragment.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mGroupId:I

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;


# direct methods
.method public static synthetic $r8$lambda$g_hYQX234Y7kAuzW5UMaYujFFXs(Lcom/android/settings/bluetooth/GroupForgetDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-boolean v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->DBG_GROUP:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private forget()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->mGroupId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/GroupUtils;->forgetGroup(I)Z

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->forget()V

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/bluetooth/GroupForgetDialogFragment;
    .locals 2

    .line 59
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "groupid"

    .line 60
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    new-instance p0, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method getGroupTitle()Ljava/lang/String;
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "groupid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->mGroupId:I

    .line 68
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupTitle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 78
    new-instance p1, Lcom/android/settings/bluetooth/GroupForgetDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/GroupForgetDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/GroupForgetDialogFragment;)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {v1, v0}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 87
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->groupaudio_unpair_dialog_forget_confirm_button:I

    .line 88
    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 92
    sget v1, Lcom/android/settings/R$string;->groupaudio_unpair_dialog_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 93
    sget v1, Lcom/android/settings/R$string;->groupaudio_unpair_dialog_body:I

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupForgetDialogFragment;->getGroupTitle()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 93
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object p1
.end method
