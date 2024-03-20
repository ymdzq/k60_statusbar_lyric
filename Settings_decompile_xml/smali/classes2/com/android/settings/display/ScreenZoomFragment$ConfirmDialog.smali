.class public Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ScreenZoomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenZoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDialog"
.end annotation


# static fields
.field private static final FRAG_TAG:Ljava/lang/String;


# instance fields
.field private mType:I

.field private mUiMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmUiMode(Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mUiMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetFRAG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->FRAG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 353
    const-class v0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->FRAG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 361
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "com.android.settings.display.ScreenZoomFragment:STATE_SCREEN_ZOOM"

    .line 363
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mUiMode:I

    const-string v0, "com.android.settings.display.ScreenZoomFragment:TYPE_SCREEN_ZOOM"

    .line 364
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mType:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 385
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    iget v0, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/settings/R$string;->page_layout_confirm_title_enlarge:I

    goto :goto_0

    .line 387
    :cond_0
    sget v0, Lcom/android/settings/R$string;->page_layout_confirm_title_narrow:I

    .line 386
    :goto_0
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 388
    iget v0, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mType:I

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/settings/R$string;->page_layout_confirm_message_enlarge:I

    goto :goto_1

    .line 389
    :cond_1
    sget v0, Lcom/android/settings/R$string;->page_layout_confirm_message_narrow:I

    .line 388
    :goto_1
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 390
    new-instance v0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog$1;-><init>(Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;)V

    const p0, 0x104000a    # @android:string/ok

    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000    # @android:string/cancel

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 370
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.android.settings.display.ScreenZoomFragment:STATE_SCREEN_ZOOM"

    .line 371
    iget v1, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mUiMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.android.settings.display.ScreenZoomFragment:TYPE_SCREEN_ZOOM"

    .line 372
    iget p0, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mType:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentUiMode(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mUiMode:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 380
    iput p1, p0, Lcom/android/settings/display/ScreenZoomFragment$ConfirmDialog;->mType:I

    return-void
.end method
