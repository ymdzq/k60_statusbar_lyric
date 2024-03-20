.class public Lcom/android/settings/applicationmode/AppControlFragment;
.super Lcom/android/settings/applicationmode/AppControlBaseFragment;
.source "AppControlFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppController()Lcom/android/settings/applicationmode/IAppController;
    .locals 3

    .line 10
    new-instance v0, Lcom/android/settings/applicationmode/AppController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v2, "application_mode"

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/applicationmode/AppController;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method
