.class Lcom/android/settings/applications/InstalledAppDetailsFragment$1;
.super Landroid/os/Handler;
.source "InstalledAppDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$msetIntentAndFinish(Lcom/android/settings/applications/InstalledAppDetailsFragment;ZZ)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$mprocessMoveMsg(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V

    goto :goto_0

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$fgetmState(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$fgetmAppEntry(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    iget p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment;->mUserId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    .line 213
    :cond_4
    iget-object p0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$1;->this$0:Lcom/android/settings/applications/InstalledAppDetailsFragment;

    invoke-static {p0, p1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->-$$Nest$mprocessClearMsg(Lcom/android/settings/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V

    :cond_5
    :goto_0
    return-void
.end method
