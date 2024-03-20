.class public Lcom/android/settings/autouimode/AutoUIModeFragment;
.super Lcom/android/settings/autouimode/AutoUIModeBaseFragment;
.source "AutoUIModeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoUIController()Lcom/android/settings/special/AutoUIModeGuideController;
    .locals 2

    .line 10
    new-instance v0, Lcom/android/settings/special/AutoUIModeGuideController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "autoui_mode"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/special/AutoUIModeGuideController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
