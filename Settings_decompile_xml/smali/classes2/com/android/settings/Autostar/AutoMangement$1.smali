.class Lcom/android/settings/Autostar/AutoMangement$1;
.super Ljava/lang/Object;
.source "AutoMangement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Autostar/AutoMangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Autostar/AutoMangement;


# direct methods
.method constructor <init>(Lcom/android/settings/Autostar/AutoMangement;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 58
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/miui/AppOpsUtils;->setApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    const-string v1, "activity"

    .line 60
    invoke-static {v0, v1}, Lcom/android/settings/Autostar/AutoMangement;->access$000(Lcom/android/settings/Autostar/AutoMangement;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-virtual {p1}, Lcom/android/settings/Autostar/AutoMangement;->buildList()V

    .line 63
    iget-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, p1, Lcom/android/settings/Autostar/AutoMangement;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$plurals;->auto_startup_count:I

    iget-object v3, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-static {v3}, Lcom/android/settings/Autostar/AutoMangement;->-$$Nest$fgetmApplicationsInfos(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;

    move-result-object v3

    .line 64
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-static {v4}, Lcom/android/settings/Autostar/AutoMangement;->-$$Nest$fgetmApplicationsInfos(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 63
    invoke-virtual {p1, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, p1, Lcom/android/settings/Autostar/AutoMangement;->mtext:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-static {v3}, Lcom/android/settings/Autostar/AutoMangement;->-$$Nest$fgetmApplicationsInfos(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;

    move-result-object v3

    .line 66
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-static {v4}, Lcom/android/settings/Autostar/AutoMangement;->-$$Nest$fgetmApplicationsInfos(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 65
    invoke-virtual {p1, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-static {p1}, Lcom/android/settings/Autostar/AutoMangement;->-$$Nest$fgetmApplicationsInfos(Lcom/android/settings/Autostar/AutoMangement;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    iget-object p1, p1, Lcom/android/settings/Autostar/AutoMangement;->count:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 70
    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->EmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    iget-object p1, p1, Lcom/android/settings/Autostar/AutoMangement;->count:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement$1;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement;->EmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
