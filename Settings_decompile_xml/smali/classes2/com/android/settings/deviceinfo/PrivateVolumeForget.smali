.class public Lcom/android/settings/deviceinfo/PrivateVolumeForget;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "PrivateVolumeForget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeForget$ForgetConfirmFragment;
    }
.end annotation


# static fields
.field static final TAG_FORGET_CONFIRM:Ljava/lang/String; = "forget_confirm"


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mRecord:Landroid/os/storage/VolumeRecord;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRecord(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)Landroid/os/storage/VolumeRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeForget$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeForget;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x7bc

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    .line 59
    invoke-static {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->init(Lcom/android/settings/core/InstrumentedFragment;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-object v1

    .line 74
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    if-nez p3, :cond_1

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-object v1

    .line 81
    :cond_1
    sget p3, Lcom/android/settings/R$layout;->storage_internal_forget:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    sget p2, Lcom/android/settings/R$id;->body:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 83
    sget p3, Lcom/android/settings/R$id;->confirm:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 85
    sget v0, Lcom/android/settings/R$string;->storage_internal_forget_details:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mRecord:Landroid/os/storage/VolumeRecord;

    .line 86
    invoke-virtual {v1}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/CharSequence;

    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeForget;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
