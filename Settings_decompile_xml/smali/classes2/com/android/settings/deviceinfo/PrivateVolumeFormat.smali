.class public Lcom/android/settings/deviceinfo/PrivateVolumeFormat;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "PrivateVolumeFormat.java"


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisk(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/DiskInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolume(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mConfirmListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x7bd

    return p0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/storage/StorageManager;

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p3, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 59
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    .line 61
    sget p3, Lcom/android/settings/R$layout;->storage_internal_format:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 62
    sget p2, Lcom/android/settings/R$id;->body:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 63
    sget p3, Lcom/android/settings/R$id;->confirm:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 65
    sget v0, Lcom/android/settings/R$string;->storage_internal_format_details:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    .line 66
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/CharSequence;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
