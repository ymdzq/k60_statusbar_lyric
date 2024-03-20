.class public Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaryWarningDialogFragment"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;


# direct methods
.method public static synthetic $r8$lambda$hmgqe5O6OPyVPhAMECTaMqkYrRM(Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$okfj-uaRYioI7DXlC0GySOaA6RY(Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->lambda$onCreateDialog$0(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 272
    invoke-virtual {p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings;->enable(Landroid/content/ComponentName;)V

    .line 273
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->mCallback:Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 274
    invoke-interface {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;->onResult(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->mCallback:Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 280
    invoke-interface {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;->onResult(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x22d

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "l"

    .line 252
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/utils/ManagedServiceSettings;

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Lcom/android/settings/utils/ManagedServiceSettings;->-$$Nest$fgetmConfig(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v3

    iget v3, v3, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1}, Lcom/android/settings/utils/ManagedServiceSettings;->-$$Nest$fgetmConfig(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v4

    iget v4, v4, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 263
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->allow:I

    new-instance v3, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;)V

    .line 271
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->deny:I

    new-instance v1, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;)V

    .line 277
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 284
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setCallback(Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->mCallback:Lcom/android/settings/utils/ManagedServiceSettings$OnCheckResult;

    return-void
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroidx/fragment/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    .locals 2

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "c"

    .line 236
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "l"

    .line 237
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 239
    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object p0
.end method
