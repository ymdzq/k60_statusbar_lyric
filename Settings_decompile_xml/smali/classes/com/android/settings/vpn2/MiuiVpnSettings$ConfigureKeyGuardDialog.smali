.class Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;
.super Ljava/lang/Object;
.source "MiuiVpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/MiuiVpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureKeyGuardDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field private mDecorView:Landroid/view/View;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/vpn2/MiuiVpnSettings;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;


# direct methods
.method public static synthetic $r8$lambda$HfHp46DouN9CyIMB4GcxkWreODY(Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->lambda$show$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mOuter:Ljava/lang/ref/WeakReference;

    .line 292
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/android/settings/R$string;->vpn_set_screen_lock_title:I

    .line 294
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1010355    # @android:attr/alertDialogIcon

    .line 295
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->vpn_set_screen_lock_content:I

    .line 296
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a    # @android:string/ok

    .line 297
    invoke-virtual {p1, p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000    # @android:string/cancel

    .line 298
    invoke-virtual {p1, p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 299
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 300
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 301
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings;Lcom/android/settings/vpn2/MiuiVpnSettings;)V

    return-void
.end method

.method private synthetic lambda$show$0()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDecorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 328
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 333
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/vpn2/MiuiVpnSettings;->-$$Nest$fputmDialogShow(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V

    .line 334
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/vpn2/MiuiVpnSettings;

    if-nez p1, :cond_0

    return-void

    .line 338
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_1

    .line 339
    iput-boolean v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "minimum_quality"

    const/high16 v2, 0x10000

    .line 341
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 343
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    const-string v1, "com.android.settings.MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment"

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 348
    :cond_1
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 349
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 350
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 323
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDecorView:Landroid/view/View;

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings/vpn2/MiuiVpnSettings;

    invoke-static {v0, p1}, Lcom/android/settings/vpn2/MiuiVpnSettings;->-$$Nest$fputmDialogShow(Lcom/android/settings/vpn2/MiuiVpnSettings;Z)V

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 309
    iget-object p1, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDecorView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 310
    new-instance v0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/android/settings/vpn2/MiuiVpnSettings$ConfigureKeyGuardDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method
